var ContactSearchForm = React.createClass({
  handleSubmit: function(event) {
    //in rails, this keeps a submit button from passing a post request to the controller.
    event.preventDefault()
    //we gave our text-input field a ref of "search_string", so we could grab it off of the DOM and find it's value.
    var search_string = React.findDOMNode(this.refs.search_string).value;
    //if not there, do nothing
    if (!search_string) {
      return;
    }

    //refers back up to the onContactSearch prop, and passes search_string   up the chain
    this.props.onContactSearch(search_string);

    //resets the value
    React.findDOMNode(this.refs.search_string).value="";
    return;
  },

  render: function() {
    return (
      <form className="search-form" onSubmit={this.handleSubmit}>
        //the ref is important here. it keeps track of what we're calling.
        //adding onSubmit invokes the this.handleSubmit method.
        <input type="text" placeholder="Enter name!" ref="search_string"/>
        <input type="submit" value="Search"/>
      </form>
    );
  }
})
