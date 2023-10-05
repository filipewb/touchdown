//
//  LogoView.swift
//  Touchdown
//
//  Created by Filipe Boeck on 05/10/23.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        HStack(spacing: 4) {
            Text("Touch".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundStyle(.black)
            
            Image("logo-dark")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30, alignment: .center)
            
            Text("down".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundStyle(.black)
        }
    }
}

#Preview {
    LogoView()
        .previewLayout(.sizeThatFits)
        .padding()
}
