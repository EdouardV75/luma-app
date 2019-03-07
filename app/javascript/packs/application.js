import "bootstrap";
import { loadDynamicBannerText } from '../components/banner.js';
import { homeWrapper } from '../components/homeWrapper.js';
import { findCategory } from '../components/index';
import { category_choice } from '../components/category_choice.js'
import { selectTab } from '../components/tab.js';
import { initUpdateNavbarOnScroll } from '../components/navbar.js';



initUpdateNavbarOnScroll();
loadDynamicBannerText();
homeWrapper();
findCategory();
selectTab();


