//
//  ContentView.swift
//  DataModel#8.2
//
//  Created by Sartria Ardiantha Uno on 23/06/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            TabView{
                Home()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Beranda")
                    }
                Home()
                    .tabItem {
                        Image(systemName: "paperplane.fill")
                        Text("Eksplora")
                    }
                Home()
                    .tabItem {
                        Image(systemName: "tray.fill")
                        Text("Subscription")
                    }
                Home()
                    .tabItem {
                        Image(systemName: "envelope.fill")
                        Text("Kotak Masuk")
                    }
                Home()
                    .tabItem {
                        Image(systemName: "play.rectangle.fill")
                        Text("Koleksi")
                    }
            }
            .accentColor(.red)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home : View {
    var body: some View {
        NavigationView{
            Kontent()
                
                .navigationBarItems(
                    
                    leading:
                        HStack{
                            Button(action: {print("Hello Button")}){
                                Image("yt")
                                    .renderingMode(.original)
                                    .resizable()
                                    .frame(width: 90, height: 20)
                            }
                        },
                    trailing:
                        HStack{
                            Button(action: {print("Hello Print")}){
                                Image(systemName: "tray.full").foregroundColor(Color.secondary)
                            }
                            
                            Button(action: {print("Hello Print")}){
                                Image(systemName: "video.fill").foregroundColor(Color.secondary)
                            }
                            
                            Button(action: {print("Hello Print")}){
                                Image(systemName: "magnifyingglass").foregroundColor(Color.secondary)
                            }
                            
                            Button(action: {print("Hello Print")}){
                                Image("pf")
                                    .renderingMode(.original)
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                    .clipShape(Circle())
                            }
                            
                        }
                )
                .navigationBarTitle("", displayMode: .inline)
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct Kontent : View {
    var body: some View{
        List{
            CellKontent(imageKontent: "content1", profileKontent: "pf", judul: "Tutorial IOS SwiftUI #1", deskripsi: "Di tonton 300x - 1 jam yang lalu", durasi: "10:00")
            
            CellKontent(imageKontent: "content2", profileKontent: "pf", judul: "Tutorial IOS SwiftUI #2", deskripsi: "Di tonton 300x - 1 jam yang lalu", durasi: "14:00")
            
            CellKontent(imageKontent: "content3", profileKontent: "pf", judul: "Tutorial IOS SwiftUI #3", deskripsi: "Di tonton 300x - 1 jam yang lalu", durasi: "30:00")
        }
    }
}

// Komponen untuk Cell

struct CellKontent : View {
    var imageKontent : String
    var profileKontent : String
    var judul : String
    var deskripsi : String
    var durasi : String
    
    var body: some View{
        
        //Kontent 1
        VStack{
            ZStack(alignment: .bottomTrailing){
                Image(imageKontent)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                
                Text(durasi)
                    .padding(.all, 5)
                    .foregroundColor(Color.white)
                    .font(.caption)
                    .background(Color.black)
                    .padding(.trailing, 5)
                    .padding(.bottom, 5)
            }
            
            HStack(spacing:20){
                Image(profileKontent)
                    .resizable()
                    .frame(width: 30, height: 30)
                    .clipShape(Circle())
                
                VStack(alignment: .leading){
                    Text(judul).font(.headline)
                    Text(deskripsi).font(.caption)
                }
                Spacer()
                Image(systemName: "list.bullet")
            }
        }
    }
}
