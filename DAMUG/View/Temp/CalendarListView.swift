//
//  CalendarListView.swift
//  DAMUG
//
//  Created by JIN LEE on 4/16/24.
//

import SwiftUI

struct CalendarListView: View {
    var body: some View {
        
        NavigationStack{
            
            VStack{
                List{
                    Text ("김치찌개")
                    Text ("김치찌개")
                    Text ("김치찌개")
                    Text ("김치찌개")
                    Text ("김치찌개")
                    Text ("김치찌개")
                    Text ("김치찌개")
                    Text ("김치찌개")
                    Text ("김치찌개")
                    Text ("김치찌개")
                    Text ("김치찌개")
                    Text ("김치찌개")
                    Text ("김치전")
                    Text ("김치찌개")
                    Text ("김치찌개")
                    Text ("김치찌개")
                    Text ("김치찌개")
                    Text ("김치찌개")
                    Text ("김치찌개")
                    Text ("김치찌개")
                    Text ("김치찌개")
                    Text ("김치찌개")
                }.listStyle(.plain)
            }
        }
    }
}

#Preview {
    CalendarListView()
}
