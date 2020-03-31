import Foundation
import SwiftUI
import Combine

public class MathFetcher: ObservableObject {
    
    @Published var maths = [Math]()
    
    init(){
        load()
    }
    
    func load() {
        let url = URL(string: "https://homeworklogger--lizardon.repl.co/homework")!
        
        
        
        URLSession.shared.dataTask(with: url) {(data,response,error) in
            do {
                if let d = data {
                    let decodedLists = try JSONDecoder().decode([Math].self, from: d)
                    DispatchQueue.main.async {
                        self.maths = decodedLists
                    }
                }else {
                    print("No Data")
                }
            } catch {
                print ("Error")
            }
            
        }.resume()
        
    }
}

struct Math: Codable, Identifiable {
    public var id: Int
    public var title: String
    public var duedate: String
    public var info: String
    public var subject: String
    public var teacher: String
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case title = "title"
        case duedate = "duedate"
        case info = "info"
        case subject = "subject"
        case teacher = "teacher"
    }
}

struct Math_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
