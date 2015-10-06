var ContactList = React.createClass({

  render: function() {
    var contactNodes = this.props.data.contacts.contacts.map(function(contact){
        return(
          <tr>
            <Contact data={contact} key={contact.id}/>
          </tr>
        )
      })

  return (
    <div className = "contact-list">
      <table>
        <tr>
          <th>
            Name
          </th>
          <th>
            Email
          </th>
        </tr>
      {contactNodes}
      </table>

  </div>
  )}
})
