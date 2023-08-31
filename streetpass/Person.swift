//
//  Person.swift
//  streetpass
//
//  Created by Frank Dulko on 8/22/23.
//

import Foundation
import UIKit
import SwiftUI

struct Person: Identifiable {
    var id: Int
    var name: String
    var date: String
    var time: String
    var encounters: String
    var picture: String
    var color: Color
}

var sampleNew : [Person] = [
    Person(id: 1, name: "Charlie", date: "5/6/2023", time: "12:08pm", encounters: "2", picture: "sample2", color: .blue),
    Person(id: 2, name: "Sarah", date: "5/6/2023", time: "12:01pm", encounters: "1", picture: "sample3", color: .red),
    Person(id: 3, name: "Charlie", date: "5/6/2023", time: "11:08am", encounters: "1", picture: "sample4", color: .green),
]

var sampleAll : [Person] = [
    Person(id: 4, name: "Steven", date: "5/6/2023", time: "12:08pm", encounters: "2", picture: "sample2", color: .pink),
    Person(id: 5, name: "Kevin", date: "5/6/2023", time: "12:01pm", encounters: "1", picture: "sample5", color: .purple),
    Person(id: 6, name: "Josh", date: "10/6/2023", time: "11:08am", encounters: "1", picture: "sample1", color: .green),
    Person(id: 7, name: "Krista", date: "1/6/2023", time: "12:08pm", encounters: "2", picture: "sample5", color: .cyan),
    Person(id: 8, name: "Matt", date: "3/8/2023", time: "12:01pm", encounters: "1", picture: "sample3", color: .red),
    Person(id: 9, name: "Devon", date: "3/6/2023", time: "11:08am", encounters: "1", picture: "sample4", color: .green),
    Person(id: 1, name: "Charlie", date: "5/6/2023", time: "12:08pm", encounters: "2", picture: "sample2", color: .blue),
    Person(id: 2, name: "Sarah", date: "5/6/2023", time: "12:01pm", encounters: "1", picture: "sample3", color: .red),
    Person(id: 3, name: "Charlie", date: "5/6/2023", time: "11:08am", encounters: "1", picture: "sample4", color: .green),
]


