//
//  HomeView.swift
//  Monplan
//
//  Created by 梅澤遼 on 2026/09/20.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(spacing: 0) {
            Text("今月の収支")
                .font(.title)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 32)
            Rectangle()
                .frame(maxWidth: .infinity)
                .frame(height: 300)
                .padding()
        }
    }
}

#Preview {
    HomeView()
}
