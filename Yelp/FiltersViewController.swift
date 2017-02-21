//
//  FiltersViewController.swift
//  Yelp
//
//  Created by Pratyush on 2/14/16.
//  Copyright © 2016 Timothy Lee. All rights reserved.
//

import UIKit

class FiltersViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
  
  @IBOutlet weak var tableView: UITableView!
  
  var categories: [[String: String]]!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    categories = yelpCategories()
    
    tableView.delegate = self
    tableView.dataSource = self
    
    
    // Do any additional setup after loading the view.
  }
  
  @IBAction func onCancelButton(_ sender: AnyObject) {
    dismiss(animated: true, completion: nil)
  }
  
  @IBAction func onSearchButton(_ sender: AnyObject) {
    dismiss(animated: true, completion: nil)
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return categories.count
    
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "SwitchCell", for: indexPath) as! SwitchCell
    
    
    return cell
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  func yelpCategories() -> [[String:String]] {
    let categories: [[String:String]] = [
      ["name" : "African", "code": "african"],
      ["name" : "American, New", "code": "newamerican"],
      ["name" : "Argentine", "code": "argentine"],
      ["name" : "Asian Fusion", "code": "asianfusion"],
      ["name" : "Burmese", "code": "burmese"],
      ["name" : "Chinese", "code": "chinese"],
      ["name" : "Fast Food", "code": "hotdogs"],
      ["name" : "Indian", "code": "indpak"],
      ["name" : "Italian", "code": "italian"],
      ["name" : "Japanese", "code": "japanese"],
      ["name" : "Korean", "code": "korean"],
      ["name" : "Pizza", "code": "pizza"],
      ["name" : "Thai", "code": "thai"],
      ["name" : "Vegetarian", "code": "vegetarian"],
      ["name" : "Vietnamese", "code": "vietnamese"]]
    
    return categories
  }
  
  
  /*
  // MARK: - Navigation
  
  // In a storyboard-based application, you will often want to do a little preparation before navigation
  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
  // Get the new view controller using segue.destinationViewController.
  // Pass the selected object to the new view controller.
  }
  */
  
}
