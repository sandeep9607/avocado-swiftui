//
//  FactsModel.swift
//  AvocadoApp
//
//  Created by Sandeep Maurya on 11/07/23.
//

import SwiftUI

struct Fact: Identifiable{
    var id = UUID()
    var image: String
    var content: String
}
