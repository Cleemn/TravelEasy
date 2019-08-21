import "bootstrap";
// import flatpickr from '../plugins/flatpickr';
import { loadDynamicBannerText } from '../components/banner';
loadDynamicBannerText();
import { flatPickr } from '../plugins/flatpickr';
flatPickr();

import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';

initMapbox();
