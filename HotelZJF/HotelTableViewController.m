//
//  HotelTableViewController.m
//  HotelZJF
//
//  Created by sjl on 2018/6/15.
//  Copyright © 2018年 sjl. All rights reserved.
//

#import "HotelTableViewController.h"

@interface HotelTableViewController ()

@end

@implementation HotelTableViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    //self.hotelList = [[NSMutableArray alloc]init];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return [self.hotelList count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"HotelCell" forIndexPath:indexPath];
    
    NSInteger curRow = indexPath.row;
    Hotel *hotel = [self.hotelList objectAtIndex:curRow];
    
    
    cell.textLabel.text = hotel.hotelName;
    cell.detailTextLabel.text = @"";
    //创建一个label来存放价格
    UILabel *label = [[UILabel alloc]init];
    label.text = [@"价格¥" stringByAppendingString:hotel.hotelPrice];
    label.font = [UIFont systemFontOfSize:14];
    label.textColor = [UIColor redColor];
    [label sizeToFit];
    //x,y,width,height
    label.frame = CGRectMake( 280 , 15, label.frame.size.width, label.frame.size.height);
    
    [cell.contentView addSubview:label];
        
    
    return cell;
    
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if([[segue identifier]isEqualToString:@"ShowHotelDetail"]){
        NSIndexPath *ip = [self.tableView indexPathForSelectedRow];
        Hotel *curHotel = [self.hotelList objectAtIndex:ip.row];
        HotelDetailViewController *hotelDetailVC = [segue destinationViewController];
        //将这个hotel指针传过去
        hotelDetailVC.hdHotel = curHotel;
        //将hotelList数据传过去，用于修改完成后返回
        //hotelDetailVC.hotelList = [[NSMutableArray alloc]init];
        hotelDetailVC.hotelList = self.hotelList;
    }
}


@end
