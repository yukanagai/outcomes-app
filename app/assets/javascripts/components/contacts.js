this.Contacts = React.createClass({

  getInitialState: function() {
   return {
     contacts: this.props.data
   };
   },
   getDefaultProps: function() {
     return {
       contacts: [];
     };
   },

  render: function() {
    return React.DOM.div({
      className: 'contacts'
    }, React.DOM.h2({
      className: 'title'
    }, 'Contacts'));
  }
});
