//
//  FLAModel.m
//  FeedListApp
//
//  Created by kevin on 5/06/15.
//  Copyright (c) 2015 kevin. All rights reserved.
//

#import "FLAPost.h"

@implementation FLAPost

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    return @{
            @"_name":@"name",
            @"_image":@"image",
            @"_info":@"details"
             };

}




@end
