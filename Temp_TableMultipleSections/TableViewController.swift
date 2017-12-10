//
//  TableViewController.swift
//  Temp_TableMultipleSections
//
//  Created by Fausto Checa on 10/12/17.
//  Copyright © 2017 Fausto Checa. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    
        let storeSections = ["Deportes", "Electrónica", "Librería"]
        
        let items = [
            ["Fútbol", "Tenis", "Baloncesto", "Ping-Pong", "Petanca", "Boxeo"],
            ["Tablet", "PC", "Teléfono", "Memorias", "Micrófono", "Play Station"],
            ["El Quijote", "La Celestina", "El Buscón", "Cien Años de Soledad", "El Quijote", "La Celestina", "El Buscón", "Cien Años de Soledad", "El Quijote", "La Celestina", "El Buscón", "Cien Años de Soledad", "El Quijote", "La Celestina", "El Buscón", "Cien Años de Soledad"]
    ]
        

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

   // -------------------------------
   
    // Delegate
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return CGFloat(integerLiteral: 80)
    }
    
    
    // Delegate
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let myView = UIView()
        myView.backgroundColor = UIColor.orange
        
        let myLabel = UILabel()
        let font = UIFont.boldSystemFont(ofSize: 22)
        myLabel.font = font
        
        myLabel.textAlignment = .center
        myLabel.text = self.storeSections[section]
        myLabel.frame = CGRect(x: 0, y: 0, width: 400, height: 80)
        
        myView.addSubview(myLabel)
        return myView
      
    }
    
    // -----------------------------
    
    
    // tableView
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return storeSections.count
    }

    //tableview
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return items[section].count
    }

    
    // tableview
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = self.items[indexPath.section][indexPath.row]
        return cell
    }
    

    

}
