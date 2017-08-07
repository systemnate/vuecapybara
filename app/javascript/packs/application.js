import Vue from 'vue/dist/vue.esm';
import Employees from './Employees.vue';
import TurbolinksAdapter from 'vue-turbolinks';

document.addEventListener('turbolinks:load', () => {
  var element = document.querySelector('#employees');

  if (element !== null) {
    var employees = new Vue({
      components: {
        'employees': Employees
      },
      el: element
    });
  }
});

