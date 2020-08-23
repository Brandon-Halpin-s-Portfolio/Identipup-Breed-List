//
//  BreedsTableViewController.swift
//  Identipup
//
//  Created by Courant Guest on 11/29/19.
//  Copyright © 2019 Nahckjoon Kim. All rights reserved.
//

import UIKit

//This view controller controls the Breed List, found in the bottom left-hand corner of the screen
//This controls the list of supported breeds that the user may learn more about through links to the American Kennel Club (AKC)
class BreedsTableViewController: UITableViewController {
    
    //This array stores URLs to the American Kennel Club web page for each of the supported breeds
    let dogBreeds = [
        "https://www.akc.org/dog-breeds/australian-shepherd/",
        "https://www.akc.org/dog-breeds/beagle/",
        "https://www.akc.org/dog-breeds/boxer/",
        "https://www.akc.org/dog-breeds/bulldog/",
        "https://www.akc.org/dog-breeds/dachshund/",
        "https://www.akc.org/dog-breeds/french-bulldog/",
        "https://www.akc.org/dog-breeds/german-shepherd-dog/",
        "https://www.akc.org/dog-breeds/german-shorthaired-pointer/",
        "https://www.akc.org/dog-breeds/golden-retriever/",
        "https://www.akc.org/dog-breeds/labrador-retriever/",
        "https://www.akc.org/dog-breeds/pembroke-welsh-corgi/",
        "https://www.akc.org/dog-breeds/poodle-standard/",
        "https://www.akc.org/dog-breeds/rottweiler/",
        "https://www.akc.org/dog-breeds/siberian-husky/",
        "https://www.akc.org/dog-breeds/yorkshire-terrier/",
    ]
    
    //This array stores the names of each of the supported breeds
    let dogNames = [
    "Australian Shepherd",
    "Beagle",
    "Boxer",
    "Bulldog",
    "Dachshund",
    "French Bulldog",
    "German Shepherd",
    "German Shorthaired Pointer",
    "Golden Retriever",
    "Labrador Retriever",
    "Pembroke Welsh Corgi",
    "Poodle (Standard)",
    "Rottweiler",
    "Siberian Husky",
    "Yorkshire Terrier",
    ]
    
    
        
    override func viewDidLoad() {
        super.viewDidLoad()

        //Sets up design for the base layer of the view controller
        self.tableView.reloadData()
        self.tableView.separatorStyle = .none
        self.tableView.backgroundColor = UIColor.turqoise
    }

    // MARK: - Table view data source

    //Returns number of sections
    //For this app, only one section is used
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    //This function returns the number of rows in one section
    //In the functioning of this app, this is the number of tabs the user can select from
    //This is equal to one per supported breed
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 75
    }
    
    var i = 0

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        self.i = indexPath.row
        self.performSegue(withIdentifier: "infoCell", sender: self)
        
        self.tableView.deselectRow(at: indexPath, animated: true)
    }

    //Sets up the parameters and settings for the main Breed Table View
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! BreedTableViewCell
        cell.cellLabel.text = dogNames[indexPath.row]
        cell.myIndex = indexPath.row
        
        cell.cellView.layer.cornerRadius = 12
        cell.backgroundColor = UIColor.turqoise
        cell.cellView.backgroundColor = UIColor.offWhite
        cell.cellView.layer.borderWidth = 2
        cell.cellView.layer.borderColor = UIColor(hexString: "003049")!.cgColor
        cell.cellView.layer.shadowColor = UIColor.darkGray.cgColor
        cell.cellView.layer.shadowOpacity = 0.3
        cell.cellView.layer.shadowRadius = 2
        
        return cell
    }

    
    // MARK: - Navigation
 
 	//Prepares for incoming segue
 	//Passes the appropriate URL from the array as the destination for the segue 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "infoCell" {
            if let destination = segue.destination as? InformationViewController {
                destination.myURLString = dogBreeds[self.i]
            }
        }
    }
    

}
