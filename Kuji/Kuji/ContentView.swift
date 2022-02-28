//
//  ContentView.swift
//  Kuji
//
//  Created by 岩田照太 on 2021/08/27.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var setData: ShareData
    @State var text:String = ""
    @State var saveArray:[String] = []
    @State var randomChara:String = ""
    var body: some View {
        VStack{
            List{
                if (setData.nameData.isEmpty) {
                    Text("empty")
                }else{
                    ForEach(setData.nameData, id: \.self){ index in
                        Text(index)
                            .font(.title2)
                            .frame(height: 70)
                            .foregroundColor(.black)
                    }
                    .onDelete(perform: rowRemove)
                }
            }
            TextField("Name", text: $text)
                .overlay(
                    RoundedRectangle(cornerSize: CGSize(width: 8.0, height: 8.0))
                        .stroke(Color.orange, lineWidth: 4.0)
                        .padding(-8.0)
                )
                .padding(16.0)
            
            Button(action: {
                setData.nameData.append(text)
                UserDefaults.standard.set(setData.nameData, forKey: "save")
                print(setData.nameData)
            }){
                Text("Save")
                    .padding(40.0)
            }
            
            Button(action: {random()}){
                VStack{
                    Text("To be selected")
                    Text("↓")
                }
            }
            
            List{
                if (saveArray.isEmpty) {
                    Text("empty")
                }else{
                    ForEach(saveArray, id: \.self){ index in
                        Text(index)
                            .font(.title2)
                            .frame(height: 70)
                            .foregroundColor(.black)
                    }
                }
            }
            
        }
    }
    func rowRemove(offsets: IndexSet) {
        setData.nameData.remove(atOffsets: offsets)
        UserDefaults.standard.setValue(setData.nameData, forKey: "save")
    }
    
    func random() -> Void {
        if setData.nameData.count != saveArray.count {
            randomChara = setData.nameData.randomElement() ?? ""
            while saveArray.contains(randomChara) {
                randomChara = setData.nameData.randomElement() ?? ""
            }
            saveArray.append(randomChara)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ShareData())
    }
}
