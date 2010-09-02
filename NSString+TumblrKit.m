//
//
//  This file is part of TumblrKit
//
//  TumblrKit is free software: you can redistribute it and/or modify
//  it under the terms of the GNU Lesser General Public License as published by
//  the Free Software Foundation, either version 3 of the License, or
//  (at your option) any later version.
//
//  Foobar is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.
//
//  You should have received a copy of the GNU General Public License
//  along with TumblrKit.  If not, see <http://www.gnu.org/licenses/>.
//
//  NSString+TumblrKit.m by Igor Sutton on 7/14/10.
//

#import "NSString+TumblrKit.h"

@implementation NSString (TumblrKit)

- (NSString *)stringByAddingQueryPercentEscapesUsingEncoding:(NSStringEncoding)encoding
{
    NSString *result = (NSString *)CFURLCreateStringByAddingPercentEscapes(
        kCFAllocatorDefault,
        (CFStringRef)self,
        NULL,
        CFSTR("?=&+"),
        kCFStringEncodingUTF8);
    return [result autorelease];
}

@end