//
//  ContentView.swift
//  PlayStack
//
//  Created by 樋川大聖 on 2022/02/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            LazyVStack(alignment: .leading) {
                VStack {
                    ForEach(0..<10, id: \.self) { i in
                        Text("Section1-\(i)")  // ここでブレークポイントを貼ると毎回停止する。
                            .frame(height: 50)
                    }
                    .frame(maxWidth: .infinity)
                    .background(.blue.opacity(0.2))
                }
                VStack {
                    ForEach(0..<1) { i in
                        Text("jjjj")
                    }
                }

                VStack {
                    ForEach(10..<20, id: \.self) { i in
                        Text("Section2-\(i)")
                            .frame(height: 50)
                    }
                    .frame(maxWidth: .infinity)
                    .background(.red.opacity(0.2))
                }

                VStack {
                    ForEach(20..<30, id: \.self) { i in
                        Text("Section3-\(i)")
                            .frame(height: 50)
                    }
                    .frame(maxWidth: .infinity)
                    .background(.green.opacity(0.2))
                }

                VStack {
                    ForEach(30..<39, id: \.self) { i in
                        Text("Section4-\(i)")
                            .frame(height: 50)
                    }
                    .frame(maxWidth: .infinity)
                    .background(.yellow.opacity(0.2))
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
