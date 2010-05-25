//
//  NSArray+CaseInsentiveFind.m
//  DealMap
//
//  Created by Corey Johnson on 5/24/10.
//  Copyright 2010 Probably Interactive. All rights reserved.
//

#import "NSArray+CaseInsentiveFind.h"


@implementation NSArray (CaseInsentiveFind)

- (id)caseInsensitiveFind:(NSString *)string {
    for (NSString *s in self) {
        if ([s caseInsensitiveCompare:string] == NSOrderedSame) return s;
    }
    
    return nil;
}

@end
