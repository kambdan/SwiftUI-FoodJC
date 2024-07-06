import SwiftUI

struct HomeUIView: View {
    let filterItems = ["Todos", "Combos", "Clásicos", "Muestras", "2 x 1"]

    @State private var searchText = ""
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                VStack {
                    HStack {
                        Text("JCoder")
                            .font(.system(size: 40))
                        Spacer()
                        Image("perfil")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 50, height: 50)
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.white, lineWidth: 2))
                    }
                }
                Text("Ordena tu plato favorito!")
                    .padding(.bottom, 30)
               
                searchBar
                   
                    
                filter
                    
               
                VStack {
                    HStack {
                        CardView(
                            imageName: "cheese",
                            title: "Cheeseburger",
                            subtitle: "Wendy's Burger",
                            rating: "4.9"
                        )
                        Spacer()
                        Spacer()
                        CardView(
                            imageName: "hamburger",
                            title: "Hamburger",
                            subtitle: "Veggie Burger",
                            rating: "4.9"
                        )
                    }
                    HStack {
                        CardView(
                            imageName: "chicken",
                            title: "Cheeseburger",
                            subtitle: "Chicken Burger",
                            rating: "4.9"
                        )
                        Spacer()
                        Spacer()
                        CardView(
                            imageName: "fried",
                            title: "Cheeseburger",
                            subtitle: "Fried Chicken Burger",
                            rating: "4.9"
                        )
                    }
                }
               
             
            }
            .frame(maxWidth: .infinity)
            .padding()
            
            VStack {
                Spacer()
                
                BottomNavigation()
            }
            .frame(height: 800)
        }
    }
    
    var searchBar: some View {
        HStack {
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.gray)
                
                TextField("Buscar", text: $searchText)
                    .foregroundColor(.primary)
                
                if !searchText.isEmpty {
                    Button(action: {
                        self.searchText = ""
                    }) {
                        Image(systemName: "xmark.circle.fill")
                            .foregroundColor(.gray)
                    }
                }
            }
            .padding(EdgeInsets(top: 13, leading: 6, bottom: 8, trailing: 6))
            .foregroundColor(.secondary)
            .background(Color(.secondarySystemBackground))
            .cornerRadius(10.0)
            Image("filter")
                .resizable()
                .scaledToFill()
                .frame(width: 45, height: 45)
        }
    }
    
    var filter: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: 10) {
                ForEach(Array(filterItems.enumerated()), id: \.element) { index, item in
                    Text(item)
                        .padding()
                        .bold()
                        .background(index == 0 ? Color(red: 239/255, green: 42/255, blue: 57/255): Color(red: 243/255, green: 244/255, blue: 246/255))
                        .cornerRadius(23)
                        .foregroundColor(index == 0 ? Color.white : Color(red: 106/255, green: 106/255, blue: 106/255))
                }
            }
          
        }
        .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
    }
}

struct CardView: View {
    let imageName: String
    let title: String
    let subtitle: String
    let rating: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .scaledToFill()
                .frame(height: 40)
                .padding()
      
            Text(title)
                .bold()
                .font(.system(size: 15))
                .padding(.top, 20)
            Text(subtitle)
                .font(.system(size: 14))
            
            HStack {
                Image(systemName: "star.fill")
                    .resizable()
                    .frame(width: 15, height: 15)
                    .foregroundColor(Color(red: 255/255, green: 150/255, blue: 51/255))
                Text(rating)
                Spacer()
                Image(systemName: "heart")
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(30)
        .shadow(radius: 5)
    }
}



struct BottomNavigation: View {
    var body: some View {
        HStack {
            Spacer()
            Image(systemName: "house.fill")
                .foregroundColor(.white)
            Spacer()
            Image(systemName: "person.fill")
                .foregroundColor(.white)
            Spacer()
        }
        .padding()
        .background(Color(red: 239/255, green: 42/255, blue: 57/255))
        .shadow(radius: 10)
    }
}

#Preview {
    HomeUIView()
}

