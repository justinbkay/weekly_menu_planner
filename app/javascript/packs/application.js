/* eslint no-console:0 */
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//
// To reference this file, add <%= javascript_pack_tag 'application' %> to the appropriate
// layout file, like app/views/layouts/application.html.erb
import Rails from 'rails-ujs';

require.context('../stylesheets/', true, /^\.\/[^_].*\.(css|scss|sass)$/i)
require.context('../images/', true, /\.(gif|jpg|png|svg)$/i)

document.addEventListener('DOMContentLoaded', function() {
  let notice = document.getElementsByClassName('notice-wrapper')[0];
  let alert = document.getElementsByClassName('alert-wrapper')[0];
  setTimeout(function () {
    if (notice) {
      var fadeEffect = setInterval(function () {
        if (!notice.style.opacity) {
            notice.style.opacity = 1;
        }
        if (notice.style.opacity > 0) {
            notice.style.opacity -= 0.1;
        } else {
            clearInterval(fadeEffect);
            notice.parentNode.removeChild(notice);
        }
      }, 30);
    }
    if (alert) {
      var fadeEffect = setInterval(function () {
        if (!alert.style.opacity) {
            alert.style.opacity = 1;
        }
        if (alert.style.opacity > 0) {
            alert.style.opacity -= 0.1;
        } else {
            clearInterval(fadeEffect);
            alert.parentNode.removeChild(alert);
        }
      }, 30);
    }
  }, 5000)
}, false);

Rails.start();