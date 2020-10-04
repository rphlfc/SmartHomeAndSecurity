//
//  SearchView.swift
//  SmartHomeAndSecurity
//
//  Created by Raphael Cerqueira on 02/10/20.
//

import SwiftUI

struct SearchView: View {
    @State var search = "Kuwait City, St 9, 24"
    
    var body: some View {
        HStack {
            TextField("", text: $search)
                .foregroundColor(.white)
            
            Button(action: {}, label: {
                Image(systemName: "chevron.down")
                    .frame(width: 36, height: 36)
                    .foregroundColor(Color.white)
            })
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(Color(#colorLiteral(red: 0.7102211714, green: 0.7508587241, blue: 0.7192954421, alpha: 1)))
        )
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
