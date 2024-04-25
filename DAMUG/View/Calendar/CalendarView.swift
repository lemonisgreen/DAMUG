//
//  SwiftUIView.swift
//  DAMUG
//
//  Created by JIN LEE on 4/12/24.
//

import SwiftUI

struct CalendarView: View {
    @Binding var damugItems: [DamugItem]
    
    var body: some View {
        NavigationStack{
            
            
            /// DatePicker - 날짜 중 하나를 선택하는 친구
            ///
            /// 날짜를 선택할 때는 DatePicker를 사용할 수 있습니다.
            /// date picker style을 .graphical로 선택하면 달력이 표시됩니다.
            ///
            ///
            VStack(alignment: .leading) {
                
                CalendarContentView()
                
                Divider()
                
                HStack(alignment: .center, spacing: 1) {
                    Text("냉장고")
                        .font(.title)
                        .fontWeight(.semibold)
                    Image("냉장고아이콘")
                        .resizable()
                        .frame(width: 15, height: 25)
                        .padding(5)
                }
                    .padding (.leading, 16)
                    .padding (.top, 1)
                    .padding (.bottom, 1)
                
                List(damugItems) { item in
                    
                        
                        HStack {
                            Text(item.itemName)
                                .font(.title2)
                                .fontWeight(.semibold)
                                .padding(.bottom, 3)
                            Spacer()
//                            Text(item.itemType)
                            Text(item.itemAmount)
                            Text("\(item.itemDate.format("YYYY. M. d")) 까지")
                    }
                }.listStyle(.plain)
                
//                FridgeListContentsView()
                
            }  .accentColor(.yellow)
                .toolbar {
                    ToolbarItemGroup(placement: .topBarLeading) {
                        Text("식단표🥣")
                            .font(.title)
                            .fontWeight(.semibold)
                    }
                }
            
            
            /// 뷰들 중 크기를 지정해주지 않으면 꽉 채우는 경우가 있습니다.
            /// 이런 뷰들은 "레이아웃 중립 (Layout Neutral)"이라고 지칭합니다.
            /// 레이아웃 중립인 뷰들은 자체적으로 크기나 위치를 결정하지 않습니다.
            /// Spacer, Divider, Group, Color 등의 뷰들은 모두 레이아웃 중립입니다.
            /// 위의 예시에서는 TextEditor, Toggle, Picker, DatePicker도 레이아웃 중립인 것을 확인할 수 있습니다.
        }
    }
}
#Preview {
    CalendarView(damugItems: .constant([DamugItem(itemName: "감자🥔", itemType: "구황작물", itemAmount: "1박스", itemDate: .now, isEditable: false),
                                        DamugItem(itemName: "체리🍒", itemType: "과일", itemAmount: "1통", itemDate: .now, isEditable: false)]))
}
