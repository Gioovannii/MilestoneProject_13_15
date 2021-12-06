//
//  PhotoDetailView.swift
//  MilestoneProject_13_15
//
//  Created by Giovanni Gaffé on 2021/12/6.
//

import SwiftUI

struct PhotoDetailView: View {
    let image: Image
    
    var body: some View {
        VStack {
            image
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()

        }
    }
}

struct PhotoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoDetailView(image: Image("sobhan"))
    }
}
