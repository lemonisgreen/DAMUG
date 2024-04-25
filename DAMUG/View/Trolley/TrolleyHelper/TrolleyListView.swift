//
//  TrolleyListView.swift
//  DAMUG
//
//  Created by JIN LEE on 4/13/24.
//

// 선택한 녀석이 출력되도록 하는 것
// 선택한 녀석을 변수에 담아줍니다
// 그 녀석과 모달의 바인딩 변수와 묶습니다

import SwiftUI

struct Trolley: Identifiable, Equatable{
    var id: UUID = UUID()
    var isClicked: Bool = false
    var itemText: String
}
struct TrolleyListView: View {
    
    @Binding var shoppingList: [Trolley]
    @Binding var damugItmes: [DamugItem]
    
    @State var showSheet: Bool = false
    @State var currentItemText: String
    
    var body: some View {
        
        NavigationStack{
            ScrollView {
                VStack{
                    ForEach(shoppingList.indices, id: \.self) { index in
                        HStack {
                            Button(action: {
                                
                                shoppingList[index].isClicked.toggle()
                                print(shoppingList)
                                
                                currentItemText = shoppingList[index].itemText
                                
                                showSheet = true
                                
                            }, label: {
                                if shoppingList[index].isClicked {
                                    Image(systemName: "checkmark.circle.fill")
                                    
                                }else {
                                    Image(systemName: "circle")
                                }
                            })
                            .frame(height: 25)
                            
                            Text(shoppingList[index].itemText)
                            Spacer()
                        }
                    }.padding (.leading, (16))
                }
                .sheet(isPresented: $showSheet) {
                    FridgeModalView(showSheet: $showSheet, damugItems: $damugItmes, itemName: currentItemText, isEditable: false)
                }
            }
        }
        .onAppear {
            shoppingList = shoppingList.sorted(by: {trolley1, trolley2 -> Bool in return trolley1.isClicked != true})
            //onAppear -> 화면이 떴을 때 한 번만, 바로 화면을 그려주는 녀석
        }
        .onChange(of: shoppingList) { newValue in
            shoppingList = shoppingList.sorted(by: {trolley1, trolley2 -> Bool in return trolley1.isClicked != true})
            //onChange -> of의 값이 바뀌면, 화면을 다시 그려준다.
        }
    }
}

//#Preview {
//    TrolleyListView(currentItemText: "")
//}
