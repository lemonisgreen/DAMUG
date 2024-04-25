//
//  CalendarHeadView.swift
//  DAMUG
//
//  Created by JIN LEE on 4/13/24.
//

import SwiftUI

struct CalendarHeadView: View {
    var body: some View {
            HStack {
                Text("식단표🥣")
                    .font (.title)
                
            }.padding()
                .accentColor(.yellow)
    }
}
    
    #Preview {
        CalendarHeadView()
    }
