//
//  ContentView.swift
//  JobFinder
//
//  Created by Yousef Ayyash on 11/07/2021.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel: JobListViewModel
    var body: some View {
      NavigationView {
        VStack {
          SearchBar(searchTerm: $viewModel.searchTerm)
          if viewModel.jobs.isEmpty {
            EmptyStateView()
          } else {
            List(viewModel.jobs) { job in
                NavigationLink(destination: JobDetailView(job: job)) {
                JobView(job: job)
            }
            }
            .listStyle(PlainListStyle())
          }
        }
        .navigationBarTitle("Job Finder")
      }
    }
}
