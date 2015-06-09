//
//  FLAModel.h
//  FeedListApp
//
//  Created by kevin on 5/06/15.
//  Copyright (c) 2015 kevin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Mantle.h>

@interface FLAPost : MTLModel <MTLJSONSerializing>
@property (nonatomic) NSString *name;
@property (nonatomic) NSString *image;
@property (nonatomic) NSString *details;

@end
