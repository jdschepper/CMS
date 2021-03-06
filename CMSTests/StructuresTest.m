/*
 *  Cocoa Media Scraper - StructuresTest.m
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

#import <GHUnit/GHUnit.h>

#import "Movie.h"
#import "NSImage+CMSCategory.h"

@interface StructuresTest : GHTestCase {}
@end

@implementation StructuresTest

- (void)testMovieClass
{
	Movie * theMovie = [[[Movie alloc] init] autorelease];
	
	// Test Sets - Adding Sets
	[theMovie addSet:@"SomeSet" order:1];
	[theMovie addSet:@"AnotherSet" order:0];
	[theMovie addSet:@"FinalSet" order:4];
	Set * theTestSet = [theMovie.sets objectAtIndex:1];
	GHAssertTrue([theMovie.sets count] == 3, @"Adding sets, set count invalid");
	GHAssertEqualStrings(theTestSet.name, @"AnotherSet", @"Adding sets, name invalid");
	GHAssertEqualStrings(theTestSet.order, @"", @"Adding sets, order invalid");
	
	// Test Sets - Updating Order
	[theMovie addSet:@"AnotherSet" order:5];
	theTestSet = [theMovie.sets objectAtIndex:1];
	GHAssertTrue([theMovie.sets count] == 3, @"Updating sets, set count invalid");
	GHAssertEqualStrings(theTestSet.name, @"AnotherSet", @"Updating sets, name invalid");
	GHAssertEqualStrings(theTestSet.order, @"5", @"Updating sets, order invalid");

	// Test Sets - Removing Sets
	[theMovie removeSet:@"AnotherSet"];
	theTestSet = [theMovie.sets objectAtIndex:1];
	GHAssertTrue([theMovie.sets count] == 2, @"Removing sets, set count invalid");
	GHAssertEqualStrings(theTestSet.name, @"FinalSet", @"Removing sets, name invalid");
	GHAssertEqualStrings(theTestSet.order, @"4", @"Removing sets, order invalid");	
    
    // Rating test
    [theMovie setRating:@"4,7"];
    GHAssertEqualStrings(theMovie.rating, @"4.7", @"Rating decimal conversion failed");
}

- (void)testImageWrapperClass
{
    NSImage * theImage = [[[NSImage alloc] initWithContentsOfURL:[NSURL URLWithString:@"http://ia.media-imdb.com/images/M/MV5BMTIyMTIxNjI5NF5BMl5BanBnXkFtZTcwNzQzNDM5MQ@@._V1._SY317_CR2,0,214,317_.jpg"]] autorelease];
    GHAssertTrue([theImage isValid], @"Invalid image from IMDB URL");
    GHAssertTrue(theImage.size.width == 214, @"Width mismatch");
    GHAssertTrue([theImage saveTo:@"/Users/jds/Desktop/godfather.jpg" withQuality:kHigh], @"Saving failed");
}

@end
