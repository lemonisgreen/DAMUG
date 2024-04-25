//
//  TrolleyModalView.swift
//  DAMUG
//
//  Created by JIN LEE on 4/17/24.
//

import SwiftUI

struct TrolleyModalView: View {
    
    @Binding var showSheet: Bool
    @Binding var shoppingList: [Trolley]
    @State var textName: String
    @State private var text: String = ""
    
    var body: some View {
        
        NavigationStack{
            
            VStack (alignment: .center) {
                List{
                        TextField("음식물의 이름을 입력하세요",
                        text: $text)
                    }
            }
            .toolbar(content: {
                ToolbarItemGroup(placement: .topBarLeading) {
                    Button {
                        showSheet = false
                        print ("닫기")
                    } label: {
                        Text("닫기")
                    }
                }
            })
            .toolbar(content: {
                ToolbarItemGroup(placement: .topBarTrailing) {
                    Button {
                        shoppingList.append(Trolley(itemText: text))
                        showSheet = false
                    } label: {
                        Text("완료")
                            .bold()
                    }
                }
            }).navigationTitle("음식물 추가")
        }
    }
}
//
//#Preview {
//    TrolleyModalView()
//}
