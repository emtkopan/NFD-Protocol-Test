//
//  Category1TableViewController.swift
//  NFD Protocol Test
//
//  Created by David Duong on 3/2/18.
//  Copyright © 2018 Duck Duck Duong. All rights reserved.
//

import UIKit

class Category1TableViewController: UITableViewController {

	var category1Array = [String]()
	
	var category2Array = [ProtocolDef]()
	
	override func viewDidLoad() {
        super.viewDidLoad()

		category1Array = ["Adult Cardiac","Adult Medical","Adult Trauma","OB/GYN","Pediatric"]
		
		category2Array =
			[ProtocolDef(protocolTitle: ["FirstFirst","FirstSecond","FirstThird"], protocolDescription: ""),
			 ProtocolDef(protocolTitle: ["SecondFirst","SecondSecond","SecondThird"], protocolDescription: ""),
			 ProtocolDef(protocolTitle: ["ThirdFirst","ThirdSecond","ThirdThird"], protocolDescription: "")]
		
		
			/*[ProtocolDef(protocolTitle: ["Atrial Fibrillation with Rapid Ventricular Response","Bradycardia/AV Blocks","Cardiac Arrest/AED","Cardiac Arrest - Asystole & EMD/PEA","Chest Pain or Presumed Acute Coronary Syndrome","Implantable Cardioverter Defibrillator (ICD) Deactivation","LVAD Transports","Premature Ventricular Contractions (PVCs) in Patients with Chest Pain","Presumed PSVT","Stemi Alert","Termination of Resuscitaiton (TOR)","Ventricular Fibrillation or Pulseless Ventricular Tachycardia","Wide Complex Tachycardia Presumed Ventricular Tachycardia"], protocolDescription: ""),
			 ProtocolDef(protocolTitle: ["Allergic Reaction/Anaphylaxis","Altered Mental Status (AMS)","Asthma","Congestive Heart Failure/Pulmonary Edema","COPD, Emphysema, Bronchitis","Agitated, Uncontrollable Patient or Patient with Presumed Excited Delirium or Psychosis","Field Determination of Death","Hypertensive Crisis","Hyperthermia/Heat Stroke","Hypoglycemia","Hypothermia","Nausea and Vomiting","Nerve Agent Exposure, Symptomatic","Overdose, Poisoning, Toxin Exposure","Respiratory Distress","Seizures","Sepsis","Shock","Stroke"], protocolDescription: ""),
			 ProtocolDef(protocolTitle: ["Trauma Patients Who Are Agitated, Combatitive, And/Or Uncontrollable", "Burns", "Cervical Spine Clearance", "Cyanide Exposure", "Drowning/Near Drowning", "Adult Pain Mangement - Post Trauma", "Spinal Motion Restriction", "Snake Bite", "Trauma Alert Criteria", "Trauma Arrest & Termination of Resuscitation (TOR)", "Uncontrollable Hemorrhage (Extremity)"], protocolDescription: ""),
			 ProtocolDef(protocolTitle: ["Apgar Scoring", "Eclampsia", "Obstetrical/Gynecological Emergencies" , "Cardiac Arrest with Pregnancy", "OB Delivery Complications", "Pre-Eclampsia"], protocolDescription: ""),
			 ProtocolDef(protocolTitle: ["General Rules for Pediatric Patients", "Pediatric Allergic Reactions/Anaphalaxis", "Pediatric Altered Mental Status (AMS), Syncope/Near Syncope", "Pediatric Asthma/Bronchospasm", "Pediatric Bradycardia", "Pediatric Burns", "Pediatric Cardiac Arrest, Asystole & EMD/PEA", "Pediatric Croup", "Pediatric Cyanide Exposure", "Pediatric Hypoglycemia", "Pediatric Hypovelemic Shock", "Pediatric Neonatal Resuscitation", "Pediatric Overdose/Ingestion", "Pediatric Seizures", "Pediatric Tachycardia", "Pediatric Trauma", "Pediatric Ventricular Fibrillation or Pulseless Ventricular Tachycardia", "Pediatric Drowning"], protocolDescription: "")]*/
		
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return category1Array.count
		
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "1stCell", for: indexPath) as UITableViewCell

		cell.textLabel?.text = category1Array[indexPath.row]
		
        return cell
		
    }
	override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		category1Array = category2Array[indexPath.row]
		
		performSegue(withIdentifier: "1stSegue", sender: category1Array)
	}
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		
		let indexPath : NSIndexPath = self.tableView.indexPathForSelectedRow! as NSIndexPath
		
		let destViewController = segue.destination as! Category2TableViewController
		
		var cat2Array2 : ProtocolDef
		
		cat2Array2 = category2Array[indexPath.row]
		
		destViewController.category2Array = cat2Array2.protocolTitle
	}
	
}
