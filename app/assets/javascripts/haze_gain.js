$(document).on('turbolinks:load',function(){

$('#job_haze_abraded_1').change(function() {
    haze_gain_1();

});

$('#job_haze_abraded_2').change(function() {
    haze_gain_2();
});

$('#job_haze_abraded_3').change(function() {
    haze_gain_3();
});

$('#job_haze_abraded_4').change(function() {
    haze_gain_4();
});

$('#job_haze_abraded_5').change(function() {
    haze_gain_5();
});

$('#job_haze_abraded_6').change(function() {
    haze_gain_6();
});

$('.test_toggle').click( function(){
    $(this).find('span').toggleClass('glyphicon-minus').toggleClass('glyphicon-plus');
});

setTimeout(function() { $(".alert").fadeOut(); }, 5000)

});

function haze_gain_1()
{
var haze_gain_1 = 0;

var haze_initial_1 = $("#job_haze_initial_1").val();
var haze_abraded_1 = $("#job_haze_abraded_1").val();
haze_gain_1 = (haze_abraded_1 - haze_initial_1).toFixed(2);

$('#job_haze_gain_1').val(haze_gain_1);
}

function haze_gain_2()
{
var haze_gain_2 = 0;

var haze_initial_2 = $("#job_haze_initial_2").val();
var haze_abraded_2 = $("#job_haze_abraded_2").val();
haze_gain_2 = (haze_abraded_2 - haze_initial_2).toFixed(2);

$('#job_haze_gain_2').val(haze_gain_2);
}

function haze_gain_3()
{
var haze_gain_3 = 0;

var haze_initial_3 = $("#job_haze_initial_3").val();
var haze_abraded_3 = $("#job_haze_abraded_3").val();
haze_gain_3 = (haze_abraded_3 - haze_initial_3).toFixed(2);

$('#job_haze_gain_3').val(haze_gain_3);
}

function haze_gain_4()
{
var haze_gain_4 = 0;

var haze_initial_4 = $("#job_haze_initial_4").val();
var haze_abraded_4 = $("#job_haze_abraded_4").val();
haze_gain_4 = (haze_abraded_4 - haze_initial_4).toFixed(2);

$('#job_haze_gain_4').val(haze_gain_4);
}

function haze_gain_5()
{
var haze_gain_5 = 0;

var haze_initial_5 = $("#job_haze_initial_5").val();
var haze_abraded_5 = $("#job_haze_abraded_5").val();
haze_gain_5 = (haze_abraded_5 - haze_initial_5).toFixed(2);

$('#job_haze_gain_5').val(haze_gain_5);
}

function haze_gain_6()
{
var haze_gain_6 = 0;

var haze_initial_6 = $("#job_haze_initial_6").val();
var haze_abraded_6 = $("#job_haze_abraded_6").val();
haze_gain_6 = (haze_abraded_6 - haze_initial_6).toFixed(2);

$('#job_haze_gain_6').val(haze_gain_6);
}
