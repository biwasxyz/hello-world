//
//  ContentView.swift
//  hello-world
//
//  Created by Biwas Bhandari on 06/05/2025.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = PostViewModel()

    var body: some View {
        NavigationStack {
            List(viewModel.posts) { post in
                PostRow(post: post)
            }
            .navigationTitle("AppleMedia Feed")
            .onAppear {
                viewModel.fetchPosts()
            }
        }
    }   
}

#Preview {
    ContentView()
}
