// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "popper"
import "bootstrap"

console.log('Hello World')

let modalBtn = document.getElementById('modal_btn')
let window = document.getElementById('modal_content')
let close = document.getElementById('close')

modalBtn.addEventListener('click', () => {
    window.classList.toggle('d-none')
});

close.addEventListener('click', () => {
    window.classList.toggle('d-none')
})
