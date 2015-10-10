var ContactList = React.createClass({

  render: function() {
    var contactNodes = this.props.data.map(function(contact){
        return(
            <Contact data={contact} key={contact.id}/>
        )
      })

  return (
    <div className = "contact-list">
      <table>
      <thead>
        <tr>
          <th class="header" colspan="10">
            <h1 class="headerText">Contact Search</h1>
          </th>
        </tr>

        <tr>
          <th class="linkBar" colspan="6">
            <div class="button-add-new">
            </div>
          </th>
        </tr>
        <tr class="headerRow">
          <th> Name </th>
          <th> Email </th>
          <th>Twitter</th>
          <th>Github</th>
          <th>Linkedin</th>
          <th>Phone</th>
        </tr>
      </thead>

      <tbody class="bodyRow">
        {contactNodes}
      </tbody>
      </table>
  </div>
  )}
})
