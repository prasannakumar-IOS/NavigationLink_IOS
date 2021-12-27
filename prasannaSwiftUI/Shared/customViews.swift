//
//  customViews.swift
//  prasannaSwiftUI
//
//  Created by Prasannakumar Manikandan on 23/12/21.
//

import SwiftUI

struct OvalTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(10)
            .background(.yellow)
            .cornerRadius(5)
    }
}

struct personDetails {
        var name: String
        var password: String
    }

