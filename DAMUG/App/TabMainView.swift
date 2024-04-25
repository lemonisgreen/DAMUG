//
//  TabMainView.swift
//  DAMUG
//
//  Created by JIN LEE on 4/12/24.
//

import SwiftUI

struct TabMainView: View {
    @State private var selectionIndex: Int = 1
    
    @State var damugItems: [DamugItem] = [
        DamugItem(itemName: "감자🥔", itemType: "구황작물", itemAmount: "1박스", itemDate: .now, isEditable: false),
        DamugItem(itemName: "체리🍒", itemType: "과일", itemAmount: "1통", itemDate: .now, isEditable: false)
    ]
    
    var body: some View {
        TabView(selection: $selectionIndex) {
            CalendarView(damugItems: $damugItems) // 첫 번째 탭 화면
                .tabItem { // 탭바 버튼으로 등록
                    Image(systemName: "calendar")
                    Text("식단표")
                }
                .tag(0)
            
            FridgeListView(damugItems: $damugItems) // 두 번째 탭 화면
                .tabItem { // 탭바 버튼으로 등록
                    Image(systemName: "refrigerator")
                    Text("냉장고")
                }
                .tag(1)
            
            TrolleyView(damugItems: $damugItems) // 두 번째 탭 화면
                .tabItem { // 탭바 버튼으로 등록
                    Image(systemName: "cart")
                    Text("장바구니")
                }
                .tag(2)
        }
        .accentColor(.yellow)
    }
}
//🍑
#Preview {
    TabMainView()
}
