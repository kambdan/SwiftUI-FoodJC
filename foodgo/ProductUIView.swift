//
//  ProductUIView.swift
//  foodgo
//
//  Created by Juan Cambizaca on 6/7/24.
//

import SwiftUI

struct ProductUIView: View {
    @State private var progress = 0.5
    @State private var number: Int = 0
    
    var body: some View {
        
        VStack(alignment: .leading){
            Image("imag_cheese")
            Text("Cheeseburger Wendy's Burger")
                .bold()
                .font(.system(size: 22))
            HStack(alignment: .firstTextBaseline){
                Image(systemName: "star.fill")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .foregroundColor(Color(red: 255/255, green: 150/255, blue: 51/255))
                Text("4.9 - 26 minutos")
            }
            Text("The Cheeseburger Wendy's Burger is a classic fast food burger that packs a punch of flavor in every bite. Made with a juicy beef patty cooked to perfection, it's topped with melted American cheese, crispy lettuce, ripe tomato, and crunchy pickles.")
                .foregroundColor(Color(red: 106/255, green: 106/255, blue: 106/255))
            HStack{
                VStack{
                    Text("Picante")
                        .font(.system(size: 13))
                        .bold()
                    
                    Slider(value: $progress, in: 0...1)
                        .padding()
                        .accentColor(Color(red: 239/255, green: 42/255, blue: 57/255))
                    HStack{
                        Text("Medio")
                            .foregroundColor(.green)
                        Spacer()
                        Text("Caliente")
                            .foregroundColor(Color(red: 239/255, green: 42/255, blue: 57/255))
                    }
                }
                Spacer()
                ExtractedView(number: $number)
            }
            .padding()
        }
        .padding()
    }
}

#Preview {
   ProductUIView()
}

struct ExtractedView: View {
    @Binding var number : Int
    var body: some View {
        VStack{
            Text("Porción")
            HStack {
                // Botón para decrementar
                Button(action: {
                    if number > 0 {
                        number -= 1
                    }
                }) {
                    Image(systemName: "minus")
                        .foregroundColor(.white)
                        .frame(width: 20, height: 20)
                        .padding()
                        .background(Color.red)
                        .cornerRadius(10)
                        .frame(width: 50, height: 50)
                    
                    Spacer()
                    
                    // Texto que muestra el número
                    Text("\(number)")
                    
                        .font(.system(size: 20))
                        .foregroundColor(.black)
                    
                    
                    Spacer()
                    
                    // Botón para incrementar
                    Button(action: {
                        number += 1
                    }) {
                        Image(systemName: "plus")
                            .foregroundColor(.white)
                            .frame(width: 20, height: 20)
                            .padding()
                            .background(Color.red)
                            .cornerRadius(10)
                            .frame(width: 50, height: 50)
                        
                    }
                    
                }
                .padding()
                
            }
            
        }
    }
}
