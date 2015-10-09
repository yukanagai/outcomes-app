  function initCharts() {
  //note: options were removed from all instantiating vars as we'll be using default global options
  //---- START: LINE CHART EXAMPLE ----//
  // var lineData = {
  //   labels: ["January", "February", "March", "April", "May", "June", "July"],
  //   datasets: [
  //     {
  //       fillColor: "rgba(220,220,220,0.5)",
  //       strokeColor: "rgba(220,220,220,1)",
  //       pointColor: "rgba(220,220,220,1)",
  //       pointStrokeColor: "#fff",
  //       data: [65, 59, 90, 81, 56, 55, 40]
  //     },
  //     {
  //       fillColor: "rgba(151,187,205,0.5)",
  //       strokeColor: "rgba(151,187,205,1)",
  //       pointColor: "rgba(151,187,205,1)",
  //       pointStrokeColor: "#fff",
  //       data: [28, 48, 40, 19, 96, 27, 100]
  //     }
  //   ]
  // }
  // var lineChart01ToRender = $("#lineChart01").get(0).getContext("2d");
  // var lineChart01 = new Chart(lineChart01ToRender).Line(lineData);
  //---- END: LINE CHART EXAMPLE ----//


  //---- START: BAR CHART EXAMPLE ----//

  // var barChart01Data = {
  //   labels: ["January", "February", "March", "April", "May", "June", "July"],
  //   datasets: [
  //     {
  //       label: "My First dataset",
  //       fillColor: "rgba(220,220,220,0.5)",
  //       strokeColor: "rgba(220,220,220,0.8)",
  //       highlightFill: "rgba(220,220,220,0.75)",
  //       highlightStroke: "rgba(220,220,220,1)",
  //       data: [65, 59, 80, 81, 56, 55, 40]
  //     },
  //     {
  //       label: "My Second dataset",
  //       fillColor: "rgba(151,187,205,0.5)",
  //       strokeColor: "rgba(151,187,205,0.8)",
  //       highlightFill: "rgba(151,187,205,0.75)",
  //       highlightStroke: "rgba(151,187,205,1)",                  data: [28, 48, 40, 19, 86, 27, 90]
  //     }
  //   ]
  // };
  //
  // var barChart01ToRender = $("#barChart01").get(0).getContext("2d");
  // var barChart01 = new Chart(barChart01ToRender).Bar(barChart01Data);

  // ---- END: BAR CHART EXAMPLE ----//


  // ---- START: RADAR CHART EXAMPLE ----//

  // var radarChart01Data = {
  //   labels: ["Eating", "Drinking", "Sleeping", "Designing", "Coding", "Cycling", "Running"],
  //   datasets: [
  //     {
  //       label: "My First dataset",
  //       fillColor: "rgba(220,220,220,0.2)",
  //       strokeColor: "rgba(220,220,220,1)",
  //       pointColor: "rgba(220,220,220,1)",
  //       pointStrokeColor: "#fff",
  //       pointHighlightFill: "#fff",
  //       pointHighlightStroke: "rgba(220,220,220,1)",
  //       data: [65, 59, 90, 81, 56, 55, 40]
  //     },
  //     {
  //       label: "My Second dataset",
  //       fillColor: "rgba(151,187,205,0.2)",
  //       strokeColor: "rgba(151,187,205,1)",
  //       pointColor: "rgba(151,187,205,1)",
  //       pointStrokeColor: "#fff",
  //       pointHighlightFill: "#fff",
  //       pointHighlightStroke: "rgba(151,187,205,1)",
  //       data: [28, 48, 40, 19, 96, 27, 100]
  //     }
  //   ]
  // };
  //
  // var radarChart01ToRender = $("#radarChart01").get(0).getContext("2d");
  // var radarChart01 = new Chart(radarChart01ToRender).Radar(radarChart01Data);

  //-- END Radar Chart --//


  //---- START: Polar Area Chart ----//
  // var polarChart01Data = [
  //   {
  //     value: 300,
  //     color:"#F7464A",
  //     highlight: "#FF5A5E",
  //     label: "Red"
  //   },
  //   {
  //     value: 50,
  //     color: "#46BFBD",
  //     highlight: "#5AD3D1",
  //     label: "Green"
  //   },
  //   {
  //     value: 100,
  //     color: "#FDB45C",
  //     highlight: "#FFC870",
  //     label: "Yellow"
  //   },
  //   {
  //     value: 40,
  //     color: "#949FB1",
  //     highlight: "#A8B3C5",
  //     label: "Grey"
  //   },
  //   {
  //     value: 120,
  //     color: "#4D5360",
  //     highlight: "#616774",
  //     label: "Dark Grey"
  //   }
  //
  // ];
  // var polarChart01ToRender = $("#polarChart01").get(0).getContext("2d");
  // var polarChart01 = new Chart(polarChart01ToRender).PolarArea(polarChart01Data);

  //-- END: Polar Area Chart  --//

  //-- START: PIEs N DOGHNUTs --//

  // For a pie chart...
  var doughnutChart01Data = [
    {
      value: 4,
      color:"#AA1A1A",
      highlight: "#D95050",
      label: "Other"
    },
    {
      value: 15,
      color: "#30A370",
      highlight: "#63D6A3",
      label: "Employed"
    },
    {
      value: 6,
      color: "#FCA311",
      highlight: "#FAC56E",
      label: "Looking"
    }
  ];

  var pieChart01Data = [
    {
      value: 1,
      color:"#AA1A1A",
      highlight: "#D95050",
      label: "Other"
    },
    {
      value: 18,
      color: "#30A370",
      highlight: "#63D6A3",
      label: "Employed"
    },
    {
      value: 5,
      color: "#FCA311",
      highlight: "#FAC56E",
      label: "Looking"
    }
  ];




  var pieChart01ToRender = $("#pieChart01").get(0).getContext("2d");
  var pieChart01 = new Chart(pieChart01ToRender).Pie(pieChart01Data);
  // removed index from example in instructons when creating new instance
  //var myPieChart = new Chart(ctx[0]).Pie(data,options);


  // ...And for a doughnut chart
  var doughnutChart01ToRender = $("#doughnutChart01").get(0).getContext("2d");
  var doughnutChart01 = new Chart(doughnutChart01ToRender).Doughnut(doughnutChart01Data);
  // removed index from example in instructons when creating new instance
  // var myDoughnutChart = new Chart(ctx[1]).Doughnut(data,options);

  //-- END: PIEs N DOGHNUTs --//

}//END OF Init Function
