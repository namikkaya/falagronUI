//
//  ContentView.swift
//  FalagronUI
//
//  Created by namik kaya on 3.09.2022.
//

import SwiftUI
import FalagronServices

struct MainContentView<ViewModel>: View where ViewModel: MainViewModel {
    @ObservedObject var viewModel: ViewModel
    
    init(viewModel: ViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        NavigationView {
            VStack {
                MainListViewProvider(data: viewModel.listData ?? [], paginationUpdate: paginationUpdate)
            }
            .onAppear {
                UITableView.appearance().contentInset.top = -35
                Task(priority: .background){
                    await viewModel.start()
                }
                print("TEST BAKALIM: \(FalagronServices.fetchFal())")
            }
            //.navigationTitle("TEST")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Help") {
                        print("Help tapped!")
                        viewModel.gotoDetail()
                    }
                }
            }
            .navigationBarTitleDisplayMode(.inline)
        }
    }
    
}

extension MainContentView {
    func paginationUpdate() {
        print("Pagination request ==>>>>")
//        Task(priority: .background){
//            await viewModel.fetchList()
//        }
    }
}
