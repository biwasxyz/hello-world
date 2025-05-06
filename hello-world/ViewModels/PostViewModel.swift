//
//  PostViewModel.swift
//  hello-world
//
//  Created by Biwas Bhandari on 06/05/2025.
//

import Foundation

class PostViewModel: ObservableObject {
    @Published var posts: [Post] = []

    func fetchPosts() {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else { return }

        URLSession.shared.dataTask(with: url) { data, _, _ in
            if let data = data {
                if let decoded = try? JSONDecoder().decode([Post].self, from: data) {
                    DispatchQueue.main.async {
                        self.posts = decoded
                    }
                }
            }
        }.resume()
    }
}
