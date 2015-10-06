var ContactBox = React.createClass({
  getInitialState: function() {
    return {data: JSON.parse(this.props.contacts)}
  },

  render: function() {
    return (
      <div className="contact-box">
        <ContactList data={this.state.data}/>
      </div>
    )
  }
})

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

var Contact = React.createClass({
  render: function() {
    return(
      <div className="contact">
        <td className="contact-name">
          {this.props.first_name} {this.props.last_name}
        </td>
        <td>
          {this.props.email}
        </td>
      </div>
  )}
})
