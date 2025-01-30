//
//  ContentView.swift
//  SwiftTestExampleYeniKutuphaneIOS
//
//  Created by Eren Elçi on 30.01.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, world!")
        }
        .padding()
        .onAppear() {
            // Grading.shared.isAvailable = true
        }
    }
}

#Preview {
    ContentView()
}
