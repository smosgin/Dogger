//
//  ContentView.swift
//  Dogger
//
//  Created by Seth Mosgin on 11/1/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var imageId = UUID()
    
    @State var doggoImage = AsyncImage(url: URL(string: "https://place.dog/300/200"))
    
    var body: some View {
        VStack {
            doggoImage
                .id(imageId)
                .imageScale(.large)
                .foregroundStyle(.tint)
                .frame(width: 300, height: 200)
            LikeAndDislikeTray(imageId: $imageId)
        }
        .padding()
    }
}

struct LikeAndDislikeTray: View {
    @Binding var imageId: UUID
    
    var body: some View {
        HStack {
            Button("Like") {
                //perform the like action
                
                //refresh the image
                imageId = UUID()
            }
            Spacer()
            Button("Dislike") {
                //perform the dislike action
                
                //refresh the image
                imageId = UUID()
            }
        }
    }
}

#Preview {
    ContentView()
}
