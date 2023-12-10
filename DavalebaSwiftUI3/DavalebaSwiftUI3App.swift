//
//  DavalebaSwiftUI3App.swift
//  DavalebaSwiftUI3
//
//  Created by Lika Nozadze on 12/10/23.
//

import SwiftUI

@main
struct DavalebaSwiftUI3App: App {
    @StateObject var groceryStoreViewModel = GroceryStoreViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(groceryStoreViewModel)
        }
    }
}
