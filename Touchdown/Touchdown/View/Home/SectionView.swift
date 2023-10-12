//
//  SectionView.swift
//  Touchdown
//
//  Created by Filipe Boeck on 11/10/23.
//

import SwiftUI

struct SectionView: View {
    @State var rotateClockwise: Bool
    
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundStyle(Color(.white))
                .rotationEffect(Angle(degrees: rotateClockwise ? 90 : -90))
            
            Spacer()
        }
        .background(colorGray.clipShape(RoundedRectangle(cornerRadius: 12)))
        .frame(width: 85)
    }
}

#Preview {
    SectionView(rotateClockwise: true)
        .previewLayout(.fixed(width: 120, height: 240))
        .padding()
        .background(colorBackground)
}
