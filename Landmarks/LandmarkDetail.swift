//
//  ContentView.swift
//  Landmarks
//
//  Created by 桝谷希映 on 2022/07/28.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    var body: some View {
        VStack {
            MapView(coordinate: landmark.locationCoordinate)
              .frame(height: 400)
              .edgesIgnoringSafeArea(.top)
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
          VStack(alignment: .leading) {
              Text(landmark.name)
              .font(.title)
            HStack {
                Text(landmark.park)
                .font(.subheadline)
          
              Spacer()
            
          
                Text(landmark.state)
                .font(.subheadline)
            }
          }
          .padding()
            
          Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarkData[0])
    }
}
