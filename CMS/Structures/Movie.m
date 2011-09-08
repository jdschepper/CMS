/*
 *  Cocoa Media Scraper - Movie.m
 *  Copyright 2011 Jacques De Schepper
 *
 *  This Program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 2, or (at your option)
 *  any later version.
 *
 *  This Program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with CMS; see the file COPYING.  If not, write to
 *  the Free Software Foundation, 675 Mass Ave, Cambridge, MA 02139, USA.
 *  http://www.gnu.org/copyleft/gpl.html
 *
 */

#import "Movie.h"

@implementation Movie

#pragma mark -

@synthesize moviedb = mMovieDB;

@synthesize title = mTitle;
@synthesize originalTitle = mOriginalTitle;
@synthesize sortTitle = mSortTitle;
@synthesize year = mYear;
@synthesize releaseDate = mReleaseDate;
@synthesize top250 = mTop250;
@synthesize votes = mVotes;
@synthesize mpaa = mMPAA;
@synthesize certification = mCertification;;
@synthesize studio = mStudio;
@synthesize director = mDirector;
@synthesize credits = mCredits;
@synthesize tagline = mTagline;
@synthesize outline = mOutline;
@synthesize plot = mPlot;
@synthesize runtime = mRuntime;
@synthesize trailer = mTrailer;
@synthesize playcount = mPlaycount;
@synthesize watched = mWatched;
@synthesize fanart = mFanart;
@synthesize genres = mGenreList;
@synthesize actors = mActors;
@synthesize sets = mSets;
@synthesize thumbs = mThumbs;
@synthesize mediaInfo = mMediaInfo;
@synthesize lev = mLev;
@synthesize videoSource = mVideoSource;

#pragma mark -

- (NSString *)imdb
{
    return mIMDB;
}

- (void)setImdb:(NSString *)inImdb
{
	mIMDB = [inImdb stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

- (void)setCmsId:(NSString *)inID
{
	mIMDB = [inID stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
	if (![mIMDB hasPrefix:@"tt"])
	{
		mIMDB = [NSString stringWithFormat:@"tt%@", mIMDB];
	}
}

- (NSString*)cmsId
{
	if ([mIMDB hasPrefix:@"tt"])
	{
		return [mIMDB stringByReplacingOccurrencesOfString:@"tt" withString:@""];
	}
	else
	{
		return mIMDB;
	}
}

- (void)setRating:(NSString *)inRating
{
	mRating = [inRating stringByReplacingOccurrencesOfString:@"," withString:@"."];
}

- (NSString*)rating
{
	return [mRating stringByReplacingOccurrencesOfString:@"," withString:@"."];
}

- (NSString*)genre
{
    return mGenre;
}

- (void)setGenre:(NSString *)inGenre
{
	mGenre = inGenre;
	[mGenreList removeAllObjects];
	[mGenreList addObject:inGenre];
}

#pragma mark -

- (id)init
{
	if (self = [super init])
	{
		mGenreList = [[NSMutableArray alloc] init];
		mSets = [[NSMutableArray alloc] init];
		mActors = [[NSMutableArray alloc] init];
		mThumbs = [[NSMutableArray alloc] init];
	}
	return self;
}

- (id)initWithID:(NSString *)inID 
		   title:(NSString *)inTitle 
			year:(NSString *)inYear 
			 lev:(NSInteger *)inLev
{
	if (self = [super init])
	{
		[self setCmsId:inID];
		mTitle = inTitle;
		mYear = inYear;
		mLev = inLev;
		mGenreList = [[NSMutableArray alloc] init];
		mSets = [[NSMutableArray alloc] init];
		mActors = [[NSMutableArray alloc] init];
		mThumbs = [[NSMutableArray alloc] init];
	}
	return self;
}

- (void)dealloc
{
	[mGenreList release];
	[mSets release];
	[mActors release];
	[mThumbs release];
	[super dealloc];
}

#pragma mark -

- (void)addSet:(NSString*)inSetName
		 order:(int)inOrder
{
	NSString * theOrder = @"";
	if (inOrder > 0)
	{
		theOrder = [NSString stringWithFormat:@"%d", inOrder];
	}

	for (id theObject in mSets)
	{
		Set * theSet = (Set*)theObject;
		if ([theSet.name isEqual:inSetName])
		{
			theSet.order = theOrder;
			return;
		}
	}
	
	[mSets addObject:[[Set alloc] init:inSetName order:theOrder]];
}

- (void)removeSet:(NSString*)inSetName
{
	[mSets filterUsingPredicate:[NSPredicate predicateWithFormat:@"name NOT like %@", inSetName]];
}

@end