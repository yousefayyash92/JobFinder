//
//  JobView.swift
//  JobFinder
//
//  Created by Yousef Ayyash on 11/07/2021.
//

import SwiftUI

struct JobView: View {
  @ObservedObject var job: JobViewModel
  var body: some View {
    VStack {
        HStack {
            VStack( alignment: .leading) {
            HStack {
                Text(job.title)
                    .font(.title2)
                    .foregroundColor(Color(.systemBlue))
                }
            HStack {
                Text((job.salary == "") ? "Salary: N/A" :"Salary: \(job.salary)")               .font(.footnote)
                    .foregroundColor(Color(.black))
                Spacer()
                Text((job.location == "") ? "Location: N/A" :"Location: \(job.location)")
                    .font(.footnote)
                    .foregroundColor(Color(.black))
                Spacer()
                Text((job.jobType == "") ? "Job Type: N/A" :"Job Type: \(job.jobType)")
                    .font(.footnote)
                    .foregroundColor(Color(.black))
            }
            }
        }
    }
  }
}
