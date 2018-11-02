//
//  XiuGaiViewController.h
//  HotelZJF
//
//  Created by sjl on 2018/6/15.
//  Copyright © 2018年 sjl. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Hotel.h"
#import "HotelTableViewController.h"
@interface XiuGaiViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *hotelName;
@property (weak, nonatomic) IBOutlet UITextField *hotelPrice;
- (IBAction)finish:(UIButton *)sender;


//该页面接收到的hotel对象
@property Hotel *xgHotel;
//该页面接收到的hotelList对象
@property NSMutableArray *hotelList;
@end
