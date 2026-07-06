#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
PORT="${PORT:-4010}"
HOST="127.0.0.1"
PDF_PATH="${ROOT_DIR}/cv.pdf"
SERVER_LOG="${TMPDIR:-/tmp}/guat37-cv-pdf-server.log"

cd "${ROOT_DIR}"

if command -v chromium >/dev/null 2>&1; then
  CHROME_BIN="$(command -v chromium)"
elif command -v chromium-browser >/dev/null 2>&1; then
  CHROME_BIN="$(command -v chromium-browser)"
elif command -v google-chrome >/dev/null 2>&1; then
  CHROME_BIN="$(command -v google-chrome)"
else
  echo "Erreur: Chromium ou Google Chrome est requis pour générer le PDF." >&2
  exit 1
fi

bundle exec jekyll build

ruby -run -e httpd _site -b "${HOST}" -p "${PORT}" >"${SERVER_LOG}" 2>&1 &
SERVER_PID="$!"

cleanup() {
  kill "${SERVER_PID}" >/dev/null 2>&1 || true
}
trap cleanup EXIT

ruby -rnet/http -e "
  uri = URI('http://${HOST}:${PORT}/print/')
  80.times do
    begin
      response = Net::HTTP.get_response(uri)
      exit 0 if response.is_a?(Net::HTTPSuccess)
    rescue StandardError
    end
    sleep 0.1
  end
  warn 'Erreur: serveur local indisponible pour la génération PDF.'
  exit 1
"

"${CHROME_BIN}" \
  --headless=new \
  --no-sandbox \
  --disable-gpu \
  --disable-dev-shm-usage \
  --run-all-compositor-stages-before-draw \
  --virtual-time-budget=1000 \
  --print-to-pdf="${PDF_PATH}" \
  --print-to-pdf-no-header \
  "http://${HOST}:${PORT}/print/"

echo "PDF généré: ${PDF_PATH}"
