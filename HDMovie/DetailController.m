//
//  DetailController.m
//  HDMovie
//
//  Created by iService on 1/7/16.
//  Copyright © 2016 Vinhdn. All rights reserved.
//

#import "DetailController.h"
#import "ApiConnect.h"
#import "Define.h"
@import AFNetworking;

@implementation DetailController

- (IBAction)back:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)viewDidLoad{
    [super viewDidLoad];
    NSDictionary *parameters = @{@"sign": [AppDelegate appSign], @"movieId" : [self movieId]};
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    NSMutableString *url = [[NSMutableString alloc] init];
    [url appendString: [AppDelegate appLink]];
    [url appendString:@"/"];
    [url appendString:VIDEO_DETAIL_URL];
    manager.requestSerializer=[AFHTTPRequestSerializer serializer];
    manager.responseSerializer = [AFJSONResponseSerializer serializer];
    [manager GET:url parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"JSON %@", responseObject);
                NSDictionary *dict = [responseObject valueForKeyPath:@"r"];
                if(dict == nil){
        
                }else{
                    self.movie = [[Movie alloc] initWithDictionary:dict error:nil];
                    if(self.movie != nil){
                        [self.thumbIV setImageWithURL:[NSURL URLWithString:[self.movie Backdrop]]];
                    }
                }

    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"ERROR %@", error);
    }];
//    dispatch_async(dispatch_get_global_queue(0, 0), ^{
//        NSDictionary *response= [ApiConnect sendRequest:VIDEO_DETAIL_URL method:@"GET" params:parameters];
//        NSDictionary *dict = [response valueForKeyPath:@"r"];
//        if(dict == nil){
//            
//        }else{
//            self.movie = [[Movie alloc] initWithDictionary:dict error:nil];
//            if(self.movie != nil){
//                [self.thumbIV setImageWithURL:[self.movie
//                                               Backdrop]];
//            }
//        }
//    });

}
@end
