var ContactSearchForm = React.createClass({
  handleSubmit: function(event) {
    event.preventDefault()
    var search_string = React.findDOMNode(this.refs.search_string).value;
    //if not there, do nothing
    if (!search_string) {
      return;
    }

    this.props.onContactSearch(search_string);

    React.findDOMNode(this.refs.search_string).value="";
    return;
  },

  render: function() {
    return (

      <form className="search-form" onSubmit={this.handleSubmit}>
        <input type="text" placeholder="Enter name!" ref="search_string"/>
        <input type="submit" value="Search"/>
      </form>
    );
  }
})
