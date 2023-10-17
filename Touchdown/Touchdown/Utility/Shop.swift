//
//  Shop.swift
//  Touchdown
//
//  Created by Filipe Boeck on 16/10/23.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
