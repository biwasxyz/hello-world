//
//  Post.swift
//  hello-world
//
//  Created by Biwas Bhandari on 06/05/2025.
//

struct Post: Codable, Identifiable {
    let id: Int
    let userId: Int
    let title: String
    let body: String
}
