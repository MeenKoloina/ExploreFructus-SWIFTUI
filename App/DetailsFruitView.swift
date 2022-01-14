//
//  DetailsFruitView.swift
//  Fructus


import SwiftUI

struct DetailsFruitView: View {
    
    var fruit:Fruit
    
    var body: some View {
        NavigationView{
            
            ScrollView(.vertical) {
                
                VStack(alignment:.leading,spacing:20){
                    FruitHeaderView(fruit: fruit)
                    VStack(alignment:.leading, spacing:20){
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                        .foregroundColor(fruit.gradientColors[1])
                        Text(fruit.headline)
                            .fontWeight(.bold)
                            .font(.headline)
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        Text(fruit.description)
                            .font(.body)
                        
                    }
                    .padding(.horizontal,20)
                   
                }
                .navigationBarHidden(true)
                .navigationBarTitle(fruit.title,displayMode: .inline)
                
            }
            .edgesIgnoringSafeArea(.top)
           
        }
        
    }
}

struct DetailsFruitView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsFruitView(fruit: fruitsData[0])
    }
}
