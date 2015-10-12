  function initCharts() {
  var overall_data = gon.watch('overall', pieData);
  function pieData (overall_data){
    console.log(overall_data)
    var doughnutChart01Data = [
      {
        value: overall_data.overall_90[0],
        color: "#30A370",
        highlight: "#63D6A3",
        label: "Employed"
      },
      {

        value: overall_data.overall_90[1],
        color: "#FCA311",
        highlight: "#FAC56E",
        label: "Looking"
      }
    ];

    var pieChart01Data = [
      {
        value: overall_data.overall[0],
        color: "#30A370",
        highlight: "#63D6A3",
        label: "Employed"
      },
      {
        value: overall_data.overall[1],
        color: "#FCA311",
        highlight: "#FAC56E",
        label: "Looking"
      }
    ];


    var pieChart01ToRender = $("#pieChart01").get(0).getContext("2d");
    var pieChart01 = new Chart(pieChart01ToRender).Pie(pieChart01Data);

    // ...And for a doughnut chart
    var doughnutChart01ToRender = $("#doughnutChart01").get(0).getContext("2d");
    var doughnutChart01 = new Chart(doughnutChart01ToRender).Doughnut(doughnutChart01Data);
  }

  //-- END: PIEs N DOGHNUTs --//

$('#cohort_options').on('change', function (event){
  var selectedCohort = ($('#cohort_options option:selected').val());// get option value (note: type is string)
  console.log($('#cohort_options option:selected').val());
})

}//END OF Init Function














//
