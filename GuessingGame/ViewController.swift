//
//  ViewController.swift
//  GuessingGame
//
//  Created by Brian Rodriguez on 2/6/17.
//  Copyright © 2017 Brian Rodriguez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet var result: UILabel!
	
	@IBOutlet var userGuess: UITextField!
	
	@IBAction func guess(_ sender: Any)
	{
		let randomNumber = String(arc4random_uniform(6));
		
		if userGuess.text == randomNumber
		{
			result.text = "You guessed correctly!";
		}
		else
		{
			result.text = "You guessed incorrectly. The answer was " + randomNumber;
		}
	}
	
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

