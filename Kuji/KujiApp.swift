//
//  KujiApp.swift
//  Kuji
//
//  Created by 岩田照太 on 2021/08/27.
//

import SwiftUI

@main
struct KujiApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
    .environmentObject(ShareData())
        }
    }
}
