import "bootstrap";
import { loadDynamicBannerText } from '../components/banner.js';
import { homeWrapper } from '../components/homeWrapper.js';
import { initUpdateNavbarOnScroll } from '../components/navbar';

initUpdateNavbarOnScroll();
loadDynamicBannerText();
homeWrapper();


