import "bootstrap";
import { loadDynamicBannerText } from '../components/banner.js';
import { homeWrapper } from '../components/homeWrapper.js';
import { initUpdateNavbarOnScroll } from '../components/navbar';
import { category_choice } from '../components/category_choice.js';

initUpdateNavbarOnScroll();
loadDynamicBannerText();
homeWrapper();


