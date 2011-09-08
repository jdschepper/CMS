/*
 *  Cocoa Media Scraper - ImageWrapper.m
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

#import "NSImage+CMSCategory.h"


@implementation NSImage(CMSCategory)

- (bool)saveTo:(NSString*)inPath withQuality:(ImageQuality)inQuality
{
    if ([self isValid] == NO)
    {
        return NO;
    }
    
    float quality = 1.0;
    switch (inQuality) 
    {
    case kLow:
        quality = 0.3;
        break;
    case kMed:
        quality = 0.5;
        break;
    case kHigh:
        quality = 0.7;
        break;
    default:
        break;
    }
    
    NSData * imageData = [self TIFFRepresentation];
    NSBitmapImageRep * imageRep = [NSBitmapImageRep imageRepWithData:imageData];
    NSDictionary * imageProps = [NSDictionary dictionaryWithObject:[NSNumber numberWithFloat:quality] forKey:NSImageCompressionFactor];
    imageData = [imageRep representationUsingType:NSJPEGFileType properties:imageProps];
    return [imageData writeToFile:inPath atomically:NO];
}

- (ImageSize)GetFanartDims
{
    int x = self.size.width;
    int y = self.size.height;
    
    if ((y > 1000 && x > 750) || (y > 750 && x > 1000))
    {
        return kLarge;
    }
    else if ((y > 700 && x > 400) || (y > 400 && x > 700))
    {
        return kMedium;
    }
    return kSmall;
}

- (ImageSize)GetPosterDims
{
    int x = self.size.width;
    int y = self.size.height;
    
    if (x > 2*y && x > 300)
    {
        return kWide;
    }
    else if ((y > 1000 && x > 750) || (y > 750 && x > 1000))
    {
        return kXLarge;
    }
    else if ((y > 700 && x > 500) || (y > 500 && x > 700))
    {
        return kLarge;
    }
    else if ((y > 250 && x > 150) || (y > 150 && x > 250))
    {
        return kMedium;
    }
    return kSmall;
}

@end
