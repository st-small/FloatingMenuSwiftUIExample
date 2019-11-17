//
//  FloatingMenu.swift
//  FloatingMenuSwiftUIExample
//
//  Created by Станислав Шияновский on 11/17/19.
//  Copyright © 2019 Станислав Шияновский. All rights reserved.
//

import SwiftUI

public struct FloatingMenu: View {
    
    @State var showMenuItem1 = false
    @State var showMenuItem2 = false
    @State var showMenuItem3 = false
    
    public var body: some View {
        VStack {
            Spacer()
            if showMenuItem1 {
                MenuItem(icon: "camera.fill")
            }
            if showMenuItem2 {
                MenuItem(icon: "photo.on.rectangle")
            }
            if showMenuItem3 {
                MenuItem(icon: "square.and.arrow.up.fill")
            }
            Button(action: {
                self.showMenu()
            }) {
                Image(systemName: "plus.circle.fill")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .foregroundColor(Color(red: 153/255, green: 102/255, blue: 255/255))
                    .shadow(color: .gray, radius: 0.2, x: 1, y: 1)
            }
        }
    }
    
    public func showMenu() {
        withAnimation {
            showMenuItem3.toggle()
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            withAnimation {
                self.showMenuItem2.toggle()
            }
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            withAnimation {
                self.showMenuItem1.toggle()
            }
        }
    }
}

public struct MenuItem: View {
    public var icon: String
    public var body: some View {
        ZStack {
            Circle()
                .foregroundColor(Color(red: 153/255, green: 102/255, blue: 255/255))
                .frame(width: 55, height: 55)
            Image(systemName: icon)
                .imageScale(.large)
                .foregroundColor(.white)
        }
        .shadow(color: .gray, radius: 0.2, x: 1, y: 1)
    }
}
