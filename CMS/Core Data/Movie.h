//
//  Movie.h
//  CMS
//
//  Created by Jacques De Schepper on 14/09/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Actor, Fanart, Genre, Set, Thumb;

@interface Movie : NSManagedObject {
@private
}
@property (nonatomic, retain) NSString * title;
@property (nonatomic, retain) NSNumber * votes;
@property (nonatomic, retain) NSNumber * top250;
@property (nonatomic, retain) NSNumber * year;
@property (nonatomic, retain) NSDecimalNumber * rating;
@property (nonatomic, retain) NSString * sorttitle;
@property (nonatomic, retain) NSString * originaltitle;
@property (nonatomic, retain) NSString * outline;
@property (nonatomic, retain) NSString * plot;
@property (nonatomic, retain) NSString * tagline;
@property (nonatomic, retain) NSNumber * runtime;
@property (nonatomic, retain) NSString * mpaa;
@property (nonatomic, retain) NSNumber * playcount;
@property (nonatomic, retain) NSNumber * watched;
@property (nonatomic, retain) NSString * id;
@property (nonatomic, retain) NSString * filenameandpath;
@property (nonatomic, retain) NSString * trailer;
@property (nonatomic, retain) NSString * credits;
@property (nonatomic, retain) NSString * director;
@property (nonatomic, retain) NSSet *thumbs;
@property (nonatomic, retain) Set *set;
@property (nonatomic, retain) NSSet *genres;
@property (nonatomic, retain) NSSet *actors;
@property (nonatomic, retain) Fanart *fanart;
@end

@interface Movie (CoreDataGeneratedAccessors)

- (void)addThumbsObject:(Thumb *)value;
- (void)removeThumbsObject:(Thumb *)value;
- (void)addThumbs:(NSSet *)values;
- (void)removeThumbs:(NSSet *)values;

- (void)addGenresObject:(Genre *)value;
- (void)removeGenresObject:(Genre *)value;
- (void)addGenres:(NSSet *)values;
- (void)removeGenres:(NSSet *)values;

- (void)addActorsObject:(Actor *)value;
- (void)removeActorsObject:(Actor *)value;
- (void)addActors:(NSSet *)values;
- (void)removeActors:(NSSet *)values;

@end
