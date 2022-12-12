import UIKit

class FriendsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        friends.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellFriend: FriendCellViewController = tableView.dequeueReusableCell(withIdentifier: "cellFriend")
        
        return cellFriend
    }
    

    
    var friends : [Friend] = [Friend(nameFriend: "Patricio", imageFriend: "foto1", relationFriend: "My soul friend"), Friend(nameFriend: "Calamardo", imageFriend: "Foto2", relationFriend: "Compi de trabajo y veciono"), Friend(nameFriend: "Señorita Puf", imageFriend: "foto3", relationFriend: "Profe de autoescuela")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        friendsTable.dataSource = self
        friendsTable.delegate = self
        // Do any additional setup after loading the view.
    }
    
    
    
    
    @IBOutlet weak var friendsTable: UITableView!
    

}


class Friend{
    var nameFriend : String
    var imageFriend : String
    var relationFrined : String
    
    init(nameFriend: String, imageFriend : String, relationFriend : String){
        self.nameFriend = nameFriend
        self.imageFriend = imageFriend
        self.relationFrined = relationFriend
    }
}
