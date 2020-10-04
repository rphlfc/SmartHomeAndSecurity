//
//  SecurityNavigationView.swift
//  SmartHomeAndSecurity
//
//  Created by Raphael Cerqueira on 02/10/20.
//

import SwiftUI

struct SecurityNavigationView: View {
    var body: some View {
        HStack {
            Spacer()
            
            Button(action: {}, label: {
                Image(systemName: "bell")
                    .frame(width: 36, height: 36)
                    .foregroundColor(Color.white)
                    .background(Color(#colorLiteral(red: 0.7102211714, green: 0.7508587241, blue: 0.7192954421, alpha: 1)))
            })
            .cornerRadius(5)
        }
    }
}

struct SecurityNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        SecurityNavigationView()
    }
}
