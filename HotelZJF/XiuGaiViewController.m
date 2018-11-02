//
//  XiuGaiViewController.m
//  HotelZJF
//
//  Created by sjl on 2018/6/15.
//  Copyright © 2018年 sjl. All rights reserved.
//

#import "XiuGaiViewController.h"

@interface XiuGaiViewController ()

@end

@implementation XiuGaiViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.hotelName.text = self.xgHotel.hotelName;
    self.hotelPrice.text = self.xgHotel.hotelPrice;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if([[segue identifier]isEqualToString:@"XiuGaiShowHotelTable"]){
        HotelTableViewController *hotelTableVC = [segue destinationViewController];
        //hotelTableVC.hotelList = [[NSMutableArray alloc]init];
        hotelTableVC.hotelList = self.hotelList;
    }
}


- (IBAction)finish:(UIButton *)sender {
    self.xgHotel.hotelName = self.hotelName.text;
    self.xgHotel.hotelPrice = self.hotelPrice.text;
}
@end
