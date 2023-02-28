//
//  SwiftUIView.swift
//  swiftful
//
//  Created by Ole Ejby Reinau on 01/12/2022.
//

import SwiftUI

/*
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func loadView() {
        loadReactNativeView()
    }

    func loadReactNativeView() {
        let jsCodeLocation = URL(string: "http://localhost:8081/index.bundle?platform=ios")!
        
        let rootView = RCTRootView(
            bundleURL: jsCodeLocation,
            moduleName: "YourApp",
            initialProperties: nil,
            launchOptions: nil
        )
        self.view = rootView

    }
    
}
*/
struct SwiftUIView: View {
        
    var documentsUrl: URL {
        return FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
    }
    
    func load(fileName: String) -> UIImage? {
        let fileURL = documentsUrl.appendingPathComponent(fileName)
        do {
            let imageData = try Data(contentsOf: fileURL)
            return UIImage(data: imageData)
        } catch {
            print("Error loading image : \(error)")
        }
        return nil
    }
/*
    struct SomeView: UIViewControllerRepresentable {
        func makeUIViewController(context: Context) -> ViewController {
            let viewController = ViewController()
            //additional setup
            return viewController
        }
        func updateUIViewController(_ uiViewController: ViewController, context: Context) {
            //update Content
        }
    }

    struct ContentView: View {
        var body: some View {
            SomeView()
        }
    }
*/
    var body: some View {
        ContentView()
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
