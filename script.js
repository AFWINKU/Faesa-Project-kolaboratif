// SCRIPT DARI TYPEJS
document.addEventListener("DOMContentLoaded", function () {
    let typing = new Typed("#type", {
        strings: [
            "Presentation Designer",
            "Graphic Designer",
        ],
        typeSpeed: 65,
        backSpeed: 65,
        loop: true,
        startDelay: 1000,
        autoInsertCss: true,
    });
});




//SCRIPT UNTUK MENGUBAH AWARD MENJADI DINAMIS
function animateCounter(element, start, end, duration) {
    const stepTime = Math.abs(Math.floor(duration / (end - start))); 
    let current = start;
    const increment = end > start ? 1 : -1;

    const timer = setInterval(() => {
        current += increment;
        element.innerHTML = `${current}+`;

        if (current === end) {
            clearInterval(timer);
        }
    }, stepTime);
}

document.addEventListener('DOMContentLoaded', () => {
    const counterElement = document.getElementById('a1');
    animateCounter(counterElement, 0, 7, 3000); 
});
document.addEventListener('DOMContentLoaded', () => {
    const counterElement = document.getElementById('a2');
    animateCounter(counterElement, 0, 150, 3000);
});
document.addEventListener('DOMContentLoaded', () => {
    const counterElement = document.getElementById('a3');
    animateCounter(counterElement, 0, 89, 3000);
});

