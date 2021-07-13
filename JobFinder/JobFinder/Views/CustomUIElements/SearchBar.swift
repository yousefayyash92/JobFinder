//
//  SearchBar.swift
//  JobFinder
//
//  Created by Yousef Ayyash on 11/07/2021.
//

import SwiftUI

struct SearchBar: UIViewRepresentable {
  typealias UIViewType = UISearchBar
  @Binding var searchTerm: String

  func makeUIView(context: Context) -> UISearchBar {
    let searchBar = UISearchBar(frame: .zero)
    searchBar.delegate = context.coordinator
    searchBar.searchBarStyle = .minimal
    searchBar.placeholder = "Type a job title, category, location..."
    return searchBar
  }
  func updateUIView(_ uiView: UISearchBar, context: Context) {
  }
  func makeCoordinator() -> SearchBarCoordinator {
    return SearchBarCoordinator(searchTerm: $searchTerm)
  }
  class SearchBarCoordinator: NSObject, UISearchBarDelegate {
    @Binding var searchTerm: String
    init(searchTerm: Binding<String>) {
      self._searchTerm = searchTerm
    }
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
      searchTerm = searchBar.text ?? ""
      UIApplication.shared.windows.first { $0.isKeyWindow }?.endEditing(true)
    }
  }
}
