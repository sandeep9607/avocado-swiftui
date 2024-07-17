//
//  RecipeDetailView.swift
//  AvocadoApp
//
//  Created by Sandeep Maurya on 11/07/23.
//

import SwiftUI

struct RecipeDetailView: View {
    
    var recipe: Recipe
    
    @State private var pulsat: Bool = false
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 0) {
                //IMAGE
                Image(recipe.image)
                    .resizable()
                    .scaledToFit()
                Group {
                    //TITLE
                    Text(recipe.title)
                        .font(.system(.largeTitle, design: .serif))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color("ColorGreenAdaptive"))
                        .padding(.top, 10)
                    //RATING
                    RecipeRatingView(recipe: recipe)
                    
                    //Cooking
                    RecipeCookingView(recipe: recipe)
                    //Ingredient
                    Text("Ingredient")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    
                    VStack(alignment: .leading, spacing: 5){
                        ForEach(recipe.ingredients, id: \.self){ item in
                            VStack(alignment: .leading, spacing: 5) {
                                Text(item)
                                    .font(.footnote)
                                    .multilineTextAlignment(.leading)
                                Divider()
                            }
                        }
                    }
                    
                    //INSTRUCTIONS
                    Text("Instruction")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    
                    ForEach(recipe.instructions, id: \.self) { item in
                        VStack(alignment: .center, spacing: 5) {
                            Image(systemName: "chevron.down.circle")
                                .resizable()
                                .frame(width: 42, height: 42, alignment: .center)
                                .imageScale(.large)
                                .font(Font.title.weight(.ultraLight))
                                .foregroundColor(Color("ColorGreenAdaptive"))
                            
                            Text(item)
                                .lineLimit(nil)
                                .multilineTextAlignment(.center)
                                .font(.system(.body, design: .serif))
                                .frame(minHeight: 100)
                        }
                    }
                }
                .padding(.horizontal, 24)
                .padding(.vertical, 12)
            }
        }
        .edgesIgnoringSafeArea(.top)
        .overlay {
            HStack {
                Spacer()
                VStack {
                    Button {
                        //ACTION
                        self.presentationMode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: "chevron.down.circle.fill")
                            .font(.title)
                            .foregroundColor(Color.white)
                            .shadow(radius: 4)
                            .opacity(self.pulsat ? 1 : 0.6)
                            .scaleEffect(self.pulsat ? 1.2 : 0.8, anchor: .center)
                            .animation(Animation.easeInOut(duration: 1.5).repeatForever(autoreverses: true))
                    }
                    .padding(.trailing, 20)
                    .padding(.top, 24)
                    Spacer()
                }
            }
            .onAppear(){
                self.pulsat.toggle()
            }
        }
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailView(recipe: recipesData[0])
    }
}
