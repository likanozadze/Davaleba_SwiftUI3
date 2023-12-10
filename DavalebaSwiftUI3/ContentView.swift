//
//  ContentView.swift
//  DavalebaSwiftUI3
//
//  Created by Lika Nozadze on 12/10/23.
//

import SwiftUI


struct ContentView: View {
 @StateObject var groceryStoreViewModel: GroceryStoreViewModel = GroceryStoreViewModel()
    @State private var isCartButtonTapped = false
    
    var body: some View {
    
        VStack(alignment: .leading) {
            
            NavigationView {
                ScrollView {
                    ForEach(groceryStoreViewModel.productArray.indices, id: \.self) { index in
                        let product = groceryStoreViewModel.productArray[index]
                        HStack(spacing: 5) {
                            
                            product.image
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                            
                            VStack(alignment: .leading) {
                                Text(product.name)
                                    .font(.system(size: 16, weight: .bold
                                                 ))
                                Text(String(format: "$%.2f", product.price))
                                    .font(.system(size: 14, weight: .medium))
                                
                                Text("Stock: \(product.stock)")
                                    .font(.system(size: 12, weight: .light))
                            }

                            Spacer()
                            
                            HStack(spacing: 5) {
                                
                                Button(action: {
                                    print("- Button Tapped for \(product.name)")
                                    if groceryStoreViewModel.productArray[index].count > 0 {
                                        groceryStoreViewModel.productArray[index].count -= 1
                                        groceryStoreViewModel.productArray[index].stock += 1
                                        
                                    }
                                    
                                }) {
                                    Text("-")
                                        .frame(width: 40, height: 40)
                                    
                                        .background(Color.green)
                                        .foregroundColor(.white)
                                        .font(.system(size: 16, weight: .semibold))
                                        .cornerRadius(10)
                                    
                                }
                                
                                
                                Text("\(product.count)")
                                    .frame(width: 20, height: 20)
                                
                                    .foregroundColor(.black)
                                    .font(.system(size: 16, weight: .semibold))
                                    .cornerRadius(10)
                                
                                Button(action: {
                                    print("+ Button Tapped for \(product.name)")
                                    groceryStoreViewModel.productArray[index].count += 1
                                    
                                    groceryStoreViewModel.productArray[index].stock -= 1
                                    
                                }) {
                                    
                                    Text("+")
                                        .frame(width: 40, height: 40)
                                        .background(Color.green)
                                        .foregroundColor(.white)
                                        .font(.system(size: 16, weight: .semibold))
                                        .cornerRadius(10)
                                    
                                }
                            }
                        }
                    }
                    .padding(.horizontal)
                }
                
                .navigationTitle("Grocery Store")
                .navigationBarItems(trailing:
                                        NavigationLink(
                                            destination: CartView().environmentObject(groceryStoreViewModel),
                                            label: {
                                                Image(systemName: "cart")
                                                    .resizable()
                                                    .frame(width: 35, height: 35)
                                                    .foregroundStyle(.black)
                                                    .overlay(
                                                        ZStack {
                                                            Circle()
                                                                .fill(Color.red)
                                                                .frame(width: 20)
                                                            Text("\(groceryStoreViewModel.productArray.reduce(0) { $0 + $1.count })")
                                                                .foregroundStyle(.white)
                                                                .font(.system(size: 10))
                                                        },
                                                        alignment: .bottomTrailing
                                                    )
                                            }
                                        )
                )
                
            }
        }
        
        Button(action: {
            for index in groceryStoreViewModel.productArray.indices {
                groceryStoreViewModel.productArray[index].price *= 0.8
            }
            
        }) {
            Text("GET 20% DISCOUNT")
                .frame(maxWidth: .infinity)
                .padding(.vertical, 15)
                .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2066813409, green: 0.7795598507, blue: 0.3491449356, alpha: 1)), Color(#colorLiteral(red: 0.5062720776, green: 0.9115464687, blue: 0.5094537139, alpha: 1))]), startPoint: .leading, endPoint: .trailing))
                .foregroundColor(.white)
                .font(.system(size: 18, weight: .bold))
                .cornerRadius(10)
        }
        .padding(.horizontal)
        .environmentObject(groceryStoreViewModel)
    }

}

#Preview {
    ContentView()
}





