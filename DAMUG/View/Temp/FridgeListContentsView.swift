//
//  FridgeListContentsView.swift
//  DAMUG
//
//  Created by JIN LEE on 4/16/24.
//
//
//import SwiftUI
//
////struct DamugItem {
////    var itemName: String
////    var itemType: String
////    var itemAmount: String
////    var itemExpirationDate: String
////    var isEditable: Bool
////}
//
//struct FridgeListContentsView: View {
//    
//    @State var DamugItem: [Item] = [
//        Item(name: "감자🥔", type: "구황작물", amount: "1키로", date: .now)]
//    
//    
////    
////    @State var Damug0 = damugItem(
////        itemName: "감자🥔",
////        itemType: "구황작물",
////        itemAmount: "1박스",
////        itemExpirationDate: "2024.05.06",
////        isEditable: false
////    )
//    
//    
//    var body: some View {
//        NavigationStack{
//            List{
//                VStack(alignment: .leading){
//                    HStack{
//                        Text(Damug0.itemName)
//                            .font(.title2)
//                            .fontWeight(.semibold)
//                    }.padding(.bottom, 3)
//                    HStack{
//                        Text(Damug0.itemType)
//                        Spacer()
//                        Text(Damug0.itemAmount)
//                        Text(Damug0.itemExpirationDate)
//                    }
//                }
//                
//            List($DamugItem) { Item in
//                VStack(alignment: .leading){
//                    HStack{
//                        Text(Item.name)
//                            .font(.title2)
//                            .fontWeight(.semibold)
//                    }.padding(.bottom, 3)
//                    HStack{
//                        Text(Item.type)
//                        Spacer()
//                        Text(Item.amount)
//                        Date(Item.date)
//                    }
//                    }
//                }
//        }
//            }
//        }.listStyle(.plain)
//    }
//}
//#Preview {
//    FridgeListContentsView()
//}
