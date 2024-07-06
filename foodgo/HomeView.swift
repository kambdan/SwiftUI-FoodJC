//
//  HomeView.swift
//  foodgo
//
//  Created by Juan Cambizaca on 27/6/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack{
            Spacer()
            Text("FoodGo")
                .font(.custom("Play", size: 36))
                .bold()
                .foregroundColor(.white)
                .padding(.top, 300)
            Spacer()
            GeometryReader { geometry in
                Image("home")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 350, height: 350)
                    .position(x: 175 + geometry.safeAreaInsets.leading - 55, y: geometry.size.height - 105 )
            }
            .padding(.leading)
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .background(
            LinearGradient(gradient: Gradient(colors: [Color(red: 254/255, green: 138/255, blue: 147/255), Color(red: 239/255, green: 43/255, blue: 58/255)]),
                                   startPoint: .topLeading,
                                   endPoint: .bottomTrailing)
                )
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    HomeView()
}
