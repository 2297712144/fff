//
//  PersonalCenterTableViewController.swift
//  f3hyj
//
//  Created by JoymanM on 16/5/9.
//  Copyright © 2016年 hyju. All rights reserved.
//

import UIKit


class PersonalCenterTableViewController: UITableViewController {

    var myListArray:NSMutableArray = []
    
    //let emptyDictionary = d<String, Float>()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.whiteColor()
        //去除尾部多余的空行
        self.tableView.tableFooterView = UIView(frame:CGRectZero)
        
        /*
        if myListArray.count <= 1{
            myListArray.removeAllObjects()
            myListArray.addObject([["您没有登录哦!"],["我的订单"],["发货信息"]])
            myListArray.addObject([["我的购物车"],["我的收藏"]])
            myListArray.addObject([["我的红包"],["我的优惠卷"],["我的积分"]])
            myListArray.addObject([["个人设置"],["收货地址"],["关于慧友居"]])
        }
 
        print("font:\([1])")
        */
 
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        
    }
    
    
    /*
    //设置Footer颜色
    override func tableView(tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let footerView = UIView(frame: CGRectMake(0, 0, tableView.frame.size.width, 10))
        footerView.backgroundColor = UIColor.blackColor()
        
        return nil
    }


    //设置Footer和头高度
    override func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 10.0
    }
 */
 
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 4
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if section == 0 {
            return 3
        }
        else if section == 1{
            return 3
        }
        else if section == 2{
            return 3
        }
        else {
            return 3
        }
    }

    
    /*
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("myCell", forIndexPath: indexPath)
        
        
        //let text = myListArray[[1][1]]
        //print("font:\(text)")
        
        //cell.textLabel?.text = text as! String
        
        
        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
    }
 
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if indexPath.section == 0{
            if indexPath.row == 1{
                performSegueWithIdentifier("goMyOrder", sender: nil)
            }
        }
        else if indexPath.section == 1{
            if indexPath.row == 0{
                performSegueWithIdentifier("goMyOrder", sender: nil)
            }
            else if indexPath.row == 1{
                performSegueWithIdentifier("goMyOrder", sender: nil)
            }
            else if indexPath.row == 2{
                performSegueWithIdentifier("goMyOrder", sender: nil)
            }
        }
        else if indexPath.section == 2{
            if indexPath.row == 0{
                performSegueWithIdentifier("goMyOrder", sender: nil)
            }
            else if indexPath.row == 1{
                performSegueWithIdentifier("goMyOrder", sender: nil)
            }
            else if indexPath.row == 2{
                performSegueWithIdentifier("goMyOrder", sender: nil)
            }
        }
        else if indexPath.section == 3{
            if indexPath.row == 0{
                performSegueWithIdentifier("goMyOrder", sender: nil)
            }
            else if indexPath.row == 1{
                performSegueWithIdentifier("goMyOrder", sender: nil)
            }
            else if indexPath.row == 2{
                performSegueWithIdentifier("goMyOrder", sender: nil)
            }
        }
    }

}
