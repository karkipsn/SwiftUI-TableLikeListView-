//
//  TitleCell.swift
//

import SwiftUI

struct TitleCell: View {
    
    let model: TitleViewModel
    @Binding var normalColor: Color
    @Binding var hightligtingColor: Color
    @Binding var selectedRow: Int
    
    var body: some View{
        
        HStack(alignment: .center){
            
            Image("\(model.image)")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(  selectedRow == model.id ? .pink : .white)
                .frame(width: 40.0, height: 40.0, alignment: .center)
            
            VStack(alignment: .leading, spacing: 8.0){
                
                if (model.name != "") {
                    
                Text(model.name)
                        .foregroundColor( selectedRow == model.id ? .pink : .white)
                    .font(Font.headline)
                }
                
                Text(model.details)
                    .font(Font.subheadline)
                    .foregroundColor(  selectedRow == model.id ? .pink : .white)
            }

            Spacer()
            
            Image(systemName: "chevron.right")
                .renderingMode(.template)
                .foregroundColor(  selectedRow == model.id ? .pink : .white)
                .frame(alignment: .trailing)
 
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
    }
}


