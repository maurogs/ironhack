var r = $("#result");

// Replace myContent content with the result of the request google.html
$("#myContent").load('/google.html');

// Replace the result div when click on it with the response of submiting the name to the /hello/luis
$("#result").click(function () {
    $.get('/hello/' + $("#name").val(), replaceName);
});

// Replace the result div when click on it when the user changes the amount or the currency
// path: /exchange/?amount=100&currency=euro with the parameters amount and currency
var exchangeFunction1 = function () {
    var options = {
        "amount": $("#amount").val(),
        "currency": $("#currency").val()
    };
    $.get('/exchange/', options, replaceJSON);
};

var exchangeFunction2 = function () {
    var amount = $("#amount").val();
    var currency = $("#currency").val();
    $.get('/exchange/?amount=' + amount + '&currency=' + currency, replaceJSON);
};

$("#amount").keyup(exchangeFunction1);
$("#currency").change(exchangeFunction2);

// Save (POST) the personal form to the /add route when click on the result div
// Look the the AJAX Response and the status code
var sendMyForm = function () {
    var options = $("#personal").serialize();
    $.post("/add", options, replaceName);
};
$("#result").click(sendMyForm);

// Make a get request to /sleep when click on the result div
// Show loading while the response does not arrive
// Show the result if everything is ok
// Show 'Error' if there is some problem and change the background-color to red
// When the request ends adds the bordered class to the response
var addBorderedClass = function () {
    r.addClass('bordered');
};

var showError = function () {
    r.text('Error');
    r.css('background-color', 'red');
};

var showDoingTheCall = function () {
    r.text('Loading...');
    r.removeClass('bordered');
    r.css('background-color', 'lightsteelblue');
};

// CON PROMESAS
//r.click(function () {
//    showDoingTheCall();
//    var call = $.get("/sleep", replaceName);
//    call.fail(showError);
//    call.always(addBorderedClass);

//    $.get("/sleep")
//            .done(replaceName)
//            .fail(showError)
//            .always(addBorderedClass);
//});

r.click(function () {
    showDoingTheCall();
    $.ajax("/sleep", {
        success: replaceName,
        error: showError,
        complete: addBorderedClass
    });
});


var replaceName = function (data) {
    r.html(data);
};

var replaceJSON = function (data) {
    var r = "";
    $.each(data, function (k, v) {
        r += "<p>" + k + ": " + v + "</p>";
    });
    replaceName(r);
};