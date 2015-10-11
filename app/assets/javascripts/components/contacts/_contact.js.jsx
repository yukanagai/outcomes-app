var Contact = React.createClass({
// -Pretty self-explanatory. this has data: contact, which we got waaaay up in contact_box by setting data_array = this.props.contacts.contacts.
// -We then bound it to the state, which we passed into ContactList.
//-So when Contact finally gets rendered, the data passed down has met up with the search_string bubbling up from below,  they've filtered against
//each other, and returned matching values. Those are then bound to the state, which has been passed into ContactList.
//-So only the Contacts that match the state are ultimately rendered, because we control and reset the state in loadContacts in _contact_box. 
  render: function() {
    return(
      <tr className="contact">
        <td className="contact-name">
          <a href={"/contacts/"+this.props.data.id+""}>
          {this.props.data.first_name} {this.props.data.last_name}
          </a>
        </td>
        <td> {this.props.data.email} </td>
        <td> {this.props.data.twitter} </td>
        <td> {this.props.data.github} </td>
        <td> {this.props.data.linkedin} </td>
        <td> {this.props.data.phone} </td>
      </tr>
  )}
})
