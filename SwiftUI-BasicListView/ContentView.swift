//
//  ContentView.swift
//

import SwiftUI
import UIKit

struct ContentView: View {
    
    let titleList = TitleViewModel.fetchMockList()
    
    @State var selectedRow: Int = -1
    @State var showtitle = false
    @State var color: Color = Color.white
    @State var active: Bool = false
    
    var body: some View {
        NavigationView{
            
            List {
                
                ForEach(titleList, id: \.id) { model in
                    
                    ZStack(alignment: .leading) {
                        
                        // Color just shown to bind the color but actually not used.
                        
                        TitleCell(model: model, normalColor: $color, hightligtingColor: $color, selectedRow: $selectedRow)
                            .contentShape(Rectangle()) //makes whole row tappable
                            .onTapGesture {
                                active = true
                                selectedRow = model.id
                            }
                        
                        NavigationLink(destination: Text(titleList.description), isActive: $active) {
                        }
                        
                    }
                    .listRowBackground((model.id == selectedRow) ? Color(.white) : Color(.clear))
                    //                    .listRowBackground( Color(.clear))
                    .buttonStyle(PlainButtonStyle())
                }
                
            }
            .navigationBarTitle(Text("My Profile"))
        }.onAppear {
            UITableView.appearance().backgroundColor = UIColor.purple
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
