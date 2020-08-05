//
//  LCButton.swift
//  MovieBooking
//
//  Created by John K on 04/01/2020.
//  Copyright © 2020 Liquidcoder. All rights reserved.
//

import SwiftUI

struct LCButton: View {
    var text = "Watch Now"
    var action = {}
    
    var body: some View {
        Button(action: {
            self.action()
        }) {
            HStack {
                HStack (spacing: 20) {
                    Text(text)
                        
                    Image(systemName: "play.rectangle")
                       
                } .font(.system(size: 20, weight: Font.Weight.semibold))
                .frame(minWidth: 0, maxWidth: .infinity)
                .padding(.vertical, 30)
                .accentColor(Color.white)
                .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)), Color(#colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1))]) , startPoint: .leading, endPoint: .trailing))
                .cornerRadius(10)
                
                
            }
        }.padding(.vertical)
    }
}

struct LCButton_Previews: PreviewProvider {
    static var previews: some View {
        LCButton()
    }
}
