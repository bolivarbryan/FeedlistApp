//
//  FLAMainViewController.m
//  FeedListApp
//
//  Created by kevin on 5/06/15.
//  Copyright (c) 2015 kevin. All rights reserved.
//

#import "FLAPostViewController.h"
#import <AFNetworking.h>
#import "FLAPost.h"
#import <MagicalRecord.h>
static NSString * const kFLAPostViewController = @"http://www.kbapi.co/g/55XNXGda.json";

@interface FLAPostViewController ()

@end

@implementation FLAPostViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
   
    AFHTTPRequestOperationManager *request = [AFHTTPRequestOperationManager manager];
    [request GET:kFLAPostViewController parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        [self serializer:responseObject];
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"%@",error);
            
    }];
    }

- (void)serializer:(NSDictionary*)data
{
       NSError *error;
    
    for (NSString *datos in data[@"data"][@"Post"]){
    
        NSLog(@"%@", [datos valueForKey:@"name"]);
        FLAPost *post = [MTLJSONAdapter modelOfClass:[FLAPost class] fromJSONDictionary:datos error:&error];
        
        NSLog(@"%@",post);
        
    }
    
   }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   }

@end
