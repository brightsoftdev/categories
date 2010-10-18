//
//  NSDate+format.h
//  Washington
//
//  Created by Corey Johnson on 12/14/09.
//  Copyright 2009 Probably Interactive. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface NSDate (format)

+ (NSDate *)dateWithXmlSchema:(NSString *)dateString;
- (NSString *)xmlSchema;

@end
