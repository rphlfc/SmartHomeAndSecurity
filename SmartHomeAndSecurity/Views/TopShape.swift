//
//  TopShape.swift
//  SmartHomeAndSecurity
//
//  Created by Raphael Cerqueira on 03/10/20.
//

import SwiftUI

struct TopShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addArc(
            center: CGPoint(x: rect.midX, y: rect.maxY),
            radius: 90,
            startAngle: Angle.degrees(180),
            endAngle: Angle.degrees(0),
            clockwise: false
        )
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.minY))
        
        return path
    }
}

struct TopShape_Previews: PreviewProvider {
    static var previews: some View {
        TopShape()
            .frame(height: 300)
            .padding(.horizontal)
    }
}
