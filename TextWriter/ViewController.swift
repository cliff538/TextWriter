//
//  ViewController.swift
//  TextWriter
//
//  Created by Cliff Gurske on 11/6/17.
//  Copyright © 2017 Cliff Gurske. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	// MARK: - View Did Load
	override func viewDidLoad() {
		super.viewDidLoad()
		//makes keyboard come up on app launch or viewDidLoad. 
		textView.becomeFirstResponder()
		}
	
	// MARK: - Outlets
	@IBOutlet weak var textView: UITextView!
	
	
	
	


}

