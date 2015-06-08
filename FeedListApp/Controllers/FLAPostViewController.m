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
@interface FLAPostViewController ()

@end

@implementation FLAPostViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
   
    self.url = @"http://www.kbapi.co/g/55XNXGda.json";
    
    AFHTTPRequestOperationManager *request = [AFHTTPRequestOperationManager manager];
    [request GET:self.url parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        [self serializer:responseObject];
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"%@",error);
            
    }];
    // Do any additional setup after loading the view.
}



- (void)serializer:(NSDictionary*)data
{
       NSError *error;
    FLAPost *post = [MTLJSONAdapter modelOfClass:[FLAPost class] fromJSONDictionary:data[@"data"] error:&error];
    NSLog(@"%@",[post _post]);

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controllers using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
