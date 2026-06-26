//
//  ViewController.swift
//  5330FinalProject
//
//  Created by J B on 6/26/26.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var landmarks = [
        LandmarkLocation("Mount St. Helens Volcanic National Monument", "Washington", "saint-helens"),
        LandmarkLocation("Dinosaur National Monument", "Colorado", "DinosaurNM"),
        LandmarkLocation("Grand Staircase National Monument", "Utah", "GrandStaircase"),
        LandmarkLocation("Giant Sequoias National Monument", "California", "Sequoias"),
        LandmarkLocation("Rio Grande del Norte National Monument", "New Mexico", "RioGrande"),
        LandmarkLocation("Grand Canyon National Park", "Arizona", "GrandCanyon"),
        LandmarkLocation("Desert Peaks National Monument", "New Mexico", "DesertPeaks"),
        LandmarkLocation("Zion National Park", "Utah", "Zion"),
        LandmarkLocation("Bears Ears National Monument" , "Utah", "BearsEars"),
        LandmarkLocation("Misty Fjords National Monument", "Alaska", "MistyFjords")
        
    ]
    
    var selectedLandmark: LandmarkLocation?

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landmarks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = landmarks[indexPath.row].name
        content.secondaryText = landmarks[indexPath.row].location
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedLandmark = landmarks[indexPath.row]
        performSegue(withIdentifier: "toLandmarkDetails", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toLandmarkDetails" {
            let destination = segue.destination as! LandmarkDetailsViewController
            destination.selectedLandmark = selectedLandmark
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

