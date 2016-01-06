//
//  CollectionViewController.h
//  HDMovie
//
//  Created by iService on 1/4/16.
//  Copyright © 2016 Vinhdn. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Post.h"
#import "ApiConnect.h"
#import "AppDelegate.h"

@interface CollectionViewController : UICollectionViewController
@property (nonatomic, strong, nullable) UIRefreshControl *refreshControl NS_AVAILABLE_IOS(6_0) __TVOS_PROHIBITED;
@property(nonatomic,retain) NSMutableArray *listData;
@end
