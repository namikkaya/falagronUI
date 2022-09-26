//
//  MainListViewProvider.swift
//  FalagronUI
//
//  Created by namik kaya on 4.09.2022.
//

import SwiftUI

struct MainListViewProvider: View {
    var data: [City]
    
    var paginationUpdate: () -> Void
    
    var body: some View {
        List(data) { item in
            CityCell(data: item).gesture(TapGesture().onEnded({ _ in
                print("click ---")
            }))
            .onAppear {
                if item.index == 49 {
                    paginationUpdate()
                }
            }
        }
    }
}
