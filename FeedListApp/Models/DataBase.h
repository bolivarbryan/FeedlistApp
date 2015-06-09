//
//  DataBase.h
//  
//
//  Created by kevin on 9/06/15.
//
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface DataBase : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * image;
@property (nonatomic, retain) NSString * info;

@end
