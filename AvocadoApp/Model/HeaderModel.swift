//
//  HeaderModel.swift
//  AvocadoApp
//
//  Created by Sandeep Maurya on 11/07/23.
//

import SwiftUI

// MARK: - HEADER MODEL

struct Header: Identifiable{
    var id = UUID()
    var image: String
    var headline: String
    var subheadline: String  
}
