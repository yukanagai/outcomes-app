var ContactBox = React.createClass({
  getInitialState: function() {
    return {data: this.props}
  },

  loadContacts: function(search_string) {
    //data needs to be set equal to all values found. data also needs to be regenerated.
    data_array = this.props['contacts']['contacts']
    console.log(search_string)
    // if (data_array.forEach(function(element){element.first_name}) == search_string){
    // render the matching element
    //   return {element}
    // }

  },

  handleContactSearch: function(search_string) {
    //retrieves data
    this.loadContacts(search_string);
  },

  render: function() {
    return (
      <div className="contact-box">
        <ContactSearchForm onContactSearch={this.handleContactSearch}/>
        <ContactList data={this.state.data}/>
      </div>
    )
  }
})
