import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('wine_experience_address');
  if (addressInput) {
    places({ container: addressInput });
  }
};

export { initAutocomplete };