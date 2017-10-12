//
//  SecondScreenController.swift
//  RecreationOfColor
//
//  Created by Nielsen, Ethan on 10/12/17.
//  Copyright © 2017 Ctech. All rights reserved.
//

import UIKit

public class SecondScreenController : UIViewController
{
    private lazy var color : ColorTools = ColorTools()  //private lazy var color = ColorTools()
    
    public override func viewDidLoad()
    {
        super.viewDidLoad()
        view.backgroundColor = color.createRandomColor()
    }
}
