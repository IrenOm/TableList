//
//  DetailViewController.swift
//  TableList
//
//  Created by irena.omelana on 24/04/2023.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var trackImageView: UIImageView!
    @IBOutlet weak var trackNameLable: UILabel!
    
    var song: Song!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if song != nil {
            trackImageView.image = UIImage(named: song.cover)
            trackNameLable.text = song.track + " " + song.album
            trackNameLable.numberOfLines = 0
        }

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
