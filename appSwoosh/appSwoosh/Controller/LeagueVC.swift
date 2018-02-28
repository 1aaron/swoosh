//
//  LeagueVC.swift
//  appSwoosh
//
//  Created by Developer on 2/28/18.
//  Copyright © 2018 Developer. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    var player: Player!
    
    @IBOutlet weak var btnNext: BorderButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        player = Player()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "fromLeagueToSkill", sender: self)
    }
    
    @IBAction func optionTapped(sender: UIButton) {
        if let text = sender.currentTitle {
            selectLeague(leagueType: text)
        } else {
            print("no title")
        }
    }
    
    func selectLeague(leagueType: String){
        player.desiredLeage = leagueType
        btnNext.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "fromLeagueToSkill") {
            let skillController = segue.destination as! SkillVC
            skillController.player = self.player
        }
    }
    
    @IBAction func unwindFrom(unwindSegue: UIStoryboardSegue){
        
    }
}
