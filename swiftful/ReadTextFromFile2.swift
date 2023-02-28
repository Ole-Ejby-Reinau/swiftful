//
//  ReadTextFromFile2.swift
//  swiftful
/*  https://stackoverflow.com/questions/61581482/how-do-i-load-the-contents-of-a-text-file-and-display-it-in-a-swiftui-text-view
 */
//  Created by Ole Ejby Reinau on 01/12/2022.
//

import SwiftUI

struct ReadTextFromFile2: View {
    
    struct TestView: View
    {
        @ObservedObject var model = Model()
        var body: some View {
            NavigationView {
                VStack {
                    NavigationLink(destination: LicenseView(model: model)){ Text("License") }
                }.padding()
            }
        }
    }

    struct LicenseView: View{
        @ObservedObject var model: Model
        var body: some View{
            ScrollView {
                VStack {
                    Text(model.data).frame(maxWidth: .infinity)
                }
            }.padding()
            .navigationBarTitle("License")
            .navigationBarItems(trailing: Button("Check In"){})
        }
    }

    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

class Model: ObservableObject
{
    @Published var data: String = ""
    init() { self.load(file: "data") }
    
    func load(file: String)
    {
        if let filepath = Bundle.main.path(forResource: file, ofType: "txt") {
            do {
                let contents = try String(contentsOfFile: filepath)
                DispatchQueue.main.async {
                    self.data = contents
                }
            } catch let error as NSError {
                print(error.localizedDescription)
            }
        } else {
            print("File not found")
        }
    }
}

struct ReadTextFromFile2_Previews: PreviewProvider {
    static var previews: some View {
        ReadTextFromFile2()
    }
}
