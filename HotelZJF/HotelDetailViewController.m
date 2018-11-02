//
//  HotelDetailViewController.m
//  HotelZJF
//
//  Created by sjl on 2018/6/15.
//  Copyright © 2018年 sjl. All rights reserved.
//

#import "HotelDetailViewController.h"

@interface HotelDetailViewController ()

@end

@implementation HotelDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.hotelID.text = self.hdHotel.hotelID;
    self.hotelClassName.text = self.hdHotel.hotelClassName;
    self.hotelName.text = self.hdHotel.hotelName;
    self.hotelPrice.text = self.hdHotel.hotelPrice;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if([[segue identifier]isEqualToString:@"ShowXiuGai"]){
        XiuGaiViewController *xiuGaiVC = [segue destinationViewController];
        xiuGaiVC.xgHotel = self.hdHotel;
        //将hotelList数据传过去，用于修改完成后返回
        //xiuGaiVC.hotelList = [[NSMutableArray alloc]init];
        xiuGaiVC.hotelList = self.hotelList;
    }
}


@end
