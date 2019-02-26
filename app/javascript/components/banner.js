import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  if (document.getElementById('banner-typed-text'))
  {new Typed('#banner-typed-text', {
      strings: ["Luma,  la plateforme des avantages des employées de startup."],
      typeSpeed: 50,
      loop: false
    });}
};

export { loadDynamicBannerText };