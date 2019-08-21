import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  const banner = document.getElementById('banner-typed-text');
  if (banner) {
    new Typed('#banner-typed-text', {
      strings: ["d'une valise ?", "d'un sac de couchage ?", "d'une tente ?"],
      typeSpeed: 20,
      loop: true
    });
  }
}

export { loadDynamicBannerText };
