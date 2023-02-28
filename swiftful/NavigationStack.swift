//
//  NavigationStack.swift
//  is used for simple push-pop navigation happening in a single container
//
//  is from https://thinkdiff.net/navigationstack-in-swiftui-ios-16-0-bd04c2687152
//
//  Created by Ole Ejby Reinau on 18/12/2022.
//

import SwiftUI
/*
struct Subject: Identifiable, Hashable
{
    let id = UUID()
    let name: String
}

extension Subject
{
    static var data: [Subject]
    {
        return [
            .init(name: "Bangla"),
            .init(name: "English"),
            .init(name: "Science")
        ]
    }
}

struct ContentView7: View
{
    @State private var path = NavigationPath()
    
    var body: some View
    {
        NavigationStack(path: $path)
        {
            Text("Subjects")
                .font(.largeTitle)
                .foregroundColor(.primary)
            
            List(Subject.data)
            { subject in
                NavigationLink(subject.name, value: subject)
            }
            .listStyle(.plain)
            .navigationDestination(for: Subject.self) { subject in
                SubjectView(subject)
            }
        }
        .padding()
    }
}

struct SubjectView: View
{
    let subject: Subject
    
    init(_ subject: Subject)
    {
        self.subject = subject
    }
    
    var body: some View
    {
        Text("Your selected subject is:")
        Text(subject.name)
            .bold()
            .shadow(radius: 2)
    }
}

struct ContentView7_Previews: PreviewProvider
{
    static var previews: some View
    {
        ContentView7()
    }
}
*/
