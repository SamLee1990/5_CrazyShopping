//
//  ProductTableViewController.swift
//  5_CrazyShopping
//
//  Created by 李世文 on 2021/2/19.
//

import UIKit
import Foundation

class ProductTableViewController: UITableViewController {
    
    @IBOutlet var quantityUILabels: [UILabel]!
    @IBOutlet weak var totalAmountUILabel: UILabel!
    @IBOutlet var quantitySteppers: [UIStepper]!
    var salmonAmount = 0 //鮭魚價格
    var eelAmount = 0 //鰻魚價格
    var shrimpAmount = 0 //炸蝦價格
    var scallopAmount = 0 //干貝價格
    var totalAmountNum = 0 //總價格
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func quantitySetting(_ sender: UIStepper) {
        let quantity = Int(sender.value)
        let quantityString = "\(quantity)"

        switch sender {
        case quantitySteppers[0]:
            quantityUILabels[0].text = quantityString
            salmonAmount = quantity * 30
        case quantitySteppers[1]:
            quantityUILabels[1].text = quantityString
            eelAmount = quantity * 30
        case quantitySteppers[2]:
            quantityUILabels[2].text = quantityString
            shrimpAmount = quantity * 30
        case quantitySteppers[3]:
            quantityUILabels[3].text = quantityString
            scallopAmount = quantity * 90
        default:
            break
        }
        totalAmountNum = salmonAmount + eelAmount + shrimpAmount + scallopAmount
        //價錢字串格式設定
        let formatter = NumberFormatter()
        formatter.maximumFractionDigits = 0
        formatter.locale = Locale(identifier: "zh_TW")
        formatter.numberStyle = .currencyISOCode
        let totalAmountNumString = formatter.string(from: NSNumber(value: totalAmountNum))
        
        totalAmountUILabel.text = totalAmountNumString
    }
    
    

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
