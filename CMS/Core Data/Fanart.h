//
//  Fanart.h
//  CMS
//
//  Created by Jacques De Schepper on 14/09/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Fanart : NSManagedObject {
@private
}
@property (nonatomic, retain) NSString * url;
@property (nonatomic, retain) NSSet *thumbs;
@property (nonatomic, retain) NSManagedObject *movie;
@end

@interface Fanart (CoreDataGeneratedAccessors)

- (void)addThumbsObject:(NSManagedObject *)value;
- (void)removeThumbsObject:(NSManagedObject *)value;
- (void)addThumbs:(NSSet *)values;
- (void)removeThumbs:(NSSet *)values;

@end
