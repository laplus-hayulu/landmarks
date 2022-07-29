//
//  ContentView.swift
//  Landmarks
//
//  Created by 桝谷希映 on 2022/07/28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
              .frame(height: 300)
              .edgesIgnoringSafeArea(.top)
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
          VStack(alignment: .leading) {
            Text("Turtle Rock")
              .font(.title)
            HStack {
              Text("Joshua Tree National Park")
                .font(.subheadline)
          
              Spacer()
            
          
              Text("California")
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
        ContentView()
    }
}
