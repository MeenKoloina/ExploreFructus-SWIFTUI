//
//  ListFruitView.swift
//  Fructus


import SwiftUI

struct ListFruitView: View {
    
    var fruits:[Fruit] = fruitsData
    
    var body: some View {
        
        NavigationView{
            List{
                ForEach(fruits) { fruit in
                    NavigationLink(destination:DetailsFruitView(fruit: fruit)){
                        FruitRowView(fruit: fruit)
                            .padding()
                    }
                   
                }
            }
            .navigationTitle("FRUITS")
        }
        
    }
}

struct ListFruitView_Previews: PreviewProvider {
    static var previews: some View {
        ListFruitView()
    }
}
