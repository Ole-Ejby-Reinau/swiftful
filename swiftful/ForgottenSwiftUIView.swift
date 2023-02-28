import SwiftUI

private enum ForgottenPasswordField : Hashable {
    case email
    case button
}

@available(iOS 15.0.0, *)
struct ForgottenSwiftUIView: View {
    @FocusState private var focusField : ForgottenPasswordField?
    @State var email : String
    
    init(email: String)
    {
        self._email = State(initialValue: email)
    }
    
    var body: some View {
        NavigationView {
        VStack {
            HStack {
                Text("Email:")
                Spacer()
                TextField("Email", text:$email)
                    .focused($focusField, equals: .email)
                    .border(Color.red,
                            width:(focusField == .email
                                   ) ? 2 : 0)
            }
            HStack {
                Spacer()
                Button("Nyt kodeord") {
                    focusField = .email
                }
                .padding(.trailing, 30)
                .focused($focusField, equals : .button)
            }
            Spacer()
            }
        .toolbar {
//            ToolbarItem(placement: .navigation) {
                HStack{
            Button(role: .none, action: {print("pop")}, label: {Image("accept").resizable().aspectRatio(contentMode: .fill)
                .background(.green)})
            Button(role: .none, action: {print("icon")}, label: {Image("icon").resizable().aspectRatio(contentMode: .fit)
                    .background(.gray)
            })
            }}//}
            .toolbar {
                ToolbarItem(placement:
                        .navigationBarTrailing)
                {
                            Button(action: {print("menu")}, label: {Image("add").resizable().aspectRatio(contentMode: .fit)})
                    }}
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarTitle("Nyt kodeord")
        }.border(Color.red, width: 1)}

@available(iOS 15.0.0, *)
struct ForgottenSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ForgottenSwiftUIView(email: "")
    }
}
}
