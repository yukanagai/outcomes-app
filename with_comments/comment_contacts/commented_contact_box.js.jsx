var ContactBox = React.createClass({
  // react_component is called on the view page, with "contacts: @contacts" as an argument.
  // this.props.contacts.contacts here sets our initial state as "those contacts"
  // by setting "data: data_array," it becomes available further down in the script
  getInitialState: function() {
    var data_array = this.props.contacts.contacts
    return {data: data_array}
  },

  //componentDidMount checks whether something loaded. right now, i just have it logging the program's state.
  componentDidMount: function() {
    console.log(this.state)
  },

  //modifies the state based on search_string. i pass in search_string in a different component.
  loadContacts: function(search_string) {
    //data needs to be set equal to all values found. data also needs to be regenerated.
    return_array = []

    //string cleaning
    function capitalizeFirstLetter(string) {
      return string.charAt(0).toUpperCase() + string.slice(1);
    }

    var search_array = search_string.split(' ')
    search_array.forEach(function(word, i){
      search_array[i] = capitalizeFirstLetter(word);
    })

    //this is our comparison object. we set it up, and then compare.
    var search_object = {first_name: search_array[0], last_name: search_array[search_string.length - 1]}

    //searches props for a matching name.
    this.props.contacts.contacts.forEach(function(currentContact){
      if (currentContact['first_name'] == search_object['first_name'] ||
          currentContact['last_name'] == search_object['last_name']   ||
          currentContact['first_name'] == search_object['last_name']  ||
          currentContact['last_name'] == search_object['first_name']) {
        return_array.push(currentContact)
      }
    })

    //make an if-else so that when input is blank, the thing resets with this.props.
    this.setState({data: return_array})
  },

  //we need an event to trigger loadContacts.
  handleContactSearch: function(search_string) {

    this.loadContacts(search_string);
  },

  //and finally, the render call. render kicks off everything in react.
  //the params passed into ContactList are important.
  //Setting onContactSearch={this.handleContactSearch} makes onContactSearch available in ContactList,
  //and invokes the correct method here.
  //data set to state updates the field based on changes in the state.
  render: function() {
    return (
      <div className="contact-box">
        <ContactList onContactSearch={this.handleContactSearch} data={this.state.data}/>
      </div>
    )
  }


})
