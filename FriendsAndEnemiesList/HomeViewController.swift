import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        friendsView.isHidden = false
        enemiesView.isHidden = true
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var friendsView: UIView!
    @IBOutlet weak var enemiesView: UIView!
    @IBAction func segmentedControl(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            view.backgroundColor = .red
            friendsView.isHidden = false
            enemiesView.isHidden = true
        }else if sender.selectedSegmentIndex == 1 {
            view.backgroundColor = .brown
            friendsView.isHidden = true
            enemiesView.isHidden = false
        }
        
        
        
    }
 
    

}
