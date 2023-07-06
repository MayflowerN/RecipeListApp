//
//  RecipeModel.swift
//  recipe list app
//
//  Created by Ellie on 2/18/23.
//

import Foundation

class RecipeModel: ObservableObject {
    @Published var recipes = [Recipe]()
    
    init() {
        
        //Create an instance of data service and get the data
        self.recipes = DataService.getLocalData()
        
        
        
        //Set the  recipes property
    }
}
