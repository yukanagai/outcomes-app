var ProgramBox = React.createClass({

getInitialState: function() {
  return {data: this.props}
},
//load all cohorts into props
//set state to match cohort.id


componentDidMount: function(){
  console.log("jquery loaded")

  $(".program-index-names").on("click", function(){
    event.preventDefault();

    //holy god
    var x = $(event.target)[0].id.split("")
    console.log(x)
    var click_index = x[x.length-1]

    $.ajax({
      url: '/programs',
      method: 'GET',
      dataType: 'JSON',
      success: function(result){
        result.forEach(function(i){
          if (result.indexOf(i) == click_index) {
            console.log(i.name)
          }
        })

      }


    })
    })
  },

render: function() {
  console.log(this.props)
  return(
    <div>
    {this.props}
    </div>
  )}
})
