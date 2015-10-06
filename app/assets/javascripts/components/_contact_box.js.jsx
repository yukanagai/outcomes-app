var ContactBox = React.createClass({
  getInitialState: function() {
      return {data: this.props}

  },

  render: function() {
    return (
      <div className="contact-box">
        <ContactList data={this.state.data}/>
      </div>
    )
  }
})
