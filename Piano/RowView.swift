//
//  RowView.swift
//  Piano
//
//  Created by 岩田照太 on 2021/09/13.
//

import SwiftUI

struct RowView: View {
    var Photo:PhotoData
    var body: some View {
        VStack{
            Image(Photo.imageName)
                .resizable()
                .frame(width: 300, height: 300,
                       alignment: .center)
                .padding()
            Text(Photo.title).font(.title).fontWeight(.heavy).bold().padding()
        }
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(Photo: photoArray[0])
            .previewLayout(.fixed(width:300, height: 550))
    }
}
