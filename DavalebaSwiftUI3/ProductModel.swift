//
//  ProductModel.swift
//  DavalebaSwiftUI3
//
//  Created by Lika Nozadze on 12/10/23.

import SwiftUI

struct ProductModel: Identifiable {
    let id = UUID()
    var name: String
    var price: Double
    var image: Image
    var stock: Int
    var count: Int
}
