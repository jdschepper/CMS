//
//  Thumb.h
//  CMS
//
//  Created by Jacques De Schepper on 14/09/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Thumb : NSManagedObject {
@private
}
@property (nonatomic, retain) NSString * preview;
@property (nonatomic, retain) NSString * text;

@end
