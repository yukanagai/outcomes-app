var ContactList = React.createClass({

  render: function() {
    console.log("props", this.props)

    var contactNodes = this.props.data.contacts.contacts.map(function(contact){
        console.log(contact)
        return(
          <tr>
            <Contact data={contact} key={contact.id}/>
          </tr>
        )
      })

  console.log("data", this.props.data)

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
