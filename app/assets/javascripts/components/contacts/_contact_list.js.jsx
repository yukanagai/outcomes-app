var ContactList = React.createClass({

  render: function() {
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

        <tr>
          <th className="linkBar" colSpan='6'>
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

      <tbody className="bodyRow">
        {contactNodes}
      </tbody>
      </table>
  </div>
  )}
})
