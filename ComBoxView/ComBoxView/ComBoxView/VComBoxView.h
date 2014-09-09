//
//  VComBoxView.h
//  ComBoxView
//
//  Created by Vols on 14-9-9.
//  Copyright (c) 2014年 vols. All rights reserved.
//  实现下拉框ComBox

#import <UIKit/UIKit.h>
#define imgW 10
#define imgH 10
#define tableH 150
#define DEGREES_TO_RADIANS(angle) ((angle)/180.0 *M_PI)
#define kBorderColor [UIColor colorWithRed:219/255.0 green:217/255.0 blue:216/255.0 alpha:1]
#define kTextColor   [UIColor darkGrayColor]


@class VComBoxView;
@protocol VComBoxViewDelegate <NSObject>

- (void)comBox:(VComBoxView *)comBox selectedIndex:(NSUInteger)index;

@end


@interface VComBoxView : UIView

@property (nonatomic, assign) BOOL isOpen;
@property (nonatomic, strong) UITableView *listTable;
@property (nonatomic, strong) NSMutableArray *titlesList;
@property (nonatomic, assign) int defaultIndex;
@property (nonatomic, assign) float tableHeight;
@property (nonatomic, strong) UIImageView *arrow;
@property (nonatomic, copy) NSString *arrowImgName;//箭头图标名称
@property (nonatomic, strong) UIView *supView;

@property (nonatomic, assign) id<VComBoxViewDelegate>delegate;

-(void)defaultSettings;
-(void)reloadData;
-(void)closeOtherCombox;
-(void)tapAction;

@end
