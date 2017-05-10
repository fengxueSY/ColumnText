//
//  ColumnCell.m
//  ColumnText
//
//  Created by 666gps on 2017/5/2.
//  Copyright © 2017年 666gps. All rights reserved.
//

#import "ColumnCell.h"

@implementation ColumnCell
-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        float cellW = frame.size.width;
        float cellH = frame.size.height;
        
        self.peakLabel = [[UILabel alloc]init];
        self.peakLabel.font = [UIFont systemFontOfSize:12];
        self.peakLabel.textAlignment = NSTextAlignmentCenter;
        [self.contentView addSubview:self.peakLabel];
        
        self.midLabel = [[UILabel alloc]init];
        self.midLabel.backgroundColor = [UIColor greenColor];
        [self.contentView addSubview:self.midLabel];
        
        self.lineLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, cellH - 16, cellW, 1)];
        self.lineLabel.backgroundColor = [UIColor grayColor];
        [self.contentView addSubview:self.lineLabel];
        
        self.lowLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, cellH - 15, cellW, 15)];
        self.lowLabel.font = [UIFont systemFontOfSize:12];
        self.lowLabel.textAlignment = NSTextAlignmentCenter;
        self.lowLabel.text = @"001";
        [self.contentView addSubview:self.lowLabel];
    }
    return self;
}
@end
