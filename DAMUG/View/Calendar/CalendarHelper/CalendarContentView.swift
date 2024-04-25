//
//  CalendarContentView.swift
//  DAMUG
//
//  Created by JIN LEE on 4/13/24.
//

import SwiftUI

struct CalendarContentView: View {
    
    @State private var datePickerSelection: Date = .now

    var body: some View {
        
        VStack{
            
            DatePicker("Date Picker의 목적을 여기에 적어주세요", selection: $datePickerSelection, displayedComponents: [.date])
                .datePickerStyle(.graphical)
                .environment(\.locale, .init(identifier: "ko_KR"))
            
        }
    }
}

#Preview {
    CalendarContentView()
}
