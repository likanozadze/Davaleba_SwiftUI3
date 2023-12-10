//
//  CartView.swift
//  DavalebaSwiftUI3
//
//  Created by Lika Nozadze on 12/11/23.
//

import SwiftUI

struct CartView: View {
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var viewModel: GroceryStoreViewModel
    
    var body: some View {
        NavigationView {
            VStack {
                LazyHStack {
                    ForEach(viewModel.productArray) { product in
                        if product.count > 0 {
                            VStack(spacing: 5) {
                                product.image
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80, height: 80)
                                
                          
                                Text(product.name)
                                HStack {
                                    Text(String(format: "Total: $%.2f", product.price *
                                                Double(product.count)))
                                }
                              
                                }
                                
                                Spacer()
                                
                                Text("\(product.count)")
                                    .foregroundColor(.white)
                                    .font(.headline)
                            }
                        }
                    }
                }
                .listStyle(InsetGroupedListStyle())
            }
            .navigationTitle("Cart")
        }
    }


#Preview {
    CartView().environmentObject(GroceryStoreViewModel())
}
