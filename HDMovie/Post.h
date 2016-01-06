//
//  Post.h
//  HDMovie
//
//  Created by iService on 1/6/16.
//  Copyright © 2016 Vinhdn. All rights reserved.
//

#import <Foundation/Foundation.h>

@class User;

@interface Post : NSObject

@property (nonatomic, assign) NSUInteger postID;
@property (nonatomic, strong) NSString *text;

@property (nonatomic, strong) User *user;

- (instancetype)initWithAttributes:(NSDictionary *)attributes;

+ (NSURLSessionDataTask *)globalTimelinePostsWithBlock:(void (^)(NSArray *posts, NSError *error))block;

+ (NSURLSessionDataTask *)getData:(void (^)(NSArray *posts, NSError *error))block;
@end

@interface Post (NSCoding) <NSSecureCoding>
@end