//
//  RegisterSheet.swift
//  Popo
//
//  Created by 이윤학 on 4/17/24.
//

//import SwiftUI
//
//struct RegisterSheet: View {
//    @Binding var learners: [Learner]
//    @Binding var showSheet: Bool
//    @State var part: String = ""
//    @State var session: String = ""
//    
//    var body: some View {
//        VStack(spacing: 16) {
//            TextField("파트를 입력하세요", text: $part)
//            TextField("세션을 입력하세요", text: $session)
//            Button {
//                // 상위 뷰에서 받아온 showSheet 값을 false로 바꾸며, sheet를 닫습니다.
//                showSheet = false
//                // 상위 뷰에서 받아온 learners 배열에 새로운 Learner를 현재 화면에서 작성한 값 part와 session을 이용해 추가합니다.
//                learners.append(Learner(part: part, session: session))
//            } label: {
//                Text("등록하기")
//            }
//        }
//        .padding()
//    }
//}
//
//#Preview {
//    RegisterSheet(learners: .constant([Learner(part: "디자인", session: "오전")]),
//                  showSheet: .constant(true))
//}
