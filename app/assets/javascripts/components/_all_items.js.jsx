var AllItems = React.createClass({
  getInitialState(){
    return {items: []}
  },
  componentDidMount(){
    $.getJSON('/',(response) => {this.setState({items: response})});
    // $.getJSON('http://localhost:4000/api/v1/items.json', function (data) {
    //   console.log(data);
    // });
  },

  render(){
    var items = this.state.items.map((item) => {
      return (
        <div key={item.id}>
          <h3>
            {item.name}
          </h3>
          <p>
            {item.description}
          </p>
        </div>
        )
    });
    return (
      <div>
        {items}
      </div>
      )
  }
});
