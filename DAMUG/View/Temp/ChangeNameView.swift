//
//  ChangeNameView.swift
//  DAMUG
//
//  Created by JIN LEE on 4/16/24.
//

import SwiftUI

struct ChangeNameView: View {
   
    @State var name: String = "world"
    var body: some View {
        
        VStack{
            Text ("hello, \(name)!")
            Button(action: {
             name = "Leeo"
            }, label: {
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
            })
        }
    }
}

#Preview {
    ChangeNameView()
}
