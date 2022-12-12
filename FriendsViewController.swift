
import UIKit

class FriendsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    
    var friends : [Friend] = [Friend(friendName: "Patricio", friendImage: "foto1", friendRelation: "Mi best friend forever" ), Friend(friendName: "Señora Puf", friendImage: "foto2", friendRelation: "Mi profesora de autoescula")]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        friends.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let friendRow : FriendRow = tableView.dequeueReusableCell(withIdentifier: "friendCell", for: indexPath) as! FriendRow
        
        
        let friend = friends[indexPath.row]
        
        friendRow.friendName.text = friend.friendName
        friendRow.friendRelation.text = friend.friendRelation
        return friendRow
    }
    

    @IBOutlet weak var friendTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        friendTable.dataSource = self
        friendTable.delegate = self
        // Do any additional setup after loading the view.
    }
    

}


class FriendRow: UITableViewCell{
    @IBOutlet weak var friendName: UILabel!
    
    @IBOutlet weak var friendRelation: UILabel!
}


class Friend{
    var friendName : String
    var friendImage : String
    var friendRelation : String
    
    init(friendName: String, friendImage: String, friendRelation: String){
        self.friendName = friendName
        self.friendImage = friendImage
        self.friendRelation = friendRelation
    }
}
