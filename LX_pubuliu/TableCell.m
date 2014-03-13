//
//  TableCell.m
//  LX_pubuliu
//
//  Created by  - - on 14-3-7.
//  Copyright (c) 2014年 chenqiang. All rights reserved.
//

#import "TableCell.h"

@implementation TableCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        self.showimageview=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 0, 0)];
        [self.contentView addSubview:_showimageview];
    }
    return self;
}
-(void)layoutSubviews{
    [super layoutSubviews];
    float scale=self.imageView.image.size.height/(320/3);
    float hight=self.imageView.image.size.height*scale;
    [_showimageview setFrame:CGRectMake(0, 0, 320/3, hight)];
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
