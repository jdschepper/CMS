/*
 *  Cocoa Media Scraper - Episode.h
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

#import "MediaInfo.h"

@interface Episode : NSObject 
{
	NSString * mTitle;
	NSString * mAired;
	NSString * mRating;
	NSInteger * mSeason;
	NSInteger * mEpisode;
	NSString * mPlot;
	NSString * mCredits;
	NSString * mDirector;
	NSMutableArray * mActors;
	MediaInfo * mMediaInfo;
	NSImage * mPoster;
	NSString * mPosterURL;
	NSString * mLocalFile;
	NSImage * mFanart;
}

- (id)init;
- (void)dealloc;

@property(readwrite, assign) NSString * title;
@property(readwrite, assign) NSString * aired;
@property(readwrite, assign) NSString * rating;
@property(readwrite, assign) NSInteger * season;
@property(readwrite, assign) NSInteger * episode;
@property(readwrite, assign) NSString * plot;
@property(readwrite, assign) NSString * credits;
@property(readwrite, assign) NSString * director;
@property(readwrite, assign) NSMutableArray * actors;
@property(readwrite, assign) MediaInfo * mediaInfo;
@property(readwrite, assign) NSImage * poster;
@property(readwrite, assign) NSString * posterURL;
@property(readwrite, assign) NSString * localFile;
@property(readwrite, assign) NSImage * fanart;

@end
