//
//  DataService.swift
//  recipe list app
//
//  Created by Ellie on 2/18/23.
//

import Foundation
import UIKit

class DataService {
    
    static func getLocalData() -> [Recipe] {
        // Parse local json file
        
        //Get a url path to the json file
        let pathString = Bundle.main.path(forResource: "recipes", ofType: "json")
        
        //Check if pathString is not nil, otherwise...
        guard pathString != nil else {
            return [Recipe]()
        }
        
        //Create a url object
        let url = URL(fileURLWithPath: pathString!)
        
        do {
            //Create a data object
            let data = try Data(contentsOf: url)
            
            //Decode the data with a JSON decoder
            let decoder = JSONDecoder()
            
            do {
                let recipeData = try decoder.decode([Recipe].self, from: data)
                
                //Add unique IDs
                for r in recipeData {
                    r.id = UUID()
                }
                //Return the recipes
                return recipeData
                
            }
            catch {
                //error with getting data
                print(error)
            }
                
            }
            catch {
                
                // error with getting data
                print(error)
            }
        listFonts()
      
            return [Recipe]()
        }
    }

func listFonts(){
        for family in UIFont.familyNames {
           
            let sName: String = family as String
            print("family: \(sName)")
                    
            for name in UIFont.fontNames(forFamilyName: sName) {
                print("name: \(name as String)")
            }
        }
    }





