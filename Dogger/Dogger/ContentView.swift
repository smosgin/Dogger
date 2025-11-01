//
//  ContentView.swift
//  Dogger
//
//  Created by Seth Mosgin on 11/1/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(.doggo)
                .imageScale(.large)
                .foregroundStyle(.tint)
            LikeAndDislikeTray()
        }
        .padding()
    }
}

struct LikeAndDislikeTray: View {
    var body: some View {
        HStack {
            Button("Like") {
                //perform the like action
            }
            Spacer()
            Button("Dislike") {
                //perform the dislike action
            }
        }
    }
}

#Preview {
    ContentView()
}
