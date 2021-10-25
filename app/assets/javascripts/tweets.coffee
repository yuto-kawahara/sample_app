# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on 'turbolinks:load', ->
  $('.article-list').infiniteScroll
    path: "nav.pagination a[rel=next]"
    append: ".item"
    history: false
    prefill: true
    status: '.page-load-status'