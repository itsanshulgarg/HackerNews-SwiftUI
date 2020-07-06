//
//  ContentView.swift
//  Hacker News
//
//  Created by Anshul Garg on 05/07/20.
//  Copyright © 2020 Anshul Garg. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    ZStack{
                        HStack {
                        Text(String(post.points))
                        Text(post.title)
                        }.padding([.leading, .top, .bottom], 5)
                            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .leading)
                    }
                    
                }
                }
            .navigationBarTitle("HACKER NEWS")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
