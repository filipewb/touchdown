//
//  AddToCardDetailView.swift
//  Touchdown
//
//  Created by Filipe Boeck on 16/10/23.
//

import SwiftUI

struct AddToCardDetailView: View {
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        Button(action: {
            feedback.impactOccurred()
        }, label: {
            Spacer()
            Text("add to cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundStyle(.white)
            Spacer()
        })
        .padding(15)
        .background(
            Color(
                red: shop.selectedProduct?.red ?? sampleProduct.red,
                green: shop.selectedProduct?.green ?? sampleProduct.green,
                blue: shop.selectedProduct?.blue ?? sampleProduct.blue
            )
        )
        .clipShape(Capsule())
    }
}

#Preview {
    AddToCardDetailView()
        .environmentObject(Shop())
        .previewLayout(.sizeThatFits)
        .padding()
}
