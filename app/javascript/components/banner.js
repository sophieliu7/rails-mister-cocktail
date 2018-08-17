import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Change your life", "Learn to cocktail"],
    typeSpeed: 40,
    loop: true
  });
}

export { loadDynamicBannerText };
