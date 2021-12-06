//
//  ContentView.swift
//  MilestoneProject_13_15
//
//  Created by Giovanni Gaffé on 2021/12/6.
//

import SwiftUI

struct ContentView: View {
    @State private var image: Image?
    @State private var showingImagePicker = false
    @State private var inputImage: UIImage?
    
    var users: [User]
    
    var body: some View {
        NavigationView {
            List(users, id: \.id) { user in
                Text(user.name)
                
            }
            .navigationTitle(Text("Friend list"))
            
            .toolbar {
                Button {
                    // when tapped
                    self.showingImagePicker = true
                    
                } label: {
                    Image(systemName: "plus")
                    
                }
                .sheet(isPresented: $showingImagePicker, onDismiss: loadImage) {
                    ImagePicker(image: self.$inputImage)
                }
            }
        }
    }
    
    func loadImage() {
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(users: User.dumbUsers)
    }
}
