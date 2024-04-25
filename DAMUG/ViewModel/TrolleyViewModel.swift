//
//  TrolleyViewModel.swift
//  DAMUG
//
//  Created by JIN LEE on 4/14/24.
//

import Foundation

final class TrolleyViewModel: ObservableObject {
    @Published var shoppingList = [
        Trolley(itemText: "양파🧅"),
        Trolley(itemText: "복숭아🍑"),
        Trolley(itemText: "딸기🍓"),
        Trolley(itemText: "동글동글 귀여운 겨-란🥚"),
        Trolley(itemText: "레모니👀🍋"),
        Trolley(itemText: "독버섯🍄"),
        Trolley(itemText: "고구미🍠")
    ]
}
