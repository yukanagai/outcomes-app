var Contact = React.createClass({
  render: function() {
  console.log("props", this.props)
    return(
      <div className="contact">
        <td className="contact-name">
          {this.props.data.first_name} {this.props.data.last_name}
        </td>
        <td>
         {this.props.data.email}
        </td>
      </div>
  )}
})

// var Movie = React.createClass({
//   render: function() {
//     return(
//       <div className="movie">
//         <h4 className="movie-title">
//           {this.props.title}
//         </h4>
//         {this.props.children}
//       </div>
//     );
//   }
// });
