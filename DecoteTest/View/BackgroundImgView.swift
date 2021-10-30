//
//  BackgroundImgView.swift
//  DecoteTest
//
//  Created by Maxim Mitin on 30.10.21.
//

import SwiftUI

struct BackgroundImgView: View {
    var body: some View {
        Image("rocket")
            .antialiased(true)
            .resizable()
            .scaledToFill()
            .ignoresSafeArea(.all)
    }
}

struct BackgroundImgView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundImgView()
    }
}
