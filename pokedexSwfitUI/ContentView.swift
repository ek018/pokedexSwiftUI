//
//  ContentView.swift
//  pokedexSwfitUI
//
//  Created by Eko Prasetiyo on 17/03/21.
//  Copyright © 2021 coba. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Image("bg")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                BodyView()
                
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct BodyView: View {
    var body: some View {
        VStack{
            LogoView()
            FormView()
        }
        
    }
}

struct LogoView: View {
    var body: some View {
        VStack{
            Image("pokemon_logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
                .frame(width: 200, height: 200, alignment: .center)
        }
    }
    
}

struct FormView: View {
    
    @State var email: String = ""
    @State var password: String = ""
    @State var isValid: Bool = false
    var body: some View {
        VStack(alignment: .leading, spacing: 8){
            Text("Email")
            TextField("Place your email here", text: $email)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Text("Password")
            SecureField("Place your password here", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            NavigationLink(destination: HomeView()){
                Text("Sign in")
                    .frame(minWidth: 0, maxWidth: .infinity,
                           minHeight: 0, maxHeight: 48)
                    .background(Color.yellow)
                    .foregroundColor(Color.white)
                    .cornerRadius(8)
                    .padding(.top, 32)
            }
            //            NavigationLink(destination: HomeView()){
            //                Button(action: {print("GO Pokemon!!")}) {
            //                    Text("Sign in")
            //                        .frame(minWidth: 0, maxWidth: .infinity,
            //                               minHeight: 0, maxHeight: 48)
            //                    Spacer()
            //                }.background(Color.yellow)
            //                    .foregroundColor(Color.white)
            //                    .cornerRadius(8)
            //                    .padding(.top, 32)
            //
            //
            //            }
            
            
            
            
        }.padding(.horizontal, 24)
    }
}





