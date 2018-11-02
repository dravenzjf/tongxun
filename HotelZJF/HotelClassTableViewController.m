//
//  HotelClassTableViewController.m
//  HotelZJF
//
//  Created by sjl on 2018/6/15.
//  Copyright © 2018年 sjl. All rights reserved.
//

#import "HotelClassTableViewController.h"

@interface HotelClassTableViewController ()

@end

@implementation HotelClassTableViewController

-(void)makeData{
    HotelClass *hotelClass = [[HotelClass alloc]init];
    hotelClass.hotelClassID = @"1";
    hotelClass.hotelClassName = @"经济型";
    [self.hotelClassList addObject:hotelClass];
    
    hotelClass = [[HotelClass alloc]init];
    hotelClass.hotelClassID = @"2";
    hotelClass.hotelClassName = @"三星级";
    [self.hotelClassList addObject:hotelClass];
    
    Hotel *hotel = [[Hotel alloc]init];
    hotel.hotelID = @"1";
    hotel.hotelName = @"如家star";
    hotel.hotelPrice = @"520";
    hotel.hotelClassName = @"经济型";
    [self.hotelList addObject:hotel];
    
    hotel = [[Hotel alloc]init];
    hotel.hotelID = @"2";
    hotel.hotelName = @"布丁";
    hotel.hotelPrice = @"250";
    hotel.hotelClassName = @"经济型";
    [self.hotelList addObject:hotel];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.hotelClassList = [[NSMutableArray alloc]init];
    self.hotelList = [[NSMutableArray alloc]init];
    [self makeData];
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

    return [self.hotelClassList count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"HotelClassCell" forIndexPath:indexPath];
    
    NSInteger curRow = indexPath.row;
    HotelClass *hotelClass = [self.hotelClassList objectAtIndex:curRow];
    cell.textLabel.text = hotelClass.hotelClassName;
    cell.detailTextLabel.text = @"";
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
    if([[segue identifier]isEqualToString:@"ShowHotelTable"]){
        NSIndexPath *ip = [self.tableView indexPathForSelectedRow];
        HotelClass *curHotelClass = [self.hotelClassList objectAtIndex:ip.row];
        HotelTableViewController *hotelTableVC = [segue destinationViewController];
        //初始化下一个界面的hotelList
        hotelTableVC.hotelList = [[NSMutableArray alloc]init];
        for(int i=0;i<[self.hotelList count];i++){
            Hotel* t1 = [self.hotelList objectAtIndex:i];
            //如果集合中hotelClass和当前hotelClass一致
            if(t1.hotelClassName == curHotelClass.hotelClassName){
                [hotelTableVC.hotelList addObject:t1];
            }
        }
    }
}


@end
