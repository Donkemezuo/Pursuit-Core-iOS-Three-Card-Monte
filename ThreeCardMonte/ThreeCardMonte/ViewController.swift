

import UIKit

class ViewController: UIViewController {
    
    // outlets Buttons
    
    @IBOutlet weak var Card0: UIButton!
    
    @IBOutlet weak var Card1: UIButton!
    
    @IBOutlet weak var Card2: UIButton!
    
    @IBOutlet weak var displayLabel: UILabel!
    
    // Action
    
    @IBAction func shuffledCard(_ sender: UIButton){
    
        var cardLogos: [UIImage] = [
        UIImage(named:"kingCard")!, UIImage(named:"threeCard")!, UIImage(named: "threeCard")!]
        
    cardLogos = cardLogos.shuffled()
        
        switch sender.tag {
        case 0:
            if cardLogos[0] == UIImage(named: "kingCard")! {
                Card0.setImage(UIImage.init(named: "kingCard"), for: .normal)
                displayLabel.text = "You win 🏆"
            } else {
                if cardLogos[0] != UIImage(named: "kingCard")! {
               Card0.setImage(UIImage.init(named: "threeCard"), for: .normal)
                    displayLabel.text = "Sorry you lost 💀"
            }
            }
            Card0.isEnabled = false
            Card1.isEnabled = false
            Card2.isEnabled = false
        case 1:
            if cardLogos[1] == UIImage(named: "kingCard")! {
                Card1.setImage(UIImage.init(named: "kingCard"), for: .normal)
                displayLabel.text = "You win 🏆"
            } else {
                if cardLogos[1] != UIImage(named: "kingCard"){
                Card1.setImage(UIImage.init(named: "threeCard"), for: .normal)
                displayLabel.text = "Sorry you lost 💀"
            }
            }
            Card0.isEnabled = false
            Card1.isEnabled = false
            Card2.isEnabled = false
        case 2:
            if cardLogos[2] == UIImage(named: "kingCard")! {
                Card2.setImage(UIImage.init(named: "kingCard"), for: .normal)
                displayLabel.text = "You win 🏆"
            } else {
                if cardLogos[2] != UIImage(named: "kingCard"){
                Card2.setImage(UIImage.init(named: "threeCard"), for: .normal)
                displayLabel.text = "Sorry you lost 💀"
            }
            }
            Card0.isEnabled = false
            Card1.isEnabled = false
            Card2.isEnabled = false
            
        default:
            print("Invalid Card")
        }
        Card0.isEnabled = false
        Card1.isEnabled = false
        Card2.isEnabled = false
    }
   
    override func viewDidLoad() {
    super.viewDidLoad()
   
}
    
    @IBAction func NewGame(_ sender: Any){
        displayLabel.text = "Pick a Card"
        Card0.isEnabled = true
        Card1.isEnabled = true
        Card2.isEnabled = true
        
        Card0.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
          Card1.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
          Card2.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
    }

}
