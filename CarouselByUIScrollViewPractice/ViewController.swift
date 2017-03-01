//
//  ViewController.swift
//  CarouselByUIScrollViewPractice
//
//  Created by Keisei Saito on 2017/3/1.
//  Copyright © 2017年 keisei_1092. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var scrollView: UIScrollView!

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.

		let size = CGSize(width: scrollView.frame.size.width, height: scrollView.frame.size.height)

		let contentRect = CGRect(x: 0, y: 0, width: size.width * 4, height: size.height)
		let contentView = UIView(frame: contentRect)

		let subContentView = UIView(frame: CGRect(x: 0, y: 0, width: size.width, height: size.height))
		subContentView.backgroundColor = .green
		contentView.addSubview(subContentView)

		let secondContentView = UIView(frame: CGRect(x: size.width, y: 0, width: size.width, height: size.height))
		secondContentView.backgroundColor = .blue
		contentView.addSubview(secondContentView)

		let thirdContentView = UIView(frame: CGRect(x: size.width * 2, y: 0, width: size.width, height: size.height))
		thirdContentView.backgroundColor = .red
		contentView.addSubview(thirdContentView)

		let fourthContentView = UIView(frame: CGRect(x: size.width * 3, y: 0, width: size.width, height: size.height))
		fourthContentView.backgroundColor = .yellow
		contentView.addSubview(fourthContentView)

		scrollView.addSubview(contentView)
		scrollView.contentSize = contentView.frame.size
		scrollView.contentOffset = CGPoint(x: size.width, y: 0)
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

