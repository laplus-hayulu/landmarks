//
//  CircleImage.swift
//  Landmarks
//
//  Created by 桝谷希映 on 2022/07/29.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        image
          .clipShape(Circle())
          .overlay(
            Circle().stroke(Color.white, lineWidth: 4))
          .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
