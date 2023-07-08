//
//  Onboarding_2.swift
//  recipe list app
//
//  Created by Ellie on 7/6/23.
//

import SwiftUI

struct Onboarding_2: View {
    @State var isActive:Bool = false

    var body: some View {
        ZStack (alignment: .bottom) { // Align elements to the bottom
            VStack {
                Spacer()
                
                
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 400, height: 323) // Set initial height to 0
                    .background(Color(red: 0.02, green: 0.05, blue: 0.09))
                    .cornerRadius(32)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
                            .ignoresSafeArea()
                        
                    .overlay (
                        VStack {
                            Spacer()
                            Text("Learn how to make delicious food!")
                                .font(
                                    Font.custom("Poppins-Regular", size: 32)
                                        .weight(.medium)
                                )
                                .padding()
                                .foregroundColor(.white)
                                .multilineTextAlignment(.leading)
                            
                            
                            Text("Browse through a variety of recipes and learn how to cook delicious meals at home!")
                                .font(
                                    Font.custom("Poppins-Regular", size: 14)
                                        .weight(.ultraLight)
                                )
                                .padding()                                .foregroundColor(.white)
                                .multilineTextAlignment(.leading)
                            
                            
                                                NavigationLink(
                                                    destination: RecipeListView(),
                                                    isActive: $isActive) {
                                                        Button(action: {
                                                            isActive = true
                                                        }) {
                                                   
                                        Text("Get Started")
                                        .font(
                                            Font.custom("Poppins-Regular", size: 14)
                                                .weight(.medium)
                                        )
                                        .kerning(0.1)
                                        .multilineTextAlignment(.center)
                                        .foregroundColor(.white)
                                    
                                }
                                .buttonStyle(PlainButtonStyle())
                                .padding()
                                .frame(width: 327, height: 40, alignment: .center)
                                .background(Color(red: 1, green: 0.42, blue: 0))
                                .cornerRadius(100)
                                                    
                                
                            }
                                                    
                            
                        }
                        
                    )
            }
            
        }
            
        
            .background(
            Image("foodonboarding")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 438.35, height: 900)
                .clipped()
            )
        }

        
              
    }


struct Onboarding_2_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding_2()
    }
}


