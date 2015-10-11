var ContactList = React.createClass({

  render: function() {
    //see below, this maps out the nodes
    var contactNodes = this.props.data.map(function(contact){
        return(
            <Contact data={contact} key={contact.id}/>
        )
      })

  return (
    <div className= "contact-list">
      <table>
      <thead>
        <tr>
          <th className="header" colSpan='10'>
            <h1 className="headerText">Contact Search</h1>
          </th>
        </tr>
        // below, we invoke onContactSearch passed in through the props, which then refers to the handleContactSearch method in ContactBox
        //we're passing it into ContactSearchForm, whose job it is to capture search_string.
        //And then we have the handleContactSearch form in the right position to be used and influence the whole react tree.
        <tr>
          <th className="linkBar" colSpan='6'>
            <ContactSearchForm onContactSearch={this.props.onContactSearch}/>
            <div className="button-add-new">
              <a href="/contacts/new">Add New Contact</a>
            </div>
          </th>
        </tr>
        <tr className="headerRow">
          <th> Name </th>
          <th> Email </th>
          <th>Twitter</th>
          <th>Github</th>
          <th>Linkedin</th>
          <th>Phone</th>
        </tr>
      </thead>
      //these nodes are mapped out above, with a loop.
      //this gets updated on changes in state (which is why we had to pass in this.state.data)
      <tbody className="bodyRow">
        {contactNodes}
      </tbody>
      </table>
  </div>
  )}
})
