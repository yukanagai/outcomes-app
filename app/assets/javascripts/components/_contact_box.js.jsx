var ContactBox = React.createClass({
  getInitialState: function() {
    return {data: this.props}
    // return {data: this.props}
  },

  loadContacts: function(search_string) {
    //data needs to be set equal to all values found. data also needs to be regenerated.
    data_array = this.props['contacts']['contacts']
    return_array = []

    search_array = search_string.split(' ')
    // will only work for a full name. if there are three terms or a name with an extra space, will fail.
    // also partial names don't work.
    search_object = {first_name: search_array[0], last_name: search_array[1]}


    data_array.forEach(function(currentContact){
      if (currentContact['first_name'] == search_object['first_name'] ||
          currentContact['last_name'] == search_object['last_name']   ||
          currentContact['first_name'] == search_object['last_name']  ||
          currentContact['last_name'] == search_object['first_name'] ){
        return_array.push(currentContact)
      }
    })
    console.log(return_array)
  },

  handleContactSearch: function(search_string) {
    //retrieves data
    this.loadContacts(search_string);
  },

  // componentDidUpdate call

  render: function() {
    return (
      <div className="contact-box">
        <ContactSearchForm onContactSearch={this.handleContactSearch}/>
        <ContactList data={this.state.data}/>
      </div>
    )
  }


})
