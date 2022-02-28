//
//  FlashView.swift
//  Piano
//
//  Created by 岩田照太 on 2021/09/14.
//

import SwiftUI

struct FlashView: View {
    let num: Int
    
    @State var count = 0
    @State var isTimerRunning = false
    @State var timer: Timer?
    @State var saveInt = 0
    var body: some View {
        VStack{
            Spacer()
            RowView(Photo: photoArray[random()])
                Spacer()
            
            Text("\(count)")
                .padding()
            Button("Start") {
                startCounting()
            }
            .disabled(isTimerRunning)
            
            Button("Stop") {
                stopCounting()
            }
            .disabled(!isTimerRunning)
            .padding()
            Spacer()
        }
    }
    
    func startCounting() {
        isTimerRunning = true
        timer = Timer.scheduledTimer(withTimeInterval: TimeInterval(num), repeats: true) { _ in
            self.count += 1
        }
    }
    
    func stopCounting() {
        isTimerRunning = false
        timer?.invalidate()
    }
    
    func random() -> Int{
        let randomInt = Int.random(in: 0..<36)
        return randomInt
    }
    
}

struct FlashView_Previews: PreviewProvider {
    static var previews: some View {
        FlashView(num: 2)
    }
}
