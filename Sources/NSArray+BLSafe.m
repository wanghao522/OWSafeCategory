//
//  NSArray+BLSafe.m
//  PandaTV-HD
//
//  Created by sunwanhua on 16/9/16.
//  Copyright © 2016年 zuowenping. All rights reserved.
//

#import "NSArray+BLSafe.h"

@implementation NSArray (BLSafe)

- (id)safe_objectAtIndex:(NSUInteger)index {
    if (index < [self count]) {
        return [self objectAtIndex:index];
    }
    
    return nil;
}

@end
