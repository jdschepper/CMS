/*
 *  Cocoa Media Scraper - Person.m
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

#import "Person.h"


@implementation Person

@synthesize name = mName;
@synthesize role = mRole;
@synthesize thumb = mThumb;

- (id)init
{
	self = [super init];
	return self;
}

- (id)init:(NSString*)inName
{
	if (self = [super init])
	{
		mName = inName;
	}
	return self;
}

- (id)init:(NSString*)inName 
	  role:(NSString*)inRole
	 thumb:(NSString*)inThumb
{
	if (self = [super init])
	{
		mName = inName;
		mRole = inRole;
		mThumb = inThumb;
	}
	return self;
}

@end
