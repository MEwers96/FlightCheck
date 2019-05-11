//
//  SelectionPage.swift
//  Flight Check
//
//  Created by user153727 on 5/10/19.
//  Copyright © 2019 Devvers. All rights reserved.
//

import UIKit

class SelectionPage: UIViewController{

    private let dataSource = ["Plane 1", "Plane 2"]
    
    @IBOutlet weak var selectionTable: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension SelectionPage: UITableViewDataSource{
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = selectionTable.dequeueReusableCell(withIdentifier: "basicCellStyle", for: indexPath)
        
        cell.textLabel!.text = dataSource[indexPath.item]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource[section].count
    }
}
