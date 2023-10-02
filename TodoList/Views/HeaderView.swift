//
//  HeaderView.swift
//  TodoList
//
//  Created by Pavan Sarvaiya on 25/09/23.
//

import SwiftUI

struct HeaderView: View {
    
    let title: String
    let subtitle: String
    let angle: Double
    let backgroundColor: Color
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(backgroundColor)
                .rotationEffect(Angle(degrees: angle))
            
            VStack {
                Text(title)
                    .foregroundColor(Color.white)
                    .bold()
                    .font(.system(size: 50))
                
                Text(subtitle)
                    .foregroundColor(Color.white)
                    .font(.system(size: 30))
            }
            .padding(.top, 30)
        }
        .frame(width: UIScreen.main.bounds.width * 3, height: 350)
        .offset(y: -150)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(title: "Title",
                   subtitle: "Subtitle",
                   angle: 15,
                   backgroundColor: .blue)
    }
}
