# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$ ->
  $("#up_to_field").hide()
  $("#up_to_field").show() if $("#entry_list_id_3").is(":checked")
  $("#entry_list_id_3").click ->
    $("#up_to_field").show()
  $("#entry_list_id_1").click ->
    $("#up_to_field").hide()
  $("#entry_list_id_2").click ->
    $("#up_to_field").hide()

