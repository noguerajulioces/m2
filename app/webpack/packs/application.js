// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import 'bootstrap'
import "../src/theme";

import "cleave.js";
import "filepond";
import "filepond-plugin-file-validate-size";
import "filepond-plugin-file-validate-type";
import "filepond-plugin-image-crop";
import "filepond-plugin-image-preview";
import "filepond-plugin-image-resize";
import "filepond-plugin-image-transform";
import "flatpickr";
import "flatpickr/dist/flatpickr.min.css";
import "jarallax";
import "leaflet";
import "lg-fullscreen.js";
import "lg-thumbnail.js"
import "lg-video.js";
import "lightgallery.js";
import "nouislider";
import "parallax-js";
import "popper.js";
import "prismjs";
import "simplebar";
import "smooth-scroll";
import "tiny-slider";

document.addEventListener("turbolinks:load", () => {
    $('[data-toggle="tooltip"]').tooltip()
    $('[data-toggle="popover"]').popover()
})

var jQuery = require('jquery')
window.$ = window.jQuery = jQuery
global.$ = global.jQuery = jQuery

import "../stylesheets/application.scss";

const images = require.context('../stylesheets/img', true)
const imagePath = (name) => images(name, true)

const fonts = require.context('../stylesheets/fonts', true)
const fontPath = (name) => fonts(name, true)

Rails.start()
Turbolinks.start()
ActiveStorage.start()

import "controllers"

window.dispatchMapsEvent = function (...args) {
  const event = document.createEvent("Events")
  event.initEvent("google-maps-callback", true, true)
  event.args = args
  window.dispatchEvent(event)
}