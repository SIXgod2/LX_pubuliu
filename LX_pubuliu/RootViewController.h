//
//  RootViewController.h
//  LX_pubuliu
//
//  Created by  - - on 14-3-7.
//  Copyright (c) 2014年 chenqiang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RootViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>{
    UITableView*_leftTableView;
    UITableView*_rightTableView;
    UITableView*_centerTableView;
}

@end
