//
//  Main.swift
//  Popo
//
//  Created by 이윤학 on 4/17/24.
//

//import SwiftUI
//
//struct Learner: Identifiable {
//    let id: UUID = UUID()
//    let part: String
//    let session: String
//}
//
//struct Main: View {
//    
//    @State var learners: [Learner] = [
//        Learner(part: "디자인", session: "오전"),
//        Learner(part: "테크", session: "오전"),
//        Learner(part: "도메인", session: "오후"),
//        Learner(part: "디자인", session: "오후"),
//        Learner(part: "디자인", session: "오전"),
//        Learner(part: "도메인", session: "오후")
//    ]
//    
//    @State var showSheet: Bool = false
//    
//    var body: some View {
//        VStack {
//            List {
//                ForEach(learners) { learner in
//                    HStack {
//                        Text(learner.part)
//                        Spacer()
//                        Text(learner.session)
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
//            RegisterSheet(learners: $learners, showSheet: $showSheet)
//        }
//    }
//}
//
//#Preview {
//    Main()
//}
//
//
//
