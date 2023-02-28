//
//  SwiftUIExamples.swift
//  swiftful
//
//  Created by Ole Ejby Reinau on 19/12/2022.
//

import SwiftUI

struct ExamplesModel: Identifiable
{
    let id: String = UUID().uuidString
    let name: String
}

class ExamplesViewModel: ObservableObject
{
    @Published var examples: [ExamplesModel] = []
    
    init()
    {
        getExamples()
    }
    
    func getExamples()
    {
        let example01 = ExamplesModel(name: "ActionsheetBootcamp")
        let example02 = ExamplesModel(name: "AlertBootcamp")
        let example03 = ExamplesModel(name: "AnimationBootcamp")
        let example04 = ExamplesModel(name: "AnimationTimingBootcamp")
        let example05 = ExamplesModel(name: "BackgroundAndOverlayBootcamp")
        let example06 = ExamplesModel(name: "ButtonsBootcamp")
        let example07 = ExamplesModel(name: "ColorPickerBootcamp")
        let example08 = ExamplesModel(name: "ColorsBootcamp")
        let example09 = ExamplesModel(name: "ConditionalBootcamp")
        let example10 = ExamplesModel(name: "ContextMenuBootcamp")
        
        let example11 = ExamplesModel(name: "DatePickerBootcamp")
        let example12 = ExamplesModel(name: "EnvironmentObjectBootcamp")
        let example13 = ExamplesModel(name: "ExtractedFunctionsBootcamp")
        let example14 = ExamplesModel(name: "ExtractSubviewsBootcamp")
        let example15 = ExamplesModel(name: "ForEachBootcamp")
        let example16 = ExamplesModel(name: "FrameBootcamp")
        let example17 = ExamplesModel(name: "GradientsBootcamp")
        let example18 = ExamplesModel(name: "GridBootcamp")
        let example19 = ExamplesModel(name: "IconsBootcamp")
        let example20 = ExamplesModel(name: "ImageBootcamp")

        let example21 = ExamplesModel(name: "InitializerBootcamp")
        let example22 = ExamplesModel(name: "ListBootcamp")
        let example23 = ExamplesModel(name: "ModelBootcamp")
        let example24 = ExamplesModel(name: "NavigationViewBootcamp")
        let example25 = ExamplesModel(name: "OnAppearBootcamp")
        let example26 = ExamplesModel(name: "PaddingAndSpacerBootcamp")
        let example27 = ExamplesModel(name: "PickerBootcamp")
        let example28 = ExamplesModel(name: "PopoverBootcamp")
        let example29 = ExamplesModel(name: "SafeAreaBootcamp")
        let example30 = ExamplesModel(name: "ScrollViewBootcamp")

        let example31 = ExamplesModel(name: "ShapesBootcamp")
        let example32 = ExamplesModel(name: "SheetsBootcamp")
        let example33 = ExamplesModel(name: "SliderBootcamp")
        let example34 = ExamplesModel(name: "SpacerBootcamp")
        let example35 = ExamplesModel(name: "StacksBootcamp")
        let example36 = ExamplesModel(name: "StateBootcamp")
        let example37 = ExamplesModel(name: "StepperBootcamp")
        let example38 = ExamplesModel(name: "TabViewBootcamp")
        let example39 = ExamplesModel(name: "TapGestureBootcamp")
        let example40 = ExamplesModel(name: "TernaryBootcamp")

        let example41 = ExamplesModel(name: "TextBootcamp")
        let example42 = ExamplesModel(name: "TextEditorBootcamp")
        let example43 = ExamplesModel(name: "TextfieldBootcamp")
        let example44 = ExamplesModel(name: "ToggleBootcamp")
        let example45 = ExamplesModel(name: "TransitionBootcamp")
        let example46 = ExamplesModel(name: "ViewModelBootcamp")

        self.examples.append(example01)
        self.examples.append(example02)
        self.examples.append(example03)
        self.examples.append(example04)
        self.examples.append(example05)
        self.examples.append(example06)
        self.examples.append(example07)
        self.examples.append(example08)
        self.examples.append(example09)
        self.examples.append(example10)
        
        self.examples.append(example11)
        self.examples.append(example12)
        self.examples.append(example13)
        self.examples.append(example14)
        self.examples.append(example15)
        self.examples.append(example16)
        self.examples.append(example17)
        self.examples.append(example18)
        self.examples.append(example19)
        self.examples.append(example20)
        
        self.examples.append(example21)
        self.examples.append(example22)
        self.examples.append(example23)
        self.examples.append(example24)
        self.examples.append(example25)
        self.examples.append(example26)
        self.examples.append(example27)
        self.examples.append(example28)
        self.examples.append(example29)
        self.examples.append(example30)
        
        self.examples.append(example31)
        self.examples.append(example32)
        self.examples.append(example33)
        self.examples.append(example34)
        self.examples.append(example35)
        self.examples.append(example36)
        self.examples.append(example37)
        self.examples.append(example38)
        self.examples.append(example39)
        self.examples.append(example40)
        
        self.examples.append(example41)
        self.examples.append(example42)
        self.examples.append(example43)
        self.examples.append(example44)
        self.examples.append(example45)
        self.examples.append(example46)
    }
}

