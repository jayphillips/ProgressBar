//
//  ContentView.swift
//  ProgressBar
//
//  Created by Jay Phillips on 11/29/19.
//  Copyright © 2019 Jay Phillips. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            AudioBookCell()
            AudioBookCell()
            AudioBookCell()
        }
       
    }
}

struct AudioBookCell: View {
    var body: some View {
        VStack {
             Image("sample1")
            ProgressView(progressPercent: 0.2)
        }
        .frame(width: 200)
    }
}

struct ProgressView: View {
    var progressPercent = 1.0
    var body: some View {
        ZStack {
            GeometryReader { geo in
                Rectangle()
                    .fill(Color.gray)
                    .frame(height: 5)
                Rectangle()
                    .fill(Color.orange)
                    .frame(width: geo.size.width * CGFloat(self.progressPercent), height: 5)
                
            }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
