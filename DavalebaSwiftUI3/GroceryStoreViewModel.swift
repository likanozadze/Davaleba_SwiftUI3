//
//  GroceryStoreViewModel.swift
//  DavalebaSwiftUI3
//
//  Created by Lika Nozadze on 12/11/23.
//

import SwiftUI

class GroceryStoreViewModel: ObservableObject {
    
    @Published var productArray: [ProductModel] = []
    
    init() {
        getProducts()
    }
    
    func getProducts() {
        let product1 = ProductModel(name: "Apple", price: 1.15, image: Image("apple"), stock: 20, count: 0)
        let product2 = ProductModel(name: "Pepper", price: 1.2, image: Image("pepper"), stock: 20, count: 0)
        let product3 = ProductModel(name: "Nutella", price: 15.0, image: Image("nutella"), stock: 20, count: 0)
        let product4 = ProductModel(name: "Onion", price: 1.4, image: Image("onion"), stock: 25, count: 0)
        let product5 = ProductModel(name: "Pineapple", price: 8.55, image: Image("pineapple"), stock: 20, count: 0)
        let product6 = ProductModel(name: "Banana", price: 1.99, image: Image("banana"), stock: 30, count: 0)
        let product7 = ProductModel(name: "Tomato", price: 2.55, image: Image("tomato"), stock: 25, count: 0)
        let product8 = ProductModel(name: "Cucumber", price: 2.2, image: Image("cucumber"), stock: 30, count: 0)
        let product9 = ProductModel(name: "Carrot", price: 1.3, image: Image("carrot"), stock: 35, count: 0)
        let product10 = ProductModel(name: "Potato", price: 2.4, image: Image("potato"), stock: 40, count: 0)
        let product11 = ProductModel(name: "Broccoli", price: 2.5, image: Image("broccoli"), stock: 25, count: 0)
        let product12 = ProductModel(name: "Lettuce", price: 3.0, image: Image("lettuce"), stock: 30, count: 0)
        let product13 = ProductModel(name: "Mushroom", price: 8.0, image: Image("mushroom"), stock: 20, count: 0)
        let product14 = ProductModel(name: "Bread", price: 2.5, image: Image("bread"), stock: 35, count: 0)
        
        self.productArray.append(product1)
        self.productArray.append(product2)
        self.productArray.append(product3)
        self.productArray.append(product4)
        self.productArray.append(product5)
        self.productArray.append(product6)
        self.productArray.append(product7)
        self.productArray.append(product8)
        self.productArray.append(product9)
        self.productArray.append(product10)
        self.productArray.append(product11)
        self.productArray.append(product12)
        self.productArray.append(product13)
        self.productArray.append(product14)
        

    }
}
