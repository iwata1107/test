//
//  HomeView.swift
//  Piano
//
//  Created by 岩田照太 on 2021/09/13.
//

import SwiftUI

struct HomeView: View {
    @State var selectednum = 0
    
    var body: some View {
        NavigationView{
            VStack{
                Picker(selection: $selectednum, label: Text("num")) {
                    Text("1").tag(0)
                    Text("2").tag(1)
                    Text("3").tag(2)
                    Text("4").tag(3)
                    Text("5").tag(4)
                }
                NavigationLink(destination: FlashView(num: selectednum+1)) {
                    Text("Next")
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
