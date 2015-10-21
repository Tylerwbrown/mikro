# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $('#sweetSuccess').click ->
    sweetAlert('Congratulations!', 'Your message has been successfully sent', 'success')

$ ->
  $('.quick-text-post').click ->
    swal({
      title: 'Title',
      type: 'input',
      showCancelButton: true,
      closeOnConfirm: false,
      animation: 'slide-from-top',
      inputPlaceHolder: 'Title'
      },
      quick = (inputValue) ->
        return false if inputValue == false

        if (inputValue == "false")
          swal.showInputError("You need a title!");
          return false

        swal({
          title: 'Content',
          type: 'input',
          showCancelButton: true,
          closeOnConfirm: false,
          animation: 'slide-from-top',
          inputPlaceHolder: 'Title'
          },
          quick = (inputValue) ->
            return false if inputValue == false

            if (inputValue == "false")
              swal.showInputError("You need a title!");
              return false

            swal("Published!", "", "success")
          )
      )

$ ->
  $('.quick-link-post').click ->
    swal({
      title: 'Title',
      type: 'input',
      showCancelButton: true,
      closeOnConfirm: false,
      animation: 'slide-from-top',
      inputPlaceHolder: 'Title'
      },
      quick = (inputValue) ->
        return false if inputValue == false

        if (inputValue == "false")
          swal.showInputError("You need a title!");
          return false

        swal({
          title: 'Link',
          type: 'input',
          showCancelButton: true,
          closeOnConfirm: false,
          animation: 'slide-from-top',
          inputPlaceHolder: 'Title'
          },
          quick = (inputValue) ->
            return false if inputValue == false

            if (inputValue == "false")
              swal.showInputError("You need a title!");
              return false

            swal("Published!", "", "success")
          )
      )
