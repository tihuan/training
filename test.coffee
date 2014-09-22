# JS
jQuery(function($)) {
  function changeTab(e) {
    e.preventDefault();
    $("#tabs li a.active").removeClass("active");
    $(this).addClass("active");
  }

  $("#tabs ul li a").click(changeTab);
};

# Coffee
$ ->
  changeTab = (e) ->
    e.preventDefault()
    $("#tabs li a.active").removeClass "active"
    $(this).addClass "active"

  $("#tabs ul li a").click changeTab

# JS
function showFlights(activeDiv) {
  $("#tabs div").hide();

  if (fetchingFlights) {
    fetchingFlights.abort();
  }

  fetchingFlights = $.ajax('/flights', {
    data: { date: activeDiv },
    cache: false,
    error: function(result) {
      if (result.statusText != "abort") {
        $('#tabs #error').show();
      }
    }
  });
}

# Coffee
showFlights = (activeDiv) ->
  $('#tabs div').hide()

  # fetchingFlights?.abort()
  if fetchingFlights
    fetchingFlights.abort()

  fetchingFlights = $.ajax '/flights'
    data:
      date: activeDiv
    cache: false
    error: (result) ->
      $('#tabs #error').show() if result.statusText isnt "abort"
