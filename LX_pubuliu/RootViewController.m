//
//  RootViewController.m
//  LX_pubuliu
//
//  Created by  - - on 14-3-7.
//  Copyright (c) 2014年 chenqiang. All rights reserved.
//

#import "RootViewController.h"
#import "TableCell.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    _rightTableView=[[UITableView alloc]initWithFrame:CGRectMake(0, 0, 320/3, self.view.bounds.size.height)];
    [_rightTableView setDataSource:self];
    [_rightTableView setDelegate:self];
    [self.view addSubview:_rightTableView];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 8;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString*celldentity=@"Cell";
    
    TableCell*cell=[tableView dequeueReusableCellWithIdentifier:celldentity];
    if (Nil == cell) {
        cell = [[TableCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:celldentity];
        
            NSString*tupian=[NSString stringWithFormat:@"1.png"];
        [cell.imageView setImage:[UIImage imageNamed:tupian]];
        
    }
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString*string=[NSString stringWithFormat:@"1.jpg"];
    UIImage*image=[UIImage imageNamed: string];
    float scale=image.size.height/(320/3);
    float height=image.size.height/scale;
    return height;
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
