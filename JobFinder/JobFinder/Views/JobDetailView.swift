//
//  JobDetailView.swift
//  JobFinder
//
//  Created by Yousef Ayyash on 11/07/2021.#imageLiteral(resourceName: "backgroundDetail.jpeg")
//
import SwiftUI

struct JobDetailView: View {
    @ObservedObject var job: JobViewModel
        var body: some View {
        ScrollView {
            Image("background")
                .frame(minWidth: 300, maxHeight: 420)
                .offset(y: -200)
            VStack(alignment: .center) {
                    Text(job.title)
                        .font(.title)
                        .foregroundColor(.black)
                Text("\(job.companyName)")
                    .font(.title2)
                    .foregroundColor(.blue.opacity(70.00))
                }
                VStack(alignment: .leading) {
                Spacer()
                VStack(alignment: .leading) {
                    Text((job.category == "") ? "Job Category: N/A" :"Job Category: \(job.category)")
                        Spacer()
                        Text((job.location == "") ? "Location: N/A" :"Location: \(job.location)")
                        Spacer()
                    Text((job.salary == "") ? "Salary: N/A" :"Salary: \(job.salary)")
                        Spacer()
                    Text((job.jobType == "") ? "Job Type: N/A" :"Job Type: \(job.jobType)")
                        Spacer()
                }.font(.headline)
                 .foregroundColor(.black)
                Spacer()
                    Button(action: { }) {
                        HStack {
                            Image(systemName: "paperplane.fill")
                                .font(.title)
                            Text("Apply")
                                .fontWeight(.semibold)
                                .font(.title)
                        }
                        .frame(minWidth: 0, maxWidth: .infinity, maxHeight: 15)
                        .padding()
                        .foregroundColor(.white)
                        .background(Color(.blue))
                        .cornerRadius(40)
                    }
                Spacer()
                Divider()
                Text("This job was posted at \(job.postdate)")
             .font(.subheadline)
             .foregroundColor(.secondary)
            }.padding()
            Spacer()
        } .navigationTitle(job.title)
        .navigationBarTitleDisplayMode(.inline)
    }
}
