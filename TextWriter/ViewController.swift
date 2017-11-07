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
		//allows notificatin of change in settings.
		NotificationCenter.default.addObserver(self, selector: #selector(detectIfSettingsChanged), name: UserDefaults.didChangeNotification, object: nil)
		
		
		
		
		}
	
	// MARK: - Outlets
	@IBOutlet weak var textView: UITextView!
	
	// MARK: - Functions
	@objc func detectIfSettingsChanged() {
		
		//testing: print("Night Mode Setting is: \(UserDefaults.standard.bool(forKey: "nightMode"))")
		
		//if night mode toggle is on
		//apply night theme
		// else restore default theme
		if UserDefaults.standard.bool(forKey: "nightMode") == true {
			//apply night theme
			//see same code block below for shorter way. 
			view.backgroundColor = UIColor.black
			textView.textColor = UIColor.white
			textView.keyboardAppearance = UIKeyboardAppearance.dark
			UIApplication.shared.statusBarStyle = UIStatusBarStyle.lightContent
			
		} else {
			//restore default theme
			//see above...this is a cleaner/easier way to write the same code.
			view.backgroundColor = .white
			textView.textColor = .black
			textView.keyboardAppearance = .default
			UIApplication.shared.statusBarStyle = .default
		}
		
	}
	
	
	
	


}

