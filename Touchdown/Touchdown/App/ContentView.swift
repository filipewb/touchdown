//
//  ContentView.swift
//  Touchdown
//
//  Created by Filipe Boeck on 05/10/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                NavigationBarView()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                    .padding(.top, UIApplication.shared.safeAreaInsets?.top)
                    .background(Color.white)
                    .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 5)
                
                ScrollView(.vertical, showsIndicators: false, content: {
                    VStack(spacing: 0) {
                        FeaturedTabView()
                            .padding(.vertical, 20)
                            .frame(minHeight: 150, idealHeight: 280, maxHeight: .infinity, alignment: .center)
                        
                        FooterView()
                            .padding(.horizontal)
                    }
                })
            }
            .background(colorBackground.ignoresSafeArea(.all, edges: .all))
        }
        .ignoresSafeArea(.all, edges: .top)
    }
}

#Preview {
    ContentView()
}
