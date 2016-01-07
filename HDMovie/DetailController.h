//
//  DetailController.h
//  HDMovie
//
//  Created by iService on 1/7/16.
//  Copyright © 2016 Vinhdn. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIKit+AFNetworking/UIImageView+AFNetworking.h"
#import "Movie.h"

@interface DetailController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *thumbIV;
@property (weak, nonatomic) IBOutlet UILabel *titleLb;
- (IBAction)back:(UIButton *)sender;
@property(nonatomic) NSString *movieId;
@property(nonatomic) Movie *movie;
@end
