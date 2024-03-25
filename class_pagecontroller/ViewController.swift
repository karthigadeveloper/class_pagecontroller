//
//  ViewController.swift
//  class_pagecontroller
//
//  Created by Karthiga on 12/19/23.
//

import UIKit

class ViewController: UIViewController {
    var currentpage = 0
    

    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var pagectrl: UIPageControl!
    @IBOutlet weak var Next: UIButton!
    @IBOutlet weak var previous: UIButton!
    @IBOutlet weak var skip: UIButton!
    @IBOutlet weak var imagebox: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }

    @IBAction func skipbtn(_ sender: Any) {
        previous.isHidden = true
        Next.isHidden = true
        label1.text = "Thankyou"
        label2.text = ""
        label3.text = ""
        pagectrl.isHidden = true
    }
    @IBAction func prevbtn(_ sender: Any) {
        if currentpage > 0{
            currentpage -= 1
            imagebox.image = UIImage(named: "img1")
            updatepagecontroller()
        }
        else if currentpage > 1{
            currentpage -= 2
            imagebox.image = UIImage(named: "img2")
            updatepagecontroller()
        }else if currentpage > 2 {
            currentpage -= 3
            imagebox.image = UIImage(named: "img3")
            updatepagecontroller()
        }
        else if currentpage > 3{
            currentpage -= 4
            imagebox.image = UIImage(named: "img3")
            updatepagecontroller()
        }else{
            imagebox.image = UIImage(named: "img1")
            updatepagecontroller()
        }
    }
    
    @IBAction func nextbtn(_ sender: Any) {
        
        if currentpage < pagectrl.numberOfPages{
            currentpage += 1
            imagebox.image = UIImage(named: "img2")
            updatepagecontroller()
            label1.text = "purity"
            label2.text = "we provide pure water"
        }else if currentpage < pagectrl .numberOfPages{
            currentpage += 2
            imagebox.image = UIImage(named: "img3")
            
            updatepagecontroller()
        }
        else if currentpage<pagectrl.numberOfPages{
           
            currentpage += 3
            imagebox.image = UIImage(named: "img1")
            
            updatepagecontroller()
        }else{
            previous.isHidden = true
        }
    }
    func updatepagecontroller(){
        imagebox.image = UIImage(named: "img\(currentpage + 1)")
        pagectrl.currentPage = currentpage
    }
}

