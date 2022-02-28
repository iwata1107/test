//
//  ShareData.swift
//  Kuji
//
//  Created by 岩田照太 on 2021/08/28.
//

import Foundation

class ShareData: ObservableObject {
        
    @Published var nameData = UserDefaults.standard.array(forKey: "save") as? [String] ?? []

}
