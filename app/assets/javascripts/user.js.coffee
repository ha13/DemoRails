$(document).ready ->
  $("#aaaa").validate ->
    debug: true,
    rules: {
      "user[email]": {
        required: true,
        email: true
      },
      "user[password]": {
        required: true,
        minlength: 8
      },
      "user[password_confirmation]": {
        required: true,
        equalTo: "#user_password"
      }
    },
    messages:{
      "user[email]":{
        required: "Email can't be blank",
        email:"Email is invalid"
      },
      "user[password]":{
        required: "Password can't be blank",
        minlength: "password is too short(minimum is 8 characters)"
      },
      "user[password_confirmation]":{
        required:"Password confirmation can't blank",
        equalTo: "Password confirmation doesn't match Password"
      }
    }



