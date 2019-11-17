//
//  ContentView.swift
//  FloatingMenuSwiftUIExample
//
//  Created by Станислав Шияновский on 11/17/19.
//  Copyright © 2019 Станислав Шияновский. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            Rectangle()
                .foregroundColor(.clear)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            FloatingMenu()
                .padding()
        }
    }
}
