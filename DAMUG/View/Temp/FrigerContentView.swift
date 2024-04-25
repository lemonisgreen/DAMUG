//
//  FrigerContentView.swift
//  DAMUG
//
//  Created by JIN LEE on 4/13/24.
//  리펙토링이 뭔지 물어보기

import SwiftUI

struct FrigerContentView: View {
    var body: some View {
        
        Image("빈냉장고1")
            .resizable()
            .aspectRatio(contentMode: .fit)
        //            .frame(width: 850, height: 800)
        //            .offset(x:12, y:10)
    }
}

#Preview {
    FrigerContentView()
}
