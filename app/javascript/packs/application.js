import "bootstrap";
import { loadDynamicBannerText } from '../components/banner.js';
import { homeWrapper } from '../components/homeWrapper.js';
import { initUpdateNavbarOnScroll } from '../components/navbar';
import { findCategory } from '../components/index';


initUpdateNavbarOnScroll();
loadDynamicBannerText();
homeWrapper();
findCategory();
