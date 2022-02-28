//
//  PhotoData.swift
//  Piano
//
//  Created by 岩田照太 on 2021/09/07.
//

import Foundation

var photoArray:[PhotoData] = makeData()

struct  PhotoData: Identifiable {
    var id: Int
    var imageName: String
    var title: String
}

func makeData() -> [PhotoData] {
    var dataArray:[PhotoData] = []
    dataArray.append(PhotoData(id: 1, imageName: "1", title: "ド"))
    dataArray.append(PhotoData(id: 2, imageName: "2", title: "レ"))
    dataArray.append(PhotoData(id: 3, imageName: "3", title: "ミ"))
    dataArray.append(PhotoData(id: 4, imageName: "4", title: "ファ"))
    dataArray.append(PhotoData(id: 5, imageName: "5", title: "ソ"))
    dataArray.append(PhotoData(id: 6, imageName: "6", title: "ラ"))
    dataArray.append(PhotoData(id: 7, imageName: "7", title: "シ"))
    dataArray.append(PhotoData(id: 8, imageName: "8", title: "ド"))
    dataArray.append(PhotoData(id: 9, imageName: "9", title: "レ"))
    dataArray.append(PhotoData(id: 10, imageName: "10", title: "ミ"))
    dataArray.append(PhotoData(id: 11, imageName: "11", title: "ファ"))
    dataArray.append(PhotoData(id: 12, imageName: "12", title: "ソ"))
    dataArray.append(PhotoData(id: 13, imageName: "13", title: "ラ"))
    dataArray.append(PhotoData(id: 14, imageName: "14", title: "シ"))
    dataArray.append(PhotoData(id: 15, imageName: "15", title: "ド"))
    dataArray.append(PhotoData(id: 16, imageName: "16", title: "シ"))
    dataArray.append(PhotoData(id: 17, imageName: "17", title: "ラ"))
    dataArray.append(PhotoData(id: 18, imageName: "18", title: "ソ"))
    dataArray.append(PhotoData(id: 19, imageName: "19", title: "ファ"))
    dataArray.append(PhotoData(id: 20, imageName: "20", title: "ミ"))
    dataArray.append(PhotoData(id: 21, imageName: "21", title: "レ"))
    dataArray.append(PhotoData(id: 22, imageName: "22", title: "ド"))
    dataArray.append(PhotoData(id: 23, imageName: "23", title: "シ"))
    dataArray.append(PhotoData(id: 24, imageName: "24", title: "ラ"))
    dataArray.append(PhotoData(id: 25, imageName: "25", title: "ソ"))
    dataArray.append(PhotoData(id: 26, imageName: "26", title: "ファ"))
    dataArray.append(PhotoData(id: 27, imageName: "27", title: "ミ"))
    dataArray.append(PhotoData(id: 28, imageName: "28", title: "レ"))
    dataArray.append(PhotoData(id: 29, imageName: "29", title: "ド"))
    dataArray.append(PhotoData(id: 30, imageName: "30", title: "シ"))
    dataArray.append(PhotoData(id: 31, imageName: "31", title: "ラ"))
    dataArray.append(PhotoData(id: 32, imageName: "32", title: "ソ"))
    dataArray.append(PhotoData(id: 33, imageName: "33", title: "ファ"))
    dataArray.append(PhotoData(id: 34, imageName: "34", title: "ミ"))
    dataArray.append(PhotoData(id: 35, imageName: "35", title: "レ"))
    dataArray.append(PhotoData(id: 36, imageName: "36", title: "ド"))
    
    return dataArray
}
