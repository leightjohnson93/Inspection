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

for (let i = 1; i <= 12; i++) {
$(`#job_circular_initial_${i}`).change(function() {
    initial_dol();
});
$(`#job_annular_initial_${i}`).change(function() {
    initial_dol();
});
}

for (let i = 1; i <= 8; i++) {
$(`#job_circular_sample_${i}`).change(function() {
    final_dol();
});
$(`#job_annular_sample_${i}`).change(function() {
    final_dol();
});
}

$("#job_lot_complete_start").on("input", function() {
  $("#job_lot_complete_end").val(this.value);
});

$("#job_lot_complete_end").on("input", function() {
  $("#job_lot_complete_start").val(this.value);
});


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
 /* Equations for Diffusion */
Factor = 644.144;

  const reading_correction = (measurement, reading=[0.0004, 0.003, 0.03, 0.3, 3.0]) => {
  if (measurement < 0.2) {
    return reading[0]
  } else if (measurement < 2) {
    return reading[1]
  } else if (measurement < 20) {
    return reading[2]
  } else if (measurement < 200) {
    return reading[3]
  } else
    return reading[4]
};


const calculate_RIF = (annular, circular, reading) => {
  return Factor*(annular - reading_correction(annular, reading))/(circular - reading_correction(circular, reading));
}

const initial_diffusion = (annular_machine, circular_machine, annular_sample, circular_sample, reading) => {
  return calculate_RIF(annular_sample, circular_sample, reading) - calculate_RIF(annular_machine, circular_machine, reading);
}

const final_diffusion = (annular_machine, circular_machine, annular_sample, circular_sample, annular_glass, circular_glass, annular_pmma, circular_pmma, reading) => {
  sample = initial_diffusion(annular_machine, circular_machine, annular_sample, circular_sample, reading);
  glass = initial_diffusion(annular_machine, circular_machine, annular_glass, circular_glass, reading);
  pmma = initial_diffusion(annular_machine, circular_machine, annular_pmma, circular_pmma, reading);
  return sample * (((glass-sample)*(23/pmma) + (sample - pmma) * (3/glass))/(glass - pmma));
}

/*Function to update outputs */
const final_dol = () => {

  var annular_machine_final = $("#job_annular_machine_final").val();
  var circular_machine_final = $("#job_circular_machine_final").val();

  final_reading = [];
  for (let i = 0; i < 5; i++) {
    final_reading[i] = $(`#job_reading_final_${i+1}`).val();
  }

  var finalDOL = [];
  var annular_final = [];
  var circular_final = [];
  var annular_glass = [];
  var circular_glass = [];
  var annular_pmma = [];
  var circular_pmma = [];

  for (let i = 0; i < 8; i++) {
    annular_final[i] = $(`#job_annular_sample_${i+1}`).val();
    circular_final[i] = $(`#job_circular_sample_${i+1}`).val();

    if ($(`#job_annular_glass_${i+1}`).length > 0) { annular_glass[i] = $(`#job_annular_glass_${i+1}`).val(); } else {annular_glass[i] = $(`#job_annular_glass_${i+2}`).val();}
    if ($(`#job_circular_glass_${i+1}`).length > 0) { circular_glass[i] = $(`#job_circular_glass_${i+1}`).val(); } else {circular_glass[i] = $(`#job_circular_glass_${i+2}`).val();}

    if ($(`#job_annular_pmma_${i+1}`).length > 0) { annular_pmma[i] = $(`#job_annular_pmma_${i+1}`).val(); } else {annular_pmma[i] = $(`#job_annular_pmma_${i}`).val();}
    if ($(`#job_circular_pmma_${i+1}`).length > 0) { circular_pmma[i] = $(`#job_circular_pmma_${i+1}`).val(); } else {circular_pmma[i] = $(`#job_circular_pmma_${i}`).val();}

    finalDOL[i] = final_diffusion(annular_machine_final, circular_machine_final, annular_final[i], circular_final[i], annular_glass[i], circular_glass[i], annular_pmma[i], circular_pmma[i], final_reading).toFixed(2);

    $(`#job_en_abrasion_${i+1}`).val(finalDOL[i]);
  }
}

