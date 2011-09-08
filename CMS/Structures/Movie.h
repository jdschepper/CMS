/*
 *  Cocoa Media Scraper - Movie.h
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

#import <Cocoa/Cocoa.h>

#import "Fanart.h"
#import "MediaInfo.h"
#import "Set.h"

@interface Movie : NSObject 
{
	// IDs
	NSString * mIMDB;
	NSString * mMovieDB;
	
	// Metadata
	NSString * mTitle;
	NSString * mOriginalTitle;
	NSString * mSortTitle;
	NSString * mYear;
	NSString * mReleaseDate;
	NSString * mTop250;
	NSString * mRating;
	NSString * mVotes;
	NSString * mMPAA;
	NSString * mCertification;
	NSString * mStudio;
	NSString * mDirector;
	NSString * mCredits;
	NSString * mTagline;
	NSString * mOutline;
	NSString * mPlot;
	NSString * mRuntime;
	NSString * mTrailer;
	NSString * mPlaycount;
	NSString * mWatched;
	NSString * mGenre;
	Fanart * mFanart;
	NSMutableArray * mGenreList;
	NSMutableArray * mActors;
	NSMutableArray * mThumbs;
	NSMutableArray * mSets;
	MediaInfo * mMediaInfo;
	NSInteger * mLev;
	NSString * mVideoSource;
}

- (id)init;
- (id)initWithID:(NSString*)inID title:(NSString*)inTitle year:(NSString*)inYear lev:(NSInteger*)inLev;
- (void)dealloc;

- (void)addSet:(NSString*)inSetName order:(int)inOrder;
- (void)removeSet:(NSString*)inSetName;

@property(readwrite, assign) NSString * cmsId;
@property(readwrite, assign) NSString * imdb;
@property(readwrite, assign) NSString * moviedb;

@property(readwrite, assign) NSString * title;
@property(readwrite, assign) NSString * originalTitle;
@property(readwrite, assign) NSString * sortTitle;
@property(readwrite, assign) NSString * year;
@property(readwrite, assign) NSString * releaseDate;
@property(readwrite, assign) NSString * top250;
@property(readwrite, assign) NSString * rating;
@property(readwrite, assign) NSString * votes;
@property(readwrite, assign) NSString * mpaa;
@property(readwrite, assign) NSString * certification;
@property(readwrite, assign) NSString * genre;
@property(readwrite, assign) NSString * studio;
@property(readwrite, assign) NSString * director;
@property(readwrite, assign) NSString * credits;
@property(readwrite, assign) NSString * tagline;
@property(readwrite, assign) NSString * outline;
@property(readwrite, assign) NSString * plot;
@property(readwrite, assign) NSString * runtime;
@property(readwrite, assign) NSString * trailer;
@property(readwrite, assign) NSString * playcount;
@property(readwrite, assign) NSString * watched;
@property(readwrite, assign) Fanart * fanart;
@property(readwrite, assign) NSMutableArray * genres;
@property(readwrite, assign) NSMutableArray * actors;
@property(readwrite, assign) NSMutableArray * thumbs;
@property(readwrite, assign) NSMutableArray * sets;
@property(readwrite, assign) MediaInfo * mediaInfo;
@property(readwrite, assign) NSInteger * lev;
@property(readwrite, assign) NSString * videoSource;

@end
