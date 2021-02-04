import flatpickr from "flatpickr";


const initflatpickr = () => {
  flatpickr(".datepicker", {
    enableTime: true,
    dateFormat: "Y-m-d H:i",
  });
}

export { initflatpickr };