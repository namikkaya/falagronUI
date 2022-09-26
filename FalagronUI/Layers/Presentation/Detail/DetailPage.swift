//
//  DetailPage.swift
//  FalagronUI
//
//  Created by namik kaya on 23.09.2022.
//

import SwiftUI

struct DetailPage: View {
    var body: some View {
        NavigationView {
            Text("Hello world")
                .navigationTitle("TEST")
                /*.toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button("Help") {
                            print("Help tapped!")
                        }
                    }
                }*/
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct DetailPage_Previews: PreviewProvider {
    static var previews: some View {
        DetailPage()
    }
}
