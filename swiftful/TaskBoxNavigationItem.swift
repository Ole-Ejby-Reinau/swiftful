//
//  TaskBoxNavigationItem.swift
//  taskbox
//
//  Created by taskbox on 09/06/2022.
//  Copyright © 2022 TaskBox. All rights reserved.
//

import SwiftUI

@available(iOS 15.0.0, *)
struct TaskBoxNavigationItem: View {
    @State private var title: String = ""
    @State private var subTitle : String? = "fugl"
    @State private var activity : String = ""

    init(activity :String,
         title : String, subTitle: String?)
    {
        self._activity = State(initialValue:activity)
        self._title = State(initialValue:title)
        self._subTitle = State(initialValue:subTitle)
    }

    var body: some View {
        HStack {
            backButton
            Spacer().frame(width: 1)
            iconButton
            Spacer()
            titleSection.frame(height: 40)
            Spacer()
            menuButton
        }
        .padding(.bottom, 0).padding(.top, 25)
        .padding(.leading, 1).padding(.trailing, 1)
        .accentColor(.white)
        .font(.headline)
        .foregroundColor(.black)
        .background(Color(UIColor.lightGray))
        .edgesIgnoringSafeArea(.top)
    }
}

@available(iOS 15.0.0, *)
struct TaskBoxNavigationItem_Previews: PreviewProvider {
    static var previews: some View {
        TaskBoxNavigationItem(activity: "nil",
        title: "Hello", subTitle: nil)
    }
}

@available(iOS 15.0.0, *)
extension TaskBoxNavigationItem{
    
    private var backButton : some View {
        Button(action: {
//                          activity?.back()
        }, label: {
            Image("chevron-left")
                .resizable().frame(width: 25, height: 25)
        })
    }
    
    private var iconButton : some View {
        Button(action: {
//            activity?.mainMenu()
        }, label: {
            Image("icon")
                .resizable()
                .frame(width: 25, height: 25)
        }
        )
    }

    private var menuButton : some View {
        Button(action: {
//            activity?.optionMenu()
        }, label: {
            Image("menu").frame(width: 40, height: 40)
        })
    }
    
    private var titleSection : some View {
        VStack(spacing: 1) {
            Text(title)
//                .font(.title)
                .fontWeight(.semibold)
            if let subTitle = subTitle {
                Text(subTitle)
            }
        }
    }
}
