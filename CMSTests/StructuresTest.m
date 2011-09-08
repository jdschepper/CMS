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

#import "StructuresTest.h"
#import "Movie.h"

@implementation StructuresTest

- (void)testMovieClass
{
	Movie * theMovie = [[Movie alloc] init];
	
	// Test Sets - Adding Sets
	[theMovie addSet:@"SomeSet" order:1];
	[theMovie addSet:@"AnotherSet" order:0];
	[theMovie addSet:@"FinalSet" order:4];
	Set * theTestSet = [theMovie.sets objectAtIndex:1];
	STAssertTrue([theMovie.sets count] == 3, @"Set Count should be 3, but is %d", [theMovie.sets count]);
	STAssertEquals(theTestSet.name, @"AnotherSet", @"Set Name should be AnotherSet, but is %@", theTestSet.name);
	STAssertEquals(theTestSet.order, @"", @"Test set order should be empty");
	
	// Test Sets - Updating Order
	[theMovie addSet:@"AnotherSet" order:5];
	theTestSet = [theMovie.sets objectAtIndex:1];
	STAssertTrue([theMovie.sets count] == 3, @"Set Count should be 3, but is %d", [theMovie.sets count]);
	STAssertEquals(theTestSet.name, @"AnotherSet", @"Set Name should be AnotherSet, but is %@", theTestSet.name);
//	STAssertEquals(theTestSet.order, @"5", @"Test set order should be 5, but is %@", theTestSet.order);

	// Test Sets - Removing Sets
//	[theMovie removeSet:@"AnotherSet"];
//	theTestSet = [theMovie.sets objectAtIndex:1];
//	STAssertTrue([theMovie.sets count] == 2, @"Set Count should be 2, but is %d", [theMovie.sets count]);
//	STAssertEquals(theTestSet.name, @"FinalSet", @"Set Name should be FinalSet, but is %@", theTestSet.name);
//	STAssertEquals(theTestSet.order, @"4", @"Test set order should be 4, but is %@", theTestSet.order);	
}

@end
