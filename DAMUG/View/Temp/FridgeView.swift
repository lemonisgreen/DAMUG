////
////  ContentView.swift
////  DAMUG
////
////  Created by JIN LEE on 4/12/24.
////
//
//import SwiftUI
//
//struct FridgeView: View {
//    @State var showSheet = false
////    @State var isSheetAppear: Bool = false
//    @State private var text: String = ""
//    
//    var body: some View {
//        NavigationStack {
//            VStack {
//                Image("빈냉장고1")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                
//            }
//            //            .navigationTitle("jjj")
//            //            .navigationBarTitleDisplayMode(.inline)
////            .toolbar(content: {
////                ToolbarItem(placement: .topBarTrailing) {
////                    Button {
////                        showSheet = true
////                    } label: {
////                        Image(systemName: "plus")
////                            .resizable()
////                            .frame(width: 25, height: 25)
////                    }
////                }
////            })
////            .sheet(isPresented: $showSheet, content: {
////                FridgeModalView(showSheet: $showSheet, textName: "", textAmount: "", isEditable: true)
////            })
//            .toolbar {
//                ToolbarItemGroup(placement: .topBarLeading) {
//                    HStack(alignment: .center, spacing: 1) {
//                        Text("냉장고")
//                            .font(.title)
//                            .fontWeight(.semibold)
//                        Image("냉장고아이콘")
//                            .resizable()
//                            .frame(width: 15, height: 25)
//                            .padding(5)
//                    }
//                }
//                ToolbarItemGroup(placement: .topBarTrailing) {
//                    NavigationLink(destination: FridgeListView()) {
//                        Image(systemName: "text.justify")
//                            .resizable()
//                            .frame(width: 25, height: 25)
//                    }
//                }
//                //                ToolbarItemGroup(placement: .topBarTrailing) {
//                //                    Button(action: {
//                //                        isSheetAppear = true
//                //                    } , label: {Image(systemName: "plus")
//                //                            .resizable()
//                //                            .frame(width: 25, height: 25)
//                //                    })
//                //                }
//            }
//        }.navigationBarBackButtonHidden(true)
//    }
//}
//
//
//
//
////                ContentHeadView()
////
////                FrigerContentView()
////
//
//#Preview {
//    FridgeView()
//}
