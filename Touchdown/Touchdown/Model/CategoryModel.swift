//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Filipe Boeck on 11/10/23.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
