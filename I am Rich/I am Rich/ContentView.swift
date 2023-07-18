//
//  ContentView.swift
//  I am Rich
//
//  Created by Quoc Doan Huu on 18/07/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var showingAlert = false
    var body: some View {
        ZStack {
            Color.blue
            VStack {
                Button{
                    print("Button tapped!")
                    showingAlert = true;
                }label :{
                    Image(systemName: "info.circle").resizable().frame(width: 30, height: 30)
                }.alert("Made by Huu Quoc Doan", isPresented: $showingAlert) {
                    Button("OK", role: .cancel) { }
                }
                .padding().foregroundColor(.white).offset(x:150,y:40)
                Image("rmit-logo-white").resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding([.leading, .bottom, .trailing], 50)
                    .padding(.top, 30)
                Spacer()
                Text("I am Rich").font(.largeTitle).foregroundColor(.white)
                Image("red-diamond").resizable().aspectRatio(contentMode: .fit).padding([.leading, .bottom, .trailing], 50)
                Spacer()
            }
        }.edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
