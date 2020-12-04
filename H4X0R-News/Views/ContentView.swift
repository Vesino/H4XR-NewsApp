//
//  ContentView.swift
//  H4X0R-News
//
//  Created by Luis Vargas on 12/2/20.
//  Copyright © 2020 Luis Vargas. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            }
            .navigationBarTitle("H4X0R Noticias!")
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

/*
 var posts = [
 Post(id: "1", title: "Hola"),
 Post(id: "2", title: "Hello"),
 Post(id: "3", title: "Bounjour")
 ]
 */
