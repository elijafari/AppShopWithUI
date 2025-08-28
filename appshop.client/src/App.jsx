import React, { Component } from 'react';
import { BrowserRouter, Routes, Route } from "react-router-dom";
import 'bootstrap/dist/css/bootstrap.rtl.min.css';
import { Menu } from './componets/tools/Menu';
import { Home } from './componets/page/Home';
import { Product } from './componets/page/Product';
import { Login } from './componets/page/login';
import { User } from './componets/page/User';
import { Cart } from './componets/page/Cart';
import { ProductList } from './componets/page/ProductList';
import { ProductView } from './componets/page/ProductView';
import { NoAccess } from './componets/page/NoAccess';

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
        <BrowserRouter>
          <Routes>
            <Route element={<Menu />}>
              <Route path="/" element={<Home />} />
              <Route path="/home" element={<Home />} />
              <Route path="/cart" element={<Cart />} />
              <Route path="/login" element={<Login />} />
              <Route path="/user" element={<User />} />
              <Route path="/noAccess" element={<NoAccess />} />
              <Route path="/product" element={<Product />} />
              <Route path="/product/:id" element={<Product isEdit={true} />} />
              <Route path="/productView/:id" element={<ProductView />} />

              <Route path="/productList" element={<ProductList />} />
              {/*<Route path="/user" element={<User />} /> */}
            </Route>
          </Routes>

        </BrowserRouter>
      </>
    );
  }
}
