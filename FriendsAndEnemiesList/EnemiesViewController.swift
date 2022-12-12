
import UIKit

class EnemiesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var enemiesList: UITableView!

    var enemies : [Enemie] = [Enemie(enemieName: "Placton", enemieImage: "foto3", enemieRelation: "Jefe de la competencia")]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        enemies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let enemieRow : EnemieRow = tableView.dequeueReusableCell(withIdentifier: "enemieCell", for: indexPath) as! EnemieRow
        
        
        let enemie = enemies[indexPath.row]
        
    enemieRow.enemieName.text = enemie.enemieName
        enemieRow.enemieRelation.text = enemie.enemieRelation
        enemieRow.enemieImage.image = UIImage(named: "foto1")
       
        return enemieRow
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        enemiesList.dataSource = self
        enemiesList.delegate = self
    }

}


class EnemieRow: UITableViewCell {

    
    
    @IBOutlet weak var enemieImage: UIImageView!
    @IBOutlet weak var enemieName: UILabel!
    
    @IBOutlet weak var enemieRelation: UILabel!
}


class Enemie {
    var enemieName : String
    var enemieImage: String
    var enemieRelation: String
    
    
    init(enemieName: String, enemieImage: String, enemieRelation: String){
        self.enemieName = enemieName
        self.enemieImage = enemieImage
        self.enemieRelation = enemieRelation
    }
}

