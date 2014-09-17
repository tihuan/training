// JS
jQuery(function($)) {
  function changeTab(e) {
    e.preventDefault();
    $("#tabs li a.active").removeClass("active");
    $(this).addClass("active");
  }

  $("#tabs ul li a").click(changeTab);
};

// Coffee
$ ->
  changeTab = (e) ->
    e.preventDefault()
    $("#tabs li a.active").removeClass "active"
    $(this).addClass "active"

  $("#tabs ul li a").click changeTab

