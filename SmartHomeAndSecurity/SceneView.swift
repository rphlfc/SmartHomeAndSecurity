//
//  SceneView.swift
//  SmartHomeAndSecurity
//
//  Created by Raphael Cerqueira on 03/10/20.
//

import SwiftUI

struct SceneView: View {
    var image: String
    var color: Color
    var title: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(systemName: image)
                .font(.system(size: 21))
                .frame(width: 30, height: 30)
                .foregroundColor(color)
                .background(color.opacity(0.7))
                .clipShape(Circle())
            
            HStack {
                Text(title)
                    .bold()
                    .foregroundColor(Color(#colorLiteral(red: 0.06273534149, green: 0.06275133044, blue: 0.06273183227, alpha: 1)))
                
                Spacer()
                
                Image(systemName: "chevron.right")
                    .foregroundColor(Color(#colorLiteral(red: 0.8156144023, green: 0.8157324195, blue: 0.8155884147, alpha: 1)))
            }
            .padding(.top)
        }
        .padding()
        .frame(width: (UIScreen.main.bounds.width / 2) - 10)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(Color.white)
        )
    }
}

struct SceneView_Previews: PreviewProvider {
    static var previews: some View {
        SceneView(image: "cross", color: .blue, title: "Title")
    }
}
