//
//  ContentView.swift
//  H4X0R-News
//
//  Created by Luis Vargas on 12/2/20.
//  Copyright © 2020 Luis Vargas. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(posts) { post in
                Text(post.title)
            }
            .navigationBarTitle("H4X0R News")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Post: Identifiable {
    var id: String
    var title: String
}

var posts = [
    Post(id: "1", title: "Hola"),
    Post(id: "2", title: "Hello"),
    Post(id: "3", title: "Bounjour")
]
