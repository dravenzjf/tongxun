//
//  HotelDetailViewController.h
//  HotelZJF
//
//  Created by sjl on 2018/6/15.
//  Copyright © 2018年 sjl. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Hotel.h"
#import "XiuGaiViewController.h"
@interface HotelDetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *hotelID;
@property (weak, nonatomic) IBOutlet UITextField *hotelClassName;
@property (weak, nonatomic) IBOutlet UITextField *hotelName;
@property (weak, nonatomic) IBOutlet UITextField *hotelPrice;
//该页面接收到的hotel对象
@property Hotel *hdHotel;
//该页面接收到的hotelList对象
@property NSMutableArray *hotelList;
@end
