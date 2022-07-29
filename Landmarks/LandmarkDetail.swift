//
//  ContentView.swift
//  Landmarks
//
//  Created by 桝谷希映 on 2022/07/28.
//

import SwiftUI

struct LandmarkDetail: View {
    @EnvironmentObject var userData: UserData // 環境オブジェクトの定義
    var landmark: Landmark
    
    var landmarkIndex: Int { // 今表示している観光地オブジェクトのインデックスを計算するプロパティを用意
        userData.landmarks.firstIndex(where: {$0.id == landmark.id})!
    }
    
    var body: some View {
        VStack {
            MapView(coordinate: landmark.locationCoordinate)
              .frame(height: 300)
              .edgesIgnoringSafeArea(.top)
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
               HStack {
                   Text(landmark.name)
                       .font(.title)
                   Button(action: {
                         // isFavoriteを切り替える
                       self.userData.landmarks[self.landmarkIndex].isFavorite.toggle()
                   }) {
                         //もしお気に入りならば
                       if self.userData.landmarks[self.landmarkIndex].isFavorite {
                           Image(systemName: "star.fill")
                               .foregroundColor(.yellow)
                       } else {
                           Image(systemName: "star")
                               .foregroundColor(.gray)
                       }
                   }
                }
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


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarkData[0])
            .environmentObject(UserData())
    }
}
