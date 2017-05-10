//
//  ColumnView.m
//  ColumnText
//
//  Created by 666gps on 2017/5/2.
//  Copyright © 2017年 666gps. All rights reserved.
//

#import "ColumnView.h"
#import "ColumnCell.h"


@implementation ColumnView{
    float windowWidth;
    float windowHight;
    float maxValue;
}

static NSString * cellID = @"ID";

-(instancetype)initWithFrame:(CGRect)frame ShowDataArray:(NSArray *)dataArray{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        windowWidth = frame.size.width;
        windowHight = frame.size.height;
        self.dataArray = [[NSMutableArray alloc]init];
        for (int i = 0; i < dataArray.count; i++) {
            [self.dataArray addObject:[NSNumber numberWithFloat:[dataArray[i] floatValue]]];
        }
        maxValue = [[self.dataArray valueForKeyPath:@"@max.floatValue"] floatValue];
        [self creatColumnCollection];
    }
    return self;
}
-(void)creatColumnCollection{
    UICollectionViewFlowLayout * layout = [[UICollectionViewFlowLayout alloc]init];
    layout.itemSize = CGSizeMake(windowWidth / 7, windowHight);
    layout.minimumLineSpacing = 0;
    layout.minimumInteritemSpacing = 0;
    layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    
    self.columnCollection = [[UICollectionView alloc]initWithFrame:CGRectMake(0, 0, windowWidth, windowHight)collectionViewLayout:layout];
    self.columnCollection.backgroundColor = [UIColor whiteColor];
    self.columnCollection.dataSource = self;
    self.columnCollection.delegate = self;
    [self addSubview:self.columnCollection];
    [self.columnCollection registerClass:NSClassFromString(@"ColumnCell") forCellWithReuseIdentifier:cellID];

    self.columnCollection.contentOffset = CGPointMake(windowWidth / 7 * self.dataArray.count - windowWidth, 0);

}
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.dataArray.count;
}
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    ColumnCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:cellID forIndexPath:indexPath];
    float cellW = windowWidth / 7;
    if ([self.dataArray[indexPath.row] floatValue] == maxValue) {
        cell.peakLabel.frame = CGRectMake(0, 0, cellW, 14);
        cell.midLabel.frame = CGRectMake(cellW * 2 / 5, CGRectGetMaxY(cell.peakLabel.frame), cellW / 5, windowHight - 30);
    }else{
        float midLabelH = ([self.dataArray[indexPath.row] floatValue] / maxValue) * (windowHight - 30);
        cell.peakLabel.frame = CGRectMake(0, windowHight - 30 - midLabelH, cellW, 14);
        cell.midLabel.frame = CGRectMake(cellW * 2 / 5, CGRectGetMaxY(cell.peakLabel.frame), cellW / 5, midLabelH);
    }
    cell.lowLabel.text = [NSString stringWithFormat:@"第%ld个",(long)indexPath.row];
    cell.peakLabel.text = [NSString stringWithFormat:@"值为:%@",self.dataArray[indexPath.row]];
    return cell;
}
@end
