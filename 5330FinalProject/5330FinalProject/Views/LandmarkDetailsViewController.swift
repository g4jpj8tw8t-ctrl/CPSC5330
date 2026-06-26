//
//  LandmarkDetailsViewController.swift
//  5330FinalProject
//
//  Created by J B on 6/26/26.
//

import UIKit

class LandmarkDetailsViewController: UIViewController {
    
    var selectedLandmark: LandmarkLocation?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let landmark = selectedLandmark {
            landmarkName.text = landmark.name
            stateLabel.text = landmark.location
            landmarkImage.image = UIImage(named: landmark.imageName)
        }

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var landmarkImage: UIImageView!
    
    @IBOutlet weak var landmarkName: UILabel!

    @IBOutlet weak var stateLabel: UILabel!
    
    @IBAction func `return`(_ sender: UIButton) {
        dismiss(animated: true)
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
