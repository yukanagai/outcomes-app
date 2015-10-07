var Contact = React.createClass({
  render: function() {
    return(
      <div className="contact">
        <td className="contact-name">
          <a href={"/contacts/"+this.props.data.id+""}>
          {this.props.data.first_name} {this.props.data.last_name}
          </a>
        </td>
        <td>
         {this.props.data.email}
        </td>
      </div>
  )}
})
