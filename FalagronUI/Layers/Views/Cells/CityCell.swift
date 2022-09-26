//
//  CityCell.swift
//  FalagronUI
//
//  Created by namik kaya on 4.09.2022.
//

import SwiftUI

struct CityCell: View {
    var data: City
    var body: some View {
        HStack(alignment: .top) {
            VStack(alignment: .leading) {
                Text(data.title) .font(.headline)
            }
            Spacer()
        }.background()
    }
}
