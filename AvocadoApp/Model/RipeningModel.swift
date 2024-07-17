//
//  RipeningModel.swift
//  AvocadoApp
//
//  Created by Sandeep Maurya on 13/07/23.
//

import SwiftUI

// MARK: -

struct Ripening: Identifiable{
    var id = UUID()
    var image: String
    var stage: String
    var title: String
    var description: String
    var ripeness: String
    var instruction: String
}
