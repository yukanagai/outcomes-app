var ContactList = React.createClass({
  render: function() {
    var contactNodes = this.props.data.map(function(contact){
      return(
        <tr>
          <Contact/>
        <tr>
      )
    }),

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
  )}
})
