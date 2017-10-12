//
//  ViewController.swift
//  RecreationOfColor
//
//  Created by Nielsen, Ethan on 10/10/17.
//  Copyright © 2017 Ctech. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var myColorApp: UILabel!
    @IBOutlet weak var secondButton: UIButton!
    
    @IBAction func secondMethod(_ sender: UIButton)
    {
        
        secondButton.backgroundColor = createRandomColor()
        view.backgroundColor = createRandomColor()
        secondButton.setTitleColor(createRandomColor(), for: .normal)
        if ( secondButton.backgroundColor == .blue)
        {
            secondButton.backgroundColor = .yellow
        }
        else
        {
            secondButton.backgroundColor = createRandomColor()
        }
        view.backgroundColor = createRandomColor()
    }
    
    private func createRandomColor() -> UIColor
    {
        let newColor :UIColor
        let redValue :CGFloat = CGFloat (Double (arc4random_uniform(256)) / 255.00)
        let greenValue :CGFloat = CGFloat (Double (arc4random_uniform(256)) / 255.00)
        let blueValue :CGFloat = CGFloat (Double (arc4random_uniform(256)) / 255.00)
        newColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: CGFloat(1.0))
        
        return newColor
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

