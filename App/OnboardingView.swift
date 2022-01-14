//
//  OnboardingView.swift
//  Fructus


import SwiftUI

struct OnboardingView: View {
    
    var fruits:[Fruit] = fruitsData
    
    var body: some View {
        
        ZStack {
            TabView{
                ForEach(fruits){ fruit in
                    FruitSliderView(fruit: fruit)
                }
            }
            .tabViewStyle(PageTabViewStyle())
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
