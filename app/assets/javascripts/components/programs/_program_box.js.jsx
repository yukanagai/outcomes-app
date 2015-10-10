var ProgramBox = React.createClass({

componentDidMount: function(){
  console.log("jquery")
  $(".program-index-names").on("click", function(){
    event.preventDefault();
    console.log
  })
},

render: function() {
  console.log(this.props)
  return(
    <div>
    <p>hey</p>
    // <ProgramList data={this.props}/>
    </div>
  )}
})
