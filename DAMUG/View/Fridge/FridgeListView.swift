//
//  FrigerListView.swift
//  DAMUG
//
//  Created by JIN LEE on 4/14/24.
//

import SwiftUI

struct DamugItem: Identifiable, Equatable {
    let id: UUID = UUID()
    let itemName: String
    let itemType: String
    let itemAmount: String
    let itemDate: Date
    let isEditable: Bool
}

struct FridgeListView: View {
    
//    @Environment(\.dismiss) var dismiss
    
    @State var showSheet = false
    @Binding var damugItems: [DamugItem]

    var body: some View{
        
        NavigationStack{
            
            List {
                ForEach(damugItems) { item in
                    VStack(alignment: .leading){
                        Text(item.itemName)
                            .font(.title2)
                            .fontWeight(.semibold)
                            .padding(.bottom, 3)
                        HStack{
                            Text(item.itemType)
                            Spacer()
                            Text(item.itemAmount)
                            Text("\(item.itemDate.format("YYYY년 M월 d일")) 까지")
                        }
                    }.swipeActions(edge: .trailing) {
                        Button(role: .destructive) {
                            guard let index = damugItems.firstIndex(where: { $0 == item }) else {
                                return
                            }
                            damugItems.remove(at: index)
                        } label: {
                            Image("trash.circle")
                                .tint(.red)
                        }
                    }
                }
                
            }.listStyle(.plain)
                
            
            
            .sheet(isPresented: $showSheet) {
                FridgeModalView(showSheet: $showSheet, damugItems: $damugItems, itemName: "", isEditable: true)
            }
            .toolbar {
                ToolbarItemGroup (placement: .topBarLeading){
                    HStack(alignment: .center, spacing: 1) {
                        Text("냉장고")
                            .font(.title)
                            .fontWeight(.semibold)
                        Image("냉장고아이콘")
                            .resizable()
                            .frame(width: 15, height: 25)
                            .padding(5)
                    }
                }
                ToolbarItemGroup(placement: .topBarTrailing) {
//                    Button {
//                        dismiss.callAsFunction()
//                    } label: {
//                        Image(systemName: "square.grid.2x2")
//                            .resizable()
//                            .frame(width: 25, height: 25)
//                    }
//                    
                    Button {
                        showSheet = true
                    } label: {
                        Image(systemName: "plus")
                            .resizable()
                            .frame(width: 25, height: 25)
                    }
                }
            }
        }.navigationBarBackButtonHidden(true)
        
    }
}

#Preview {
    FridgeListView(damugItems: .constant([DamugItem(itemName: "감자🥔", itemType: "구황작물", itemAmount: "1박스", itemDate: .now, isEditable: false),
                                          DamugItem(itemName: "체리🍒", itemType: "과일", itemAmount: "1통", itemDate: .now, isEditable: false)]))
}

//                    Text("냉장고")
//                        .font(.title)
//
//                    Image("냉장고아이콘")
//                        .resizable()
//                        .frame(width: 15, height: 25)
//                        .padding(5)
//
//                    Spacer()
//
//                    Button (action: { dismiss ()
//                        }, label: { Image (systemName: "square.grid.2x2.fill")
//                            .resizable()
//                            .frame(width: 25, height: 25)
//                        })
