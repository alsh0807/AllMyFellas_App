//
//  ContentView.swift
//  AllMyFellas
//
//  Created by dgsw8th16 on 11/29/23.
//

import SwiftUI 

struct ContentView: View {
    @State var isAMF: Bool = false
    var body: some View {
        ZStack {
            if isAMF {
                AMFView()
            }
            VStack {
                Button {
                    isAMF.toggle()
                } label: {
                    Text("여기를 눌러봐")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
