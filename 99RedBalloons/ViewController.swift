//
//  ViewController.swift
//  99RedBalloons
//
//  Created by Revanth Samavedam on 11/11/14.
//  Copyright (c) 2014 cornFalkes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    var balloons: [Balloons] = []
    var currentIndex = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
// Initialize the balloon objects
        
        var balloon1 = Balloons()
        var balloon2 = Balloons()
        var balloon3 = Balloons()
        var balloon4 = Balloons()
        var balloon5 = Balloons()
        
// Define balloons
       
        balloon1.name = "0 balloon"
        balloon1.image = UIImage(named: "BerlinTVTower.jpg")
        balloon1.balloonNumber = 1
        
        balloon2.name = "2 balloons"
        balloon2.image = UIImage(named: "RedBalloon1.jpg")
        balloon2.balloonNumber = 2
        
        balloon3.name = "3 balloons"
        balloon3.image = UIImage(named: "RedBalloon2.jpg")
        balloon3.balloonNumber = 3
        
        balloon4.name = "5 balloons"
        balloon4.image = UIImage(named: "RedBalloon3.jpg")
        balloon4.balloonNumber = 4
        
        balloon5.name = "10 balloons"
        balloon5.image = UIImage(named: "RedBalloon4.jpg")
        balloon5.balloonNumber = 5
        
// Add balloon to balloons array
        
        balloons = [balloon1,balloon2,balloon3,balloon4,balloon5]
        
        self.imageView.image = UIImage(named: "BerlinTVTower.jpg")
        self.textLabel.text = "Hurray"
        
    }
    
//Random balloon image generator
    
    func randomBalloonImageAssignment (balloonNumber:Int) -> String {
    
        var imageName:String = ""
        
        
        switch balloonNumber {
            
        case 0: imageName = "BerlinTVTower.jpg"
        
        case 1: imageName = "RedBalloon1.jpg"
            
        case 2: imageName = "RedBalloon2.jpg"
            
        case 3: imageName = "RedBalloon3.jpg"
            
        case 4: imageName = "RedBalloon4.jpg"
            
        default: "Default value"
            
        }
        
        return imageName
    
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

// Next button action:
    
    
    @IBAction func nextButtonAction(sender: UIBarButtonItem) {
        
        var randomIndex:Int
        
        
        do {
        
            randomIndex = Int(arc4random_uniform(UInt32(balloons.count)))
            
            var local_balloon = balloons[randomIndex]
            
            
            self.imageView.image = UIImage(named: randomBalloonImageAssignment(randomIndex))
            
            
            self.textLabel.text = local_balloon.name
            
        
        } while currentIndex == randomIndex
        
        currentIndex = randomIndex
        
        
    }
    

}

