//
//  TrolleyView.swift
//  DAMUG
//
//  Created by JIN LEE on 4/12/24.
//

import SwiftUI

struct TrolleyView: View {
    
    @State var shoppingList = [
        Trolley(itemText: "양파🧅"),
        Trolley(itemText: "복숭아🍑"),
        Trolley(itemText: "딸기🍓"),
        Trolley(isClicked: true, itemText: "동글동글 귀여운 겨-란🥚"),
        Trolley(itemText: "레모니👀🍋"),
        Trolley(itemText: "독버섯🍄"),
        Trolley(itemText: "고구미🍠")
    ]
    
    @Binding var damugItems: [DamugItem]
    @State var showSheet = false
//    @State var isSheetAppear: Bool = false
    
    var body: some View {
        
        //var sortedShoppingList = shoppingList.sort(by: {(trolley -> Bool in return !trolley.isClicked})

        
        
        NavigationStack {
            VStack{
                TrolleyListView(shoppingList: $shoppingList, damugItmes: $damugItems, currentItemText: "")
                    .padding(.top, 16)
                
            }
            .toolbar(content: {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        showSheet = true
                    } label: {
                        Image(systemName: "plus")
                            .resizable()
                            .frame(width: 25, height: 25)
                    }
                }
            })
            .sheet(isPresented: $showSheet, content: {
                TrolleyModalView(showSheet: $showSheet, shoppingList: $shoppingList, textName: "")
            })
            .toolbar {
                ToolbarItemGroup(placement: .topBarLeading) {
                        Text("장바구니🛒")
                            .font(.title)
                            .fontWeight(.semibold)
                }
            }
        }
    }
}

//#Preview {
//    TrolleyView()
//}
