//
//  ContentView.swift
//  NavigationView.Test
//
//  Created by Sartria Ardiantha Uno on 15/06/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            TabView{
                Home()
                    .tabItem{
                        Image(systemName: "house.fill")
                        Text("Beranda")
                    }
                Home()
                    .tabItem{
                        Image(systemName: "paperplane.fill")
                        Text("Eksplorisasi")
                    }
                Home()
                    .tabItem{
                        Image(systemName: "tray.fill")
                        Text("Subscription")
                    }
                Home()
                    .tabItem{
                        Image(systemName: "house.fill")
                        Text("kotak Masuk")
                    }
                Home()
                    .tabItem{
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
        NavigationView {
            Kontent()
                .navigationBarItems(
                    leading:
                        HStack{
                            Button(action : {print("Hello Button")}){
                                Image("yt")
                                    .renderingMode(.original)
                                    .resizable()
                                    .frame(width: 100, height: 60)
                            }
                        },
                    trailing:
                        HStack(spacing:30){
                            Button(action : {print("Hello Print")}){
                                Image(systemName: "tray.full")
                                    .foregroundColor(Color.secondary)
                            }
                            
                            Button(action : {print("Hello Print")}){
                                Image(systemName: "video.fill")
                                    .foregroundColor(Color.secondary)
                            }
                            
                            Button(action : {print("Hello Print")}){
                                Image(systemName: "magnifyingglass")
                                    .foregroundColor(Color.secondary)
                            }
                            
                            Button(action : {print("Hello Print")}){
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
    var body: some View {
        List{
            
            CellKontent(imageKontent: "content1", profilKontent: "pf", judul: "Tutorial IOS SwiftUI #1", deskripsi: "Di Tonton 300X - 1 jam yang lalu", durasi: "10:00")
            
            CellKontent(imageKontent: "content2", profilKontent: "pf", judul: "Tutorial IOS SwiftUI #2", deskripsi: "Di Tonton 300X - 1 jam yang lalu", durasi: "10:00")
            
            CellKontent(imageKontent: "content3", profilKontent: "pf", judul: "Tutorial IOS SwiftUI #3", deskripsi: "Di Tonton 300X - 1 jam yang lalu", durasi: "10:00")
            
        }
    }
}


// Komponen Untuk cell

struct  CellKontent : View {
    var imageKontent: String
    var profilKontent: String
    var judul: String
    var deskripsi: String
    var durasi: String
    
    
    var body : some View {
        //Kontent 1
        VStack{
            ZStack(alignment: .bottomTrailing){
                Image(imageKontent)
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                
                Text(durasi)
                    .padding(.all, 5)
                    .foregroundColor(.white)
                    .font(.caption)
                    .background(Color.black)
                    .cornerRadius(5)
                    .padding(.trailing, 5)
                    .padding(.bottom, 5)
            }
            HStack(spacing:20) {
                Image(profilKontent)
                    .resizable()
                    .frame(width: 30, height: 30)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                
                VStack {
                    Text(judul).font(.headline)
                    HStack {
                        Text(deskripsi).font(.caption)
                    }
                }
                Spacer()
                Image(systemName: "list.bullet")
            }
        }
        
    }
}
