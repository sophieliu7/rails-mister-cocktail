function initUpdateNavbarOnScroll() {
  console.log("je suis la");

  const navbar = document.querySelector('.navbar-wagon');
  console.log(navbar);

  const banner = document.querySelector('.banner');
  console.log(navbar && banner);

  if (navbar && banner) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight) {
        navbar.classList.add('navbar-wagon-white');
      } else {
        navbar.classList.remove('navbar-wagon-white');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };
