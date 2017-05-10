//
//  ColumnView.h
//  ColumnText
//
//  Created by 666gps on 2017/5/2.
//  Copyright © 2017年 666gps. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ColumnView : UIView<UICollectionViewDataSource,UICollectionViewDelegate>
@property (nonatomic,strong) NSMutableArray * dataArray;
@property (nonatomic,strong) UICollectionView * columnCollection;

-(instancetype)initWithFrame:(CGRect)frame ShowDataArray:(NSArray *)dataArray;
@end
