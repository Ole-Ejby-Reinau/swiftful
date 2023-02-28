//
//  LoadImage2.swift
//  swiftful
//
// https://stackoverflow.com/questions/37574689/how-to-load-image-from-local-path-ios-swift-by-path
//
//  Created by Ole Ejby Reinau on 01/12/2022.
//

import SwiftUI
/*
struct LoadImage2: View
{
    let url = NSURL(string: imageUrlPath)
    let data = NSData(contentsOfURL: url!)
    let fileManager = FileManager.default

    let urls = fileManager.urls(for: .DocumentDirectory, in: .UserDomainMask)
    let documentDirectory = urls[0] as NSURL

    let currentDate = Date()
    let dateFormatter = DateFormatter()
    dateFormatter.dateStyle = .NoStyle;
    dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss";
    
    let convertedDate = dateFormatter.stringFromDate(currentDate)
    let imageURL = documentDirectory.URLByAppendingPathComponent(convertedDate)
    
    var imageUrlPath = imageURL.path
    var myImage : UIImage = UIImage(data: data)!

    UIImageJPEGRepresentation(myImage, 1.0)!.writeToFile(imageUrlPath, atomically: true)
    
    func getImageFromDir(_ imageName: String) -> UIImage?
    {

        if let documentsUrl = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
            let fileURL = documentsUrl.appendingPathComponent(imageName)
            do {
                let imageData = try Data(contentsOf: fileURL)
                return UIImage(data: imageData)
            } catch {
                print("Not able to load image")
            }
        }
        return nil
    }

    func load(fileName: String) -> UIImage?
    {
        if FileManager.default.fileExistsAtPath(imageUrlPath)
        {
            myImage = UIImage(data: data!)
        }
    }

    func load2(fileName: String) -> UIImage?
    {
        if FileManager.default.fileExists(atPath: imageUrlPath)
        {
            let url = NSURL(string: imageUrlPath)
            let data = NSData(contentsOf: url! as URL)

            myImage.image = UIImage(data: data! as Data)
        }
    }
    
    var body: some View {
        
    }
 
}

struct LoadImage2_Previews: PreviewProvider {
    static var previews: some View {
        LoadImage2()
    }
}
*/
