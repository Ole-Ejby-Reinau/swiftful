//
//  ReadTextFromFile.swift
//  swiftful
//
//  Created by Ole Ejby Reinau on 01/12/2022.
//

import SwiftUI

struct ReadTextFromFile: View {

    func printLine() -> String
    {
        let filename = "OOMA CC Temp.txt"
        var str1: String
        var myCounter: Int
        do {
            let contents = try String(contentsOfFile: filename)
            let lines = contents.split(separator:"\n")
            myCounter = lines.count
            str1 = String(myCounter)
            } catch {
                return (error.localizedDescription)
            }
            return str1
    }
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ReadTextFromFile_Previews: PreviewProvider {
    static var previews: some View {
        ReadTextFromFile()
    }
}
