//
//  UsingHostingController.swift
//  swiftful
//
//  How to convert a SwiftUI view to an image
//
//  Created by Ole Ejby Reinau on 01/12/2022.
//
/*
 SwiftUI’s views don’t have a built-in function to render a view as an image, but we can write one ourselves in very little time. The key here is to wrap the view using UIHostingController, then render its view hierarchy into a UIGraphicsImageRenderer.

 This is best done using an extension on View, so you can call it naturally. This should wrap the view in a hosting controller, adjust the size of the hosting controller’s view to be the intrinsic content size of the SwiftUI view, clear any background color to keep the rendered image clean, then render the view into an image and send it back.
 */
import SwiftUI

extension View
{
    func snapshot() -> UIImage
    {
        let controller = UIHostingController(rootView: self)
        let view = controller.view

        let targetSize = controller.view.intrinsicContentSize
        view?.bounds = CGRect(origin: .zero, size: targetSize)
        view?.backgroundColor = .clear

        let renderer = UIGraphicsImageRenderer(size: targetSize)

        return renderer.image { _ in
            view?.drawHierarchy(in: controller.view.bounds, afterScreenUpdates: true)
        }
    }
}

/*
 To use that extension in SwiftUI, you should create your view as a property so you can reference it on demand – for example, in response to a button action.

 For example, this renders a styled text view to an image, then saves it to the user’s photo album:
 */

struct CntentView: View
{
    var textView: some View
    {
        Text("Hello, SwiftUI")
            .padding()
            .background(.blue)
            .foregroundColor(.white)
            .clipShape(Capsule())
    }

    var body: some View
    {
        VStack
        {
            textView

            Button("Save to image") {
                let image = textView.snapshot()

                UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil)
            }
        }
    }
}

/*
 Important: In order to call UIImageWriteToSavedPhotosAlbum() you must add the NSPhotoLibraryAddUsageDescription key to your Info.plist and explain to the user why you want to write images. If you fail to do this your app will crash when you attempt to write out the image.
 */

struct UsingHostingController: View
{
    var body: some View
    {
        CntentView() //Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct UsingHostingController_Previews: PreviewProvider
{
    static var previews: some View
    {
        UsingHostingController()
    }
}
