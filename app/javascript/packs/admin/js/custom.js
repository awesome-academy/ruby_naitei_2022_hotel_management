$(document).on('turbolinks:load', function () {
  $('form').on('keypress', (e) => {
    if (e.keyCode == 13) {
      return false;
    }
  });
  $(document).ready(function () {
    $('.tags-input').tagsInput();
  });
});
