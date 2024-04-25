//
//  FridgeItemListView.swift
//  DAMUG
//
//  Created by JIN LEE on 4/17/24.
//
//
//import SwiftUI
//
//struct FridgeItemListView: View {
//    
//    @State var damugItems: [DamugItem] = [
//        DamugItem(itemName: "감자🥔", itemType: "구황작물", itemAmount: "1박스", itemDate: .now, isEditable: false),
//        DamugItem(itemName: "체리🍒", itemType: "과일", itemAmount: "1통", itemDate: .now, isEditable: false)
//    ]
//    
//    @State var showSheet: Bool = false
//    
//    var body: some View {
//        VStack {
//            List {
//                ForEach(damugItems) { damugItems in
//                    HStack {
//                        Text(damugItems.itemName)
//                        Spacer()
//                        Text(damugItems.itemType)
//                    }
//                }
//                
//                Button {
//                    showSheet = true
//                } label: {
//                    HStack {
//                        Image(systemName: "plus.circle")
//                        Text("러너 추가하기")
//                    }
//                }
//            }
//        }
//        .sheet(isPresented: $showSheet) {
//            // 현재 화면에 속하는 하위 뷰인 RegisterSheet에 learners와 showSheet를 Binding으로 전달하여
//            // 하위 뷰인 RegisterSheet에서도 learners와 showSheet 값을 수정할 수 있도록 합니다.
//            
////            FridgeModalView (damugItems: $damugItems, showSheet: $showSheet)
//        }
//    }
//}
//
//
//#Preview {
//    FridgeItemListView()
//}
