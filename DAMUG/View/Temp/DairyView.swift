////
////  DairyView.swift
////  DAMUG
////
////  Created by JIN LEE on 4/16/24.
////
//
//import SwiftUI
//
//struct DairyView: View {
//    
//    struct Dairy {
//        var 날짜: String
//        var 날씨: String
//        var 제목: String
//        var 내용: String
//    }
//    
//    @State var dairies = [
//        "4월 13일",
//        "cloud",
//        "그런데 말입니다",
//        "오늘은 날씨가 맑았어요"]
//    
//    var body: some View {
//        
//        List{
//            ForEach(0..<5) { _ in
//                if true {
//                    VStack(alignment: .leading) {
//                        HStack {
//                            Text("Dairy.날짜")
//                            Spacer()
//                            Image(systemName: "cloud")
//                        }
//                        Text("그런데 말입니다")
//                        Text("오늘은 날씨가 맑았어요")
//                    }
//                }
//            }
//        }
//    }
//}
//    
//    #Preview {
//        DairyView()
//    }
