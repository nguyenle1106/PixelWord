//
//  ChooseFationViewController.swift
//  PixelWorld
//
//  Created by Nguyên Lê on 7/3/24.
//

import UIKit

class ChooseFationViewController: UIViewController {

    @IBOutlet weak var startGamebtn: CustomButton!
    @IBOutlet weak var armorLable: UILabel!
    @IBOutlet weak var magicianLable: UILabel!
    
    var character : Character!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Cho phép magician nhận sự kiện người dùng
        magicianLable.isUserInteractionEnabled = true
        // Thêm UITapGestureRecognizer vào magicianLable . UITapGestureRecognizer là lớp con của GestureRecognize và GestureRecognize là đối tượng để phát hiện cử chỉ người dùng
        magicianLable.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(magicianTapped)))

        armorLable.isUserInteractionEnabled = true
        armorLable.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(armorTapped)))
        
        character = Character()
    }
    
    @objc func magicianTapped(){
        //character.factionName = "Magicican"
        //startGamebtn.isEnabled = true
        seclectFacticonName(name: "Magiclan")
        //startGamebtn.backgroundColor = UIColor.yellow
    
    }
    
    @objc func armorTapped(){
        //character.factionName = "Armor"
       // startGamebtn.isEnabled = true
        seclectFacticonName(name: "Armor")
        //startGamebtn.backgroundColor = UIColor.red
       
    }
    
    func seclectFacticonName(name:String){
//        if(startGamebtn == magicianLable){
//            startGamebtn.backgroundColor = UIColor.yellow
//            //print("Faction selected \(name)")
//        } else {
//            startGamebtn.backgroundColor = UIColor.red
//            //print("Faction selected \(name)")
//        }
        character.factionName = name
        startGamebtn.isEnabled = true
        //print("Faction selected \(name)")
    }
     
    @IBAction func onStartGamePressed(_ sender: Any) {
        performSegue(withIdentifier: "inGameSegue", sender: self) //Điều hướng từ màn hình viewController từ màn hình này sang mànn hình khác ,"inGameSegue" là Identifier và self lại màn hình viewController
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let inGameVc = segue.destination as? InGameViewController {
            inGameVc.character = character

        }else {
            print("nill")
        }
    }
}
