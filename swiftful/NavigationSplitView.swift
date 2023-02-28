//
//  NavigationSplitView.swift
//  is perfect for multi-column apps.
//  It automatically adapts to a single-column view in contexts like iPhone.
//
//  is from https://mackuba.eu/notes/wwdc22/swiftui-cookbook-for-navigation/
/*
     The layout consists of:

     - a sidebar, initially hidden, which shows a list of categories
     - the second column that shows a list of recipes
     - the main area that shows the recipe details
 */
//  Created by Ole Ejby Reinau on 18/12/2022.
//

import SwiftUI
/*
struct NavigationSplitView: View
{
    var body: some View
    {
        NavigationSplitView
        {
            List(Category.allCases, selection: $selectedCategory) {
                category in
                        NavigationLink(category.localizedName, value: category)
            }
            .navigationTitle("Categories")
        } content:
            List(dataModel.recipes(in: selectedCategory), selection: $selectedRecipe)
            { recipe in
                    NavigationLink(recipe.name, value: recipe)
            }
            .navigationTitle(selectedCategory?.localizedName ?? "Recipes")
        {
        } detail:
        {
            
        }
    }
}

struct NavigationSplitView_Previews: PreviewProvider
{
    static var previews: some View
    {
        NavigationSplitView()
    }
}
*/
