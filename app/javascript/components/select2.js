import $ from 'jquery';
import 'select2';

function format(item) {
  // if (!item.id) { return state.text; }

  // var $state = $(`
  //   <span><img src="${state.element.value.toLowerCase()}" class="img-flag" />${state.text}</span>
  // `)
 let selectData = $(item.element);
 return selectData.data('url');
};

$('.select2').select2({
  formatSelection: format
})

// $('.select2').select2("data").element[0].dataset['beard-len']

// $('.select2').select2()


import 'select2/dist/css/select2.css';
