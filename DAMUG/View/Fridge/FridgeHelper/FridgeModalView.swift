//
//  FridgeModalView.swift
//  DAMUG
//
//  Created by JIN LEE on 4/15/24.
//

import SwiftUI

struct FridgeModalView: View {
    
    @Environment(\.dismiss) var dismiss
    @Binding var showSheet: Bool
    @Binding var damugItems: [DamugItem]
    @State var itemName: String
    @State var itemType: String = ""
    @State var itemAmount: String = ""
    @State private var itemDate: Date = .now
    //    @State private var datePickerSelection: Date = .now
    @State var isEditable: Bool
    
    
    var body: some View {
        
        NavigationStack{
            
            VStack (alignment: .center) {
                List{
                    if isEditable {
                        TextField("음식물의 이름을 입력하세요",
                                  text: $itemName)
                    } else {
                        Text("\(itemName)")
                    }
                    TextField("음식의 종류를 입력하세요",
                              text: $itemType)
                    TextField("음식물의 양을 입력하세요",
                              text: $itemAmount)
                    DatePicker("유통기한", selection: $itemDate, displayedComponents: .date)
                        .datePickerStyle(.compact)
                    //                            Text("현재 Date Picker 값 : \(datePickerSelection)")
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
                        showSheet = false
                        print ("저장")
                        damugItems.append(DamugItem(itemName: itemName,
                                                    itemType: itemType,
                                                    itemAmount: itemAmount,
                                                    itemDate: itemDate,
                                                    isEditable: isEditable))
                    } label: {
                        Text("완료")
                            .bold()
                    }
                }
            }).navigationTitle("음식물 추가")
        }
    }
}

//    #Preview {
//        FridgeModalView(showSheet: .constant(true))
//    }





//isSheetAppear: .constant(true)

//Button {
////                    showSheet = false
////                } label: {
////                    Text("저장")
////                }

//        VStack{
//            Text("시트 닫기")
//                .padding()
//            Button("isSheetAppear = true") {
//                isSheetAppear = false // isSheetAppear를 false로 만들어 시트를 닫음
//            }
//            .padding()
//            Button("dismiss") {
//                dismiss() // dismiss 방식으로 시트를 닫음
//            }
//        }
//        .sheet(isPresented: $showSheet, content: {
