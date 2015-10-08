var MovieBox = React.createClass({
  getInitialState: function() {
    return {data: []};
  },

  componentDidMount: function() {
     this.loadMovies('Star Wars');
  },

  loadMovies: function(title) {
    $.ajax({
      url:this.props.url,
      method: 'GET',
      data: {s: title },
      success: function(result) {
        this.setState({data: result.Search});
        console.log('data', this.state.data);
      }.bind(this)
    });
  },

  handleMovieSearch: function(title) {
    //will call ajax with the title
    this.loadMovies(title);
  },


  render: function() {
    return (
      <div className="movie-box container">
        Hello, world! I am a MovieBox
        <MovieForm onMovieSearch={this.handleMovieSearch}/>
        <MovieList data={this.state.data}/>
      </div>
    );
  }
});

var MovieList = React.createClass({
  render: function() {
   var movieNodes = this.props.data.map(function(movie) {
     return(
        <Movie title={movie.Title}>
          {movie.Year}
        </Movie>
     );
   });

   return (
     <div className="movie-list">
      {movieNodes}
     </div>
   );
  }
});

var MovieForm = React.createClass({
  handleSubmit: function(event) {
    event.preventDefault();
    var title = React.findDOMNode(this.refs.title).value;

    //if user did not enter title, don't do ajax
    if (!title) {
      return;
    }

    this.props.onMovieSearch(title);

    React.findDOMNode(this.refs.title).value= "";
    return;
  },
  render: function() {
    return (
      <form className="movie-form" onSubmit={this.handleSubmit}>
        <input type="text" placeholder="Search for movies" ref="title"/>
        <input type="submit" value="Search"/>
      </form>
    );
  }
});

var Movie = React.createClass({
  render: function() {
    return(
      <div className="movie">
        <h4 className="movie-title">
          {this.props.title}
        </h4>
        {this.props.children}
      </div>
    );
  }
});

React.render(<MovieBox url='https://www.omdbapi.com/'/>, document.body);
