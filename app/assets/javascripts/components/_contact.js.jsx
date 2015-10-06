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
