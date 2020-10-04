//
//  EmergencyCallsViews.swift
//  SmartHomeAndSecurity
//
//  Created by Raphael Cerqueira on 03/10/20.
//

import SwiftUI

struct EmergencyCallsView: View {
    let items = [
        MenuItem(image: "car", title: "Police"),
        MenuItem(image: "flame", title: "Fire"),
        MenuItem(image: "cross.circle", title: "Med")
    ]
    
    var body: some View {
        HStack {
            ForEach(items) { item in
                Button(action: {}, label: {
                    EmergencyCallView(item: item)
                })
                .buttonStyle(PlainButtonStyle())
            }
        }
        .padding(.top, 8)
    }
}

struct MenuItem: Identifiable {
    let id = UUID()
    var image: String
    var title: String
}

struct EmergencyCallsView_Previews: PreviewProvider {
    static var previews: some View {
        EmergencyCallsView()
    }
}

struct EmergencyCallView: View {
    var item: MenuItem
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Image(systemName: item.image)
                    .frame(width: 30, height: 30)
                    .background(Color(#colorLiteral(red: 0.9528577924, green: 0.9529947639, blue: 0.9528278708, alpha: 1)))
                    .clipShape(Circle())
                
                Text(item.title)
                    .bold()
                    .padding(.top, 8)
            }
            
            Spacer()
        }
        .padding()
        .frame(width: (UIScreen.main.bounds.width / 3) - 10)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(Color.white)
            
        )
    }
}
