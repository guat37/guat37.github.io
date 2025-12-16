document.getElementById("y").textContent = new Date().getFullYear();

const els = document.querySelectorAll(".reveal");
const io = new IntersectionObserver((entries) => {
  for (const e of entries) {
    if (e.isIntersecting) e.target.classList.add("on");
  }
}, { threshold: 0.12 });

els.forEach(el => io.observe(el));
