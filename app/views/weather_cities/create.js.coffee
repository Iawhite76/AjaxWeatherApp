// console.log("<%= j raw @weather_city.to_json%>")
// $('body').append("<%= @weather_city.to_json%>")
$('form').remove();
$('body').append("<%= j render 'show' %>")

