//
//  ViewController.swift
//  SQLiteData2
//
//  Created by Mac on 12/05/22.
//

import UIKit
import SQLite3// step1. import sqlite framework

class ViewController: UIViewController {
 
    
    @IBOutlet weak  private var ifTF: UITextField!
    @IBOutlet weak  private var nmaeTF: UITextField!
    @IBOutlet weak private var phoneTF: UITextField!
    //Mark: variables
    private var dbDetails: OpaquePointer?
    //Mark : Lifecycle method
    override func viewDidLoad() {
        super.viewDidLoad()
        
    // step2: Understand how to get the path for documents directory
        
        do{
            let documentDirectoryURL =  try FileManager.default.url(for: .documentDirectory,
                                                                    in: .userDomainMask, appropriateFor: nil, create: false)
            let dbpathURL = documentDirectoryURL.appendingPathComponent("bitcode.sqlite")
            let dbPathString = dbpathURL.absoluteURL
            print("DB should be created at: \(dbPathString)")
            
            //Step3: create/open an sqlite database in document directory
            var dbDetails: OpaquePointer?
            if  sqlite3_open
            
            //Step3.1: hold the refrence of DB for future use
            self.dbDetails = dbDetails
            
        }else  {
            print("DB cannot be opened")
        }
    }  catch let myError {
            print("Error is: \(myError.localizedDescription)")
        }
        
        
        
    }
    @IBAction func saveDataButtonAction(){
        
        
        
    }
    @IBAction func  readDataButtonAction(){
        
    }
  // Mark: Database methods
    
    
    
    
    
}

