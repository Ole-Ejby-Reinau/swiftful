import SwiftUI

struct BookDetailData: Identifiable
{
    let id: String = UUID().uuidString
    let author: String
    let title: String
}


struct BookDetail: View
{
    struct BookPart : Hashable,Identifiable
    {
        let id: String = UUID().uuidString
        let part: String
        let icon: String
    }
    
    let parts: [BookPart] = [
        BookPart(part:"forside",icon:"heart.fill"), BookPart(part: "bagside", icon: "globe"),
        BookPart(part:"anmeldelse", icon:"house.fill"), BookPart( part:"behandling", icon:"person.fill")
    ]

    let icons: [String] = [
        "heart.fill", "globe", "house.fill", "person.fill"
    ]
    
    let book : BookDetailData
    
    init( book : BookDetailData)
    {
        self.book = book
    }
    
    var body: some View
    {
        NavigationView
        {
            TabView {
                BookCoverView()
                BookBackView()
                BookReviewView()
                BookTreatmentView()
            }
            .navigationTitle("\(book.author) : \(book.title)")
            .background(.green)
            .frame(height: 600)
            .tabViewStyle(PageTabViewStyle())
        }
    }
}

struct BookCoverView : View
{
    var body: some View
    {
        Image(systemName: "heart.fill")
            .resizable()
            .scaledToFit()
            .padding(30)
    }
}

struct BookReviewView : View
{
    var body: some View
    {
        Image(systemName: "globe")
            .resizable()
            .scaledToFit()
            .padding(30)
    }
}

struct BookBackView : View
{
    var body: some View
    {
        Image(systemName: "house.fill")
            .resizable()
            .scaledToFit()
            .padding(30)
    }
}

struct BookTreatmentView : View
{
    var body: some View
    {
        Image(systemName: "person.fill")
            .resizable()
            .scaledToFit()
            .padding(30)
    }
}

struct BookDetail_Previews: PreviewProvider
{
    static var previews: some View
    {
        BookDetail( book : BookDetailData( author : "Olsen", title: "De syv samuraier"))
    }
}
