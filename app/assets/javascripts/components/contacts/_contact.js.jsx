var Contact = React.createClass({
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
