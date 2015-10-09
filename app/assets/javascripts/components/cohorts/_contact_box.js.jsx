var ContactBox = React.createClass({
  getInitialState: function() {
    var data_array = this.props.contacts.contacts
    return {data: data_array}
  },

  componentDidMount: function() {
    console.log(this.state)
  },

  loadContacts: function(search_string) {
    //data needs to be set equal to all values found. data also needs to be regenerated.
    return_array = []

    //keeps our data intact
    function capitalizeFirstLetter(string) {
      return string.charAt(0).toUpperCase() + string.slice(1);
    }

    search_array = search_string.split(' ')
    search_array.forEach(function(word, i){
      search_array[i] = capitalizeFirstLetter(word);
    })

    //this is our comparison object. if first_name and last_name don't
    //get us what we need, we're being too anal
    search_object = {first_name: search_array[0], last_name: search_array[search_string.length - 1]}

    this.state.data.forEach(function(currentContact){
      if (currentContact['first_name'] == search_object['first_name'] ||
          currentContact['last_name'] == search_object['last_name']   ||
          currentContact['first_name'] == search_object['last_name']  ||
          currentContact['last_name'] == search_object['first_name']) {
        return_array.push(currentContact)
      }
    })

    this.setState({data: return_array})
  },

  handleContactSearch: function(search_string) {
    console.log(this.props)
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
