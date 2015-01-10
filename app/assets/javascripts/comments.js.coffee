# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->
  $("#new_comment").validate
    # debug: true
    rules:
      "comment[body]":
        required: true

    messages:
      "comment[body]":
        required: "Body can't be blank"









