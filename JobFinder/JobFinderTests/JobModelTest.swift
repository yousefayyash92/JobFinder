//
//  JobModelTest.swift
//  JobFinderTests
//
//  Created by Yousef Ayyash on 13/07/2021.
//

import XCTest
@testable import JobFinder

class JobModelTest: XCTestCase {   

    let job1 = Job(id: 1, title: "dev", companyName: "google", category: "software", postdate: "11-11-2012", location: "Amman", salary: "20k", jobType: "FullTime")
    func testJobIsNotEmpty() {
        XCTAssertTrue(!(job1.title.isEmpty))
        XCTAssertTrue(!(job1.category.isEmpty))
        XCTAssertTrue(!(job1.companyName.isEmpty))
        XCTAssertTrue(!(job1.postdate.isEmpty))
    }
    func testJobResponseIsNotEmpty() {
        let theJobs = JobResponse(jobs: [job1])
        XCTAssert(!(theJobs.jobs.isEmpty))
    }


}