const initial_dol = () =>
{
var dol_1 = 0;
var dol_2 = 0;
var dol_3 = 0;
var dol_4 = 0;
var dol_5 = 0;
var dol_6 = 0;
var dol_7 = 0;
var dol_8 = 0;
var dol_9 = 0;
var dol_10 = 0;
var dol_11 = 0;
var dol_12 = 0;

var annular_machine_initial = $("#job_annular_machine_initial").val();
var circular_machine_initial = $("#job_circular_machine_initial").val();

initial_reading = [];
for (let i = 0; i < 5; i++) {
  initial_reading[i] = $(`#job_reading_initial_${i+1}`).val();
}

var annular_initial_1 = $("#job_annular_initial_1").val();
var annular_initial_2 = $("#job_annular_initial_2").val();
var annular_initial_3 = $("#job_annular_initial_3").val();
var annular_initial_4 = $("#job_annular_initial_4").val();
var annular_initial_5 = $("#job_annular_initial_5").val();
var annular_initial_6 = $("#job_annular_initial_6").val();
var annular_initial_7 = $("#job_annular_initial_7").val();
var annular_initial_8 = $("#job_annular_initial_8").val();
var annular_initial_9 = $("#job_annular_initial_9").val();
var annular_initial_10 = $("#job_annular_initial_10").val();
var annular_initial_11 = $("#job_annular_initial_11").val();
var annular_initial_12 = $("#job_annular_initial_12").val();

var circular_initial_1 = $("#job_circular_initial_1").val();
var circular_initial_2 = $("#job_circular_initial_2").val();
var circular_initial_3 = $("#job_circular_initial_3").val();
var circular_initial_4 = $("#job_circular_initial_4").val();
var circular_initial_5 = $("#job_circular_initial_5").val();
var circular_initial_6 = $("#job_circular_initial_6").val();
var circular_initial_7 = $("#job_circular_initial_7").val();
var circular_initial_8 = $("#job_circular_initial_8").val();
var circular_initial_9 = $("#job_circular_initial_9").val();
var circular_initial_10 = $("#job_circular_initial_10").val();
var circular_initial_11 = $("#job_circular_initial_11").val();
var circular_initial_12 = $("#job_circular_initial_12").val();

dol_1 = initial_diffusion(annular_machine_initial, circular_machine_initial, annular_initial_1, circular_initial_1, initial_reading).toFixed(2);
dol_2 = initial_diffusion(annular_machine_initial, circular_machine_initial, annular_initial_2, circular_initial_2, initial_reading).toFixed(2);
dol_3 = initial_diffusion(annular_machine_initial, circular_machine_initial, annular_initial_3, circular_initial_3, initial_reading).toFixed(2);
dol_4 = initial_diffusion(annular_machine_initial, circular_machine_initial, annular_initial_4, circular_initial_4, initial_reading).toFixed(2);
dol_5 = initial_diffusion(annular_machine_initial, circular_machine_initial, annular_initial_5, circular_initial_5, initial_reading).toFixed(2);
dol_6 = initial_diffusion(annular_machine_initial, circular_machine_initial, annular_initial_6, circular_initial_6, initial_reading).toFixed(2);
dol_7 = initial_diffusion(annular_machine_initial, circular_machine_initial, annular_initial_7, circular_initial_7, initial_reading).toFixed(2);
dol_8 = initial_diffusion(annular_machine_initial, circular_machine_initial, annular_initial_8, circular_initial_8, initial_reading).toFixed(2);
dol_9 = initial_diffusion(annular_machine_initial, circular_machine_initial, annular_initial_9, circular_initial_9, initial_reading).toFixed(2);
dol_10 = initial_diffusion(annular_machine_initial, circular_machine_initial, annular_initial_10, circular_initial_10, initial_reading).toFixed(2);
dol_11 = initial_diffusion(annular_machine_initial, circular_machine_initial, annular_initial_11, circular_initial_11, initial_reading).toFixed(2);
dol_12 = initial_diffusion(annular_machine_initial, circular_machine_initial, annular_initial_12, circular_initial_12, initial_reading).toFixed(2);


$('#job_dol_1').val(dol_1);
$('#job_dol_2').val(dol_2);
$('#job_dol_3').val(dol_3);
$('#job_dol_4').val(dol_4);
$('#job_dol_5').val(dol_5);
$('#job_dol_6').val(dol_6);
$('#job_dol_7').val(dol_7);
$('#job_dol_8').val(dol_8);
$('#job_dol_9').val(dol_9);
$('#job_dol_10').val(dol_10);
$('#job_dol_12').val(dol_12);
}
