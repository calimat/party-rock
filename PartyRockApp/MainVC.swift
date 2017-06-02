//
//  ViewController.swift
//  PartyRockApp
//
//  Created by Ricardo Herrera Petit on 5/30/17.
//  Copyright © 2017 Ricardo Herrera Petit. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var partyRocks = [PartyRock]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let imageUrlTest1 = "https://draw.acharts.net/artist/redfoo-54661f3e58d4e-l.png"
        let imageUrlTest2 = "http://boisemusicfestival.com/files/2015/03/mainstage_redfoo_630x420.jpg"
        let imageUrLTest3 = "http://www.smh.com.au/content/dam/images/3/v/7/y/z/image.related.articleLeadwide.620x349.1mxzg6.png/1430490683593.jpg"
        let imageUrLTest4 = "http://i.dailymail.co.uk/i/pix/2014/11/10/1415620068961_wps_7_Play_N_Skillz_Literally_I.jpg"
        let imageUrLTest5 = "http://i.dailymail.co.uk/i/pix/2014/08/27/article-2736051-20CDDDB100000578-286_634x849.jpg"
        
        
        let urlTest1 = "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/dCFZ8XSpZSk\" frameborder=\"0\" allowfullscreen></iframe>"
        let urlTest2 = "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/c_3xZgvy6fo\" frameborder=\"0\" allowfullscreen></iframe>"
        let urlTest3 = "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/tWyuglGCKgE\" frameborder=\"0\" allowfullscreen></iframe>"
        let urlTest4 = "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/SkTt9k4Y-a8\" frameborder=\"0\" allowfullscreen></iframe>"
        let urlTest5 = "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/JwQZQygg3Lk\" frameborder=\"0\" allowfullscreen></iframe>"
        
        
        let p1 = PartyRock(imageURL: imageUrlTest1, videoURL: urlTest1, videoTitle: "RedFoo Sockin it to Ya 48 hour socks SALE")
        let p2 = PartyRock(imageURL: imageUrlTest2, videoURL: urlTest2, videoTitle: "Video 2")
         let p3 = PartyRock(imageURL: imageUrLTest3, videoURL: urlTest3, videoTitle: "Video 3")
         let p4 = PartyRock(imageURL: imageUrLTest4, videoURL: urlTest4, videoTitle: "Video 4")
         let p5 = PartyRock(imageURL: imageUrLTest5, videoURL: urlTest5, videoTitle: "Video 5")
        
        
        
        partyRocks.append(p1)
        partyRocks.append(p2)
        partyRocks.append(p3)
        partyRocks.append(p4)
        partyRocks.append(p5)
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath) as? PartyCell {
            
            
            let partyRock = partyRocks[indexPath.row]
            
            cell.updateUI(partyRock: partyRock)
            
            return cell
            
            
        } else {
            return UITableViewCell()
        }
        
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyRocks.count
    }
    
    


}

