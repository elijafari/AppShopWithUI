import React, { Component } from 'react';
import { BrowserRouter, Routes, Route } from "react-router-dom";
import 'bootstrap/dist/css/bootstrap.rtl.min.css';
import { Menu } from './componets/Menu';
import { Home } from './componets/Home';
import {Product } from './componets/Product';
import { Login } from './componets/login';
import { User } from './componets/User';
import { Cart } from './componets/Cart';
import { ProductList } from './componets/ProductList';
import { ProductView } from './componets/ProductView';

export default class App extends Component {
  constructor(props) {
    super(props);
  }
  // componentDidMount()
  // {
  //   debugger
  // }
 render() {
    return (
      <>
        <h2>لوازم الکتریکی احسان</h2>     

        <BrowserRouter>
      <Routes>
        <Route element={<Menu />}>
          <Route path="/" element={<Home />} />
          <Route path="/home" element={<Home />} />
          <Route path="/cart" element={<Cart />} />
          <Route path="/login" element={<Login />} />
          <Route path="/user" element={<User />} />

          <Route path="/product" element={<Product />} />
          <Route path="/product/:id"  element={<Product />}/>
          <Route path="/productView/:id"  element={<ProductView />}/>

          <Route path="/productList" element={<ProductList />} />
           {/*<Route path="/user" element={<User />} /> */}
        </Route>
      </Routes> 

    </BrowserRouter>
      </>
    );
  }
}
