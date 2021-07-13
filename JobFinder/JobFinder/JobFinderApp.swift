//
//  JobFinderApp.swift
//  JobFinder
//
//  Created by Yousef Ayyash on 11/07/2021.
//

import SwiftUI

@main
struct JobFinderApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: JobListViewModel())
        }
    }
}
