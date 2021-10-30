//
//  HideKboardExtension.swift
//  DecoteTest
//
//  Created by Maxim Mitin on 30.10.21.
//

import SwiftUI

#if canImport(UIkit)
extension View {
    func hideKboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif
