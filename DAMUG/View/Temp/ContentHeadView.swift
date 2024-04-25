//
//  ContentHeadView.swift
//  DAMUG
//
//  Created by JIN LEE on 4/13/24.
//

import SwiftUI

struct ContentHeadView: View {
    var body: some View {
        
        NavigationStack {
            
            HStack(alignment: .center, spacing: 1) {
                Text("냉장고")
                    .font (.title)
                
                Image("냉장고아이콘")
                    .resizable()
                    .frame(width: 15, height: 25)
                    .padding(5)
                
                Spacer()
                
                
//                NavigationLink(destination: FridgeListView()) {
//
//                    Button {
//                        print("냉장고 리스트")
//                    } label: {
//                        Image(systemName: "text.justify")
//                            .resizable()
//                            .frame(width: 25, height: 25)
//                    }
//                }
            }.padding()
        }.frame(height: 30)
        .navigationTitle("네비게이션 링크 전환")
    }
}
#Preview {
    ContentHeadView()
}
