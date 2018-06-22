$(document).ready(function(){

$('.job_haze_gain_1').change(function() {
    haze_gain();
});
});

function haze_gain()
{
var haze_gain_1 = 0;

var haze_initial_1 = $(".job_haze_initial_1").val();
var haze_abraded_1 = $(".job_haze_abraded_1").val();
haze_gain_1 = haze_abraded_1 - haze_initial_1

$('.job_haze_gain_1').text(haze_gain_1);
}
