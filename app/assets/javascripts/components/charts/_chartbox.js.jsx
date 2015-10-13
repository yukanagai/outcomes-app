var ChartBox = React.createClass({
  getInitialState: function(){
    data_array = this.props
    console.log(data_array)
    return data_array
  },

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
    var pieChart03 = new Chart(pieChart01ToRender).Pie(pieChart01Data);


    // ...And for a doughnut chart
    var doughnutChart01ToRender = $("#doughnutChart01").get(0).getContext("2d");
    var doughnutChart01 = new Chart(doughnutChart01ToRender).Doughnut(doughnutChart01Data);
  },

  render: function(){
    var divStyle = {
      width: 250,
      height: 250,
      border: "1px solid black",

    }

    return(
    <div>
      <p>Alive</p>


      <ul className="dashboard-chart">
        <li>
          All Time
        </li>
        <li>
          <canvas id="pieChart01" style={divStyle} className="pie-chart employed-all"></canvas>
        </li>
      </ul>
    </div>
  )
  }
})
