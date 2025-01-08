import React, { Component} from 'react';
import axios from 'axios';
import { ProductItem } from './ProductItem';


export class FetchData extends Component {
  static displayName = FetchData.name;

  constructor(props) {
    super(props);
    this.state = { dataGrid: [], loading: true };
  }

  componentDidMount() {

    const someUrl = 'https://localhost:7023/api/product/GetAll';
    axios.get(someUrl)
      .then(response => {
      
        this.setState({
          dataGrid: response.data
          , loading: false
        })
      }
      )
  }

  render() {
    let contents = this.state.loading
      ? <p><em>Loading...</em></p> : ""

    return (
      <>
        <div>
          <h1 id="tableLabel">Weather forecast</h1>
          <p>This component demonstrates fetching data from the server.</p>
          {contents}
        </div>
         
              {this.state.dataGrid.map(x =>
                <ProductItem data ={x} key={x.id}/>
              )}
                   
      </>
    )
  }
}
