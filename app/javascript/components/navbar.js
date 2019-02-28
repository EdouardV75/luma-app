const initUpdateNavbarOnScroll = () => {
  const input = document.getElementById('homepage');
  if (input) {
  const navbar = document.querySelector('.navbar-wagon');
  const whiteLogo = document.getElementById('white_logo');
  const blueLogo = document.getElementById('blue_logo')
  const searchbar = document.getElementById('searchbarhome')
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight) {
        navbar.classList.add('navbar-wagon-white');
        whiteLogo.classList.add('hidden');
        blueLogo.classList.remove('hidden');
      } else {
        navbar.classList.remove('navbar-wagon-white');
        whiteLogo.classList.remove('hidden')
        blueLogo.classList.add('hidden')
        
      }
    });
  }
 }
};

export { initUpdateNavbarOnScroll };