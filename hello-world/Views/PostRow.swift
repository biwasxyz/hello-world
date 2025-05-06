//
//  PostRow.swift
//  hello-world
//
//  Created by Biwas Bhandari on 06/05/2025.
//

import SwiftUI

struct PostRow: View {
    let post: Post

    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text(post.title.capitalized)
                .font(.headline)
            Text(post.body)
                .font(.subheadline)
                .foregroundColor(.gray)
        }
        .padding(.vertical, 8)
    }
}

