//
//  ContentHead.swift
//  DAMUG
//
//  Created by JIN LEE on 4/13/24.
//

import Foundation



HStack(alignment: .center, spacing: 1) {
    Text("냉장고")
        .font (.title)
    
    Image("냉장고아이콘")
        .resizable()
        .frame(width: 15, height: 25)
        .padding(5)
    
    Spacer()
    Button {
        print("냉장고 열기")
    } label: {
        Image(systemName: "plus.app")
            .resizable()
            .frame(width: 25, height: 25)
        
    }
}.padding()
}
}
