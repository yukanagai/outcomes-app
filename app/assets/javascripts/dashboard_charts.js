  function initCharts() {

  var overall_data = gon.watch('all_charts_data', pieData);

  function pieData (overall_data){
    console.log(overall_data)

    var pieChart00Data = [
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

    var doughnutChart00Data = [
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
        value: overall_data.overall[2],
        color: "#30A370",
        highlight: "#63D6A3",
        label: "Employed"
      },
      {
        value: overall_data.overall[3],
        color: "#FCA311",
        highlight: "#FAC56E",
        label: "Looking"
      }
    ];

    var doughnutChart01Data = [
      {
        value: overall_data.overall_90[2],
        color: "#30A370",
        highlight: "#63D6A3",
        label: "Employed"
      },
      {

        value: overall_data.overall_90[3],
        color: "#FCA311",
        highlight: "#FAC56E",
        label: "Looking"
      }
    ];






    // var pieChart01ToRender = $("#pieChart00").get(0).getContext("2d");
    // var pieChart01 = new Chart(pieChart01ToRender).Pie(pieChart00Data);

    var pieChart00 = new Chart($("#pieChart00").get(0).getContext("2d")).Pie(pieChart00Data);
    var pieChart01 = new Chart($("#pieChart01").get(0).getContext("2d")).Pie(pieChart01Data);
    // ...And for a doughnut chart
    // var doughnutChart00ToRender = $("#doughnutChart00").get(0).getContext("2d");
    // var doughnutChart00 = new Chart(doughnutChart00ToRender).Doughnut(doughnutChart00Data);

    var doughnutChart00 = new Chart($("#doughnutChart00").get(0).getContext("2d")).Doughnut(doughnutChart00Data);
    var doughnutChart01 = new Chart($("#doughnutChart01").get(0).getContext("2d")).Doughnut(doughnutChart01Data);

  }

  //-- END: PIEs N DOGHNUTs --//

$('#cohort_options').on('change', function (event){
  var selectedCohort = ($('#cohort_options option:selected').val());// get option value (note: type is string)
})

}//END OF Init Function














//
