//
//  AvocadoView.swift
//  AvocadoApp
//
//  Created by Sandeep Maurya on 04/07/23.
//

import SwiftUI

struct AvocadoView: View {
    //MARK: PROPERTY
    
    @State private var pulseteAnimation : Bool = false
    
    var body: some View {
        VStack {
            Spacer()
            
            Image("avocado")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150,height: 150,alignment: .center)
                .shadow(color: Color("ColorBlackTransparentDark"), radius: 12,x: 0,y: 8)
                .scaleEffect(self.pulseteAnimation ? 1 : 0.9)
                .opacity(self.pulseteAnimation ? 1 : 0.9)
                .animation(Animation.easeInOut(duration: 1.5).repeatForever(autoreverses: true))
            VStack(alignment: .center){
                Text("Avocados".uppercased())
                    .font(.system(size: 42,weight: .bold,design: .serif))
                    .foregroundColor(Color.white)
                    .padding()
                    .shadow(color: Color("ColorBlackTransparentDark"), radius: 4,x: 0,y: 4)
                Text("""
Creamy, green, and full of nutrients! Avocado is a powerhouse ingredient at any meal. Enjoy these handpicked avocado recipes for breakfast, lunch, dinner & more!
""")
                .lineLimit(nil)
                .font(.system(.headline, design: .serif))
                .foregroundColor(Color("ColorGreenLight"))
                .multilineTextAlignment(.center)
                .lineSpacing(8)
                .frame(maxWidth: 640, minHeight: 120)
            }
            .padding()
            
            Spacer()
        }
        .background(
            Image("background")
                .resizable()
                .aspectRatio(contentMode: .fill)
        )
        .edgesIgnoringSafeArea(.all)
        .onAppear {
            self.pulseteAnimation.toggle()
        }
    }
}

struct AvocadoView_Previews: PreviewProvider {
    static var previews: some View {
        AvocadoView()
            .previewDevice("iphone 11 Pro")
        //            .environment(\.colorScheme, .dark)
    }
}
