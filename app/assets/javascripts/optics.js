$(document).on('turbolinks:load',function(){

$('#job_horizontal_right_1').change(function() {
    horizontal_imbalance_1();
});
});

function horizontal_imbalance_1()
{
var horizontal_imbalance_1 = 0;

var horizontal_left_1 = $("#job_horizontal_left_1").val();
var horizontal_right_1 = $("#job_horizontal_right_1").val();
horizontal_imbalance_1 = (horizontal_left_1 - horizontal_right_1).toFixed(3);

$('#job_horizontal_imbalance_1').val(horizontal_imbalance_1);
}

$(document).on('turbolinks:load',function(){

$('#job_horizontal_right_2').change(function() {
    horizontal_imbalance_2();
});
});

function horizontal_imbalance_2()
{
var horizontal_imbalance_2 = 0;

var horizontal_left_2 = $("#job_horizontal_left_2").val();
var horizontal_right_2 = $("#job_horizontal_right_2").val();
horizontal_imbalance_2 = (horizontal_left_2 - horizontal_right_2).toFixed(3);

$('#job_horizontal_imbalance_2').val(horizontal_imbalance_2);
}

$(document).on('turbolinks:load',function(){

$('#job_horizontal_right_3').change(function() {
    horizontal_imbalance_3();
});
});

function horizontal_imbalance_3()
{
var horizontal_imbalance_3 = 0;

var horizontal_left_3 = $("#job_horizontal_left_3").val();
var horizontal_right_3 = $("#job_horizontal_right_3").val();
horizontal_imbalance_3 = (horizontal_left_3 - horizontal_right_3).toFixed(3);

$('#job_horizontal_imbalance_3').val(horizontal_imbalance_3);
}

$(document).on('turbolinks:load',function(){

$('#job_horizontal_right_4').change(function() {
    horizontal_imbalance_4();
});
});

function horizontal_imbalance_4()
{
var horizontal_imbalance_4 = 0;

var horizontal_left_4 = $("#job_horizontal_left_4").val();
var horizontal_right_4 = $("#job_horizontal_right_4").val();
horizontal_imbalance_4 = (horizontal_left_4 - horizontal_right_4).toFixed(3);

$('#job_horizontal_imbalance_4').val(horizontal_imbalance_4);
}

$(document).on('turbolinks:load',function(){

$('#job_horizontal_right_5').change(function() {
    horizontal_imbalance_5();
});
});

function horizontal_imbalance_5()
{
var horizontal_imbalance_5 = 0;

var horizontal_left_5 = $("#job_horizontal_left_5").val();
var horizontal_right_5 = $("#job_horizontal_right_5").val();
horizontal_imbalance_5 = (horizontal_left_5 - horizontal_right_5).toFixed(3);

$('#job_horizontal_imbalance_5').val(horizontal_imbalance_5);
}

$(document).on('turbolinks:load',function(){

$('#job_horizontal_right_6').change(function() {
    horizontal_imbalance_6();
});
});

function horizontal_imbalance_6()
{
var horizontal_imbalance_6 = 0;

var horizontal_left_6 = $("#job_horizontal_left_6").val();
var horizontal_right_6 = $("#job_horizontal_right_6").val();
horizontal_imbalance_6 = (horizontal_left_6 - horizontal_right_6).toFixed(3);

$('#job_horizontal_imbalance_6').val(horizontal_imbalance_6);
}

$(document).on('turbolinks:load',function(){

$('#job_vertical_right_1').change(function() {
    vertical_imbalance_1();
});
});

function vertical_imbalance_1()
{
var vertical_imbalance_1 = 0;

var vertical_left_1 = $("#job_vertical_left_1").val();
var vertical_right_1 = $("#job_vertical_right_1").val();
vertical_imbalance_1 = Math.abs((vertical_left_1 - vertical_right_1).toFixed(3));

$('#job_vertical_imbalance_1').val(vertical_imbalance_1);
}

$(document).on('turbolinks:load',function(){

$('#job_vertical_right_2').change(function() {
    vertical_imbalance_2();
});
});

function vertical_imbalance_2()
{
var vertical_imbalance_2 = 0;

var vertical_left_2 = $("#job_vertical_left_2").val();
var vertical_right_2 = $("#job_vertical_right_2").val();
vertical_imbalance_2 = Math.abs((vertical_left_2 - vertical_right_2).toFixed(3));

$('#job_vertical_imbalance_2').val(vertical_imbalance_2);
}

$(document).on('turbolinks:load',function(){

$('#job_vertical_right_3').change(function() {
    vertical_imbalance_3();
});
});

function vertical_imbalance_3()
{
var vertical_imbalance_3 = 0;

var vertical_left_3 = $("#job_vertical_left_3").val();
var vertical_right_3 = $("#job_vertical_right_3").val();
vertical_imbalance_3 = Math.abs((vertical_left_3 - vertical_right_3).toFixed(3));

$('#job_vertical_imbalance_3').val(vertical_imbalance_3);
}

$(document).on('turbolinks:load',function(){

$('#job_vertical_right_4').change(function() {
    vertical_imbalance_4();
});
});

function vertical_imbalance_4()
{
var vertical_imbalance_4 = 0;

var vertical_left_4 = $("#job_vertical_left_4").val();
var vertical_right_4 = $("#job_vertical_right_4").val();
vertical_imbalance_4 = Math.abs((vertical_left_4 - vertical_right_4).toFixed(3));

$('#job_vertical_imbalance_4').val(vertical_imbalance_4);
}

$(document).on('turbolinks:load',function(){

$('#job_vertical_right_5').change(function() {
    vertical_imbalance_5();
});
});

function vertical_imbalance_5()
{
var vertical_imbalance_5 = 0;

var vertical_left_5 = $("#job_vertical_left_5").val();
var vertical_right_5 = $("#job_vertical_right_5").val();
vertical_imbalance_5 = Math.abs((vertical_left_5 - vertical_right_5).toFixed(3));

$('#job_vertical_imbalance_5').val(vertical_imbalance_5);
}

$(document).on('turbolinks:load',function(){

$('#job_vertical_right_6').change(function() {
    vertical_imbalance_6();
});
});

function vertical_imbalance_6()
{
var vertical_imbalance_6 = 0;

var vertical_left_6 = $("#job_vertical_left_6").val();
var vertical_right_6 = $("#job_vertical_right_6").val();
vertical_imbalance_6 = Math.abs((vertical_left_6 - vertical_right_6).toFixed(3));

$('#job_vertical_imbalance_6').val(vertical_imbalance_6);
}
