var ContactList = React.createClass({

  render: function() {
    var contactNodes = this.props.data.map(function(contact){
        return(
            <Contact data={contact} key={contact.id}/>
        )
      })

  return (
    <div className = "contact-list">
      <table className="main-table">
        <tbody>
        <tr>
          <th>
            Name
          </th>
          <th>
            Email
          </th>
        </tr>
      {contactNodes}
      </tbody>
      </table>
  </div>
  )}
})
