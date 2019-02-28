import "bootstrap";
import { loadDynamicBannerText } from '../components/banner.js';
import { homeWrapper } from '../components/homeWrapper.js';
import { initUpdateNavbarOnScroll } from '../components/navbar';
import { selectTab } from '../components/tab.js'

initUpdateNavbarOnScroll();
loadDynamicBannerText();
homeWrapper();
selectTab();

