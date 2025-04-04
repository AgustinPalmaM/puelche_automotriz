// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import '@hotwired/turbo-rails'
import 'controllers'
import 'alpinejs'
import 'flowbite'

// document.addEventListener("turbo:load", () => {
//   Alpine.start(); // Reinicia Alpine.js después de cada carga de Turbo
// });
function changeImage(src) {
  document.getElementById('mainImage').src = src
}