struct ExamplesView: View
{    
    @StateObject var examplesViewModel: ExamplesViewModel = ExamplesViewModel()

    var body: some View
    {
        NavigationView
        {
            List(examplesViewModel.examples)
            { example in NavigationLink(example.name, destination:
                ExampleView(example: example)
            )}
            .navigationTitle("Examples")
        }
        .listStyle(.plain)
        .task
        {
        }
    }
}

struct ExampleView: View
{
    let example: ExamplesModel
    
    var body: some View
    {
        switch example.name
        {
            case "ActionsheetBootcamp": ActionsheetBootcamp()
            case "AlertBootcamp": AlertBootcamp()
            case "AnimationBootcamp": AnimationBootcamp()
            case "AnimationTimingBootcamp": AnimationTimingBootcamp()
            case "BackgroundAndOverlayBootcamp": BackgroundAndOverlayBootcamp()
            case "ButtonsBootcamp": ButtonsBootcamp()
            case "ColorPickerBootcamp": ColorPickerBootcamp()
            case "ColorsBootcamp": ColorsBootcamp()
            case "ConditionalBootcamp": ConditionalBootcamp()
            case "ContextMenuBootcamp": ContextMenuBootcamp()
            
            case "DatePickerBootcamp": DatePickerBootcamp()
            case "EnvironmentObjectBootcamp": EnvironmentObjectBootcamp()
            case "ExtractedFunctionsBootcamp": ExtractedFunctionsBootcamp()
            case "ExtractSubviewsBootcamp": ExtractSubviewsBootcamp()
            case "ForEachBootcamp": ForEachBootcamp()
            case "FrameBootcamp": FrameBootcamp()
            case "GradientsBootcamp": GradientsBootcamp()
            case "GridBootcamp": GridBootcamp()
            case "IconsBootcamp": IconsBootcamp()
            case "ImageBootcamp": ImageBootcamp()
            
            case "InitializerBootcamp": InitializerBootcamp(count: 3, fruit: .apple)
            case "ListBootcamp": ListBootcamp()
            case "ModelBootcamp": ModelBootcamp()
            case "NavigationViewBootcamp": NavigationViewBootcamp()
            case "OnAppearBootcamp": OnAppearBootcamp()
            case "PaddingAndSpacerBootcamp": PaddingAndSpacerBootcamp()
            case "PickerBootcamp": PickerBootcamp()
            case "PopoverBootcamp": PopoverBootcamp()
            case "SafeAreaBootcamp": SafeAreaBootcamp()
            case "ScrollViewBootcamp": ScrollViewBootcamp()
            
            case "ShapesBootcamp": ShapesBootcamp()
            case "SheetsBootcamp": SheetsBootcamp()
            case "SliderBootcamp": SliderBootcamp()
            case "SpacerBootcamp": SpacerBootcamp()
            case "StacksBootcamp": StacksBootcamp()
            case "StateBootcamp": StateBootcamp()
            case "StepperBootcamp": StepperBootcamp()
            case "TabViewBootcamp": TabViewBootcamp()
            case "TapGestureBootcamp": TapGestureBootcamp()
            case "TernaryBootcamp": TernaryBootcamp()
            
            case "TextBootcamp": TextBootcamp()
            case "TextEditorBootcamp": TextEditorBootcamp()
            case "TextfieldBootcamp": TextfieldBootcamp()
            case "ToggleBootcamp": ToggleBootcamp()
            case "TransitionBootcamp": TransitionBootcamp()
            case "ViewModelBootcamp": ViewModelBootcamp()
            default:
               TextBootcamp()
        }
    }
}
    
struct SwiftUIExamples: View
{
    var body: some View
    {
        ExamplesView()
    }
}

struct SwiftUIExamples_Previews: PreviewProvider
{
    static var previews: some View
    {
        SwiftUIExamples()
    }
}
