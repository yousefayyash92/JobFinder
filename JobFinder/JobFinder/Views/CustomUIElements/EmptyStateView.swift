//
//  EmptyStateView.swift
//  JobFinder
//
//  Created by Yousef Ayyash on 11/07/2021.
//

import SwiftUI

struct EmptyStateView: View {
  var body: some View {
    VStack {
      Spacer()
      Image(systemName: "briefcase.fill")
        .font(.system(size: 85))
        .padding(.bottom)
      Text("Start searching for a Job...")
        .font(.title)
      Spacer()
    }
    .padding()
    .foregroundColor(Color(.systemBlue))
  }
}
