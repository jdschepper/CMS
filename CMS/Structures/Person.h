/*
 *  Cocoa Media Scraper - Person.h
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

#import <Cocoa/Cocoa.h>


@interface Person : NSObject 
{
	NSString * mName;
	NSString * mRole;
	NSString * mThumb;
}

- (id)init;
- (id)init:(NSString*)inName;
- (id)init:(NSString*)inName role:(NSString*)inRole thumb:(NSString*)inThumb;

@property(readwrite, assign) NSString * name;
@property(readwrite, assign) NSString * role;
@property(readwrite, assign) NSString * thumb;

@end
