import flatpickr from "flatpickr";
import "flatpickr/dist/flatpickr.min.css"

const flatPickr = () => {
  new flatpickr('.date', {});
}

export { flatPickr };
