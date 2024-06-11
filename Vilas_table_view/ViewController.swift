//
//  ViewController.swift
//  Vilas_table_view
//
//  Created by MSC_INDIA on 31/05/24.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return carTables.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        
        let cell = myTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! myTableCellTableViewCell
        
        cell.myImage.image = UIImage(named: carImages[indexPath.row])
        cell.myBMW.text = carTables[indexPath.row]
        return cell
    }
    
    
    var carTables:[String]=["BMW","HONDA","MAHINDRA","SUZUKI","WOLKSWAGEN"]
    var carImages:[String]=["BMW","HONDA","MAHINDRA","SUZUKI","WOLKSWAGEN"]
    
    @IBOutlet weak var myTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myTable.register(UINib(nibName: "myTableCellTableViewCell", bundle:nil), forCellReuseIdentifier: "cell")
    }
}
