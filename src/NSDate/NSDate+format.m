//
//  NSDate+format.m
//  Washington
//
//  Created by Corey Johnson on 12/14/09.
//  Copyright 2009 Probably Interactive. All rights reserved.
//

#import "NSDate+format.h"


@implementation NSDate (format)

+ (NSDate *)dateWithXmlSchema:(NSString *)dateString {
    NSTimeZone *timeZone = [NSTimeZone timeZoneWithName:@"UTC"];
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setTimeZone:timeZone];
	[dateFormatter setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss'Z'"];
	NSDate *date = [dateFormatter dateFromString:dateString];    
    [dateFormatter release];
    
    return date;
}


- (NSString *)xmlSchema {
    NSTimeZone *timeZone = [NSTimeZone timeZoneWithName:@"UTC"];
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setTimeZone:timeZone];
	[dateFormatter setDateFormat:@"YYYY-MM-dd'T'HH:mm:ss'Z'"];
	NSString *dateString = [dateFormatter stringFromDate:self];    
    [dateFormatter release];
    
    return dateString;
}

@end
