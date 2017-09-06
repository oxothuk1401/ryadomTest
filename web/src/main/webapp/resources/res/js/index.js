"use strict"

$(document).ready(function(){
    $("#registration").click(function(){
        $("#registrModal").modal();
    });

    $("#autorization").click(function(){
        $("#autorizationModal").modal();
    });


});

var password = document.getElementById("userPsw"), 
	confirm_password = document.getElementById("confirmUserPsw");

function validatePassword(){
	if(password.value != confirm_password.value) {
		confirm_password.setCustomValidity("Пароли не совпадают!");
	} else {
		confirm_password.setCustomValidity('');
	}
}

password.onchange = validatePassword;
confirm_password.onkeyup = validatePassword;