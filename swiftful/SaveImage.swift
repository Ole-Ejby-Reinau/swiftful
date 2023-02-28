//
//  SaveImage.swift
//  swiftful
//
//  Created by Ole Ejby Reinau on 01/12/2022.
//

import SwiftUI

struct SaveImage: View {
        
    var documentsUrl: URL {
        return FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
    }
    
    func save(image: UIImage) -> String? {
        let fileName = "FileName"
        let fileURL = documentsUrl.appendingPathComponent(fileName)
        if let imageData = image.jpegData(compressionQuality: 1.0) {
           try? imageData.write(to: fileURL, options: .atomic)
           return fileName // ----> Save fileName
        }
        print("Error saving image")
        return nil
    }

    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct SaveImage_Previews: PreviewProvider {
    static var previews: some View {
        SaveImage()
    }
}
