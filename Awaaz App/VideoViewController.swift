//
//  VideoViewController.swift
//  AwaazIndia
//
//  Created by Khirish Meshram on 26/08/20.
//  Copyright © 2020 Sekai-Ichi. All rights reserved.

import UIKit
import FirebaseCore
import FirebaseFirestore
import FirebaseFirestore
import FirebaseDatabase

class VideoViewController: UIViewController {

    var db: Firestore!
    
    var ref: DatabaseReference! = Database.database().reference()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // [START setup]
        let settings = FirestoreSettings()

        Firestore.firestore().settings = settings
        // [END setup]
        db = Firestore.firestore()
        
    }
    
    private func getDocument() {
        // [START get_document]
        let docRef = db.collection("cities").document("SF")

        docRef.getDocument { (document, error) in
            if let document = document, document.exists {
                let dataDescription = document.data().map(String.init(describing:)) ?? "nil"
                print("Document data: \(dataDescription)")
            } else {
                print("Document does not exist")
            }
        }
        // [END get_document]
    }

    

}
