//
//  FruitHeaderView.swift
//  Fructus


import SwiftUI

struct FruitHeaderView: View {
    
    var fruit:Fruit
    
    var body: some View {
        
        ZStack {
            Image(fruit.image)
                .resizable()
                .scaledToFit()
        }
        .frame(height:440)
        .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
            
    }
}

struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitsData[0])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
