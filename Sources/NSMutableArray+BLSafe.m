//
//  NSMutableArray+BLSafe.m
//  PandaTV-HD
//
//  Created by sunwanhua on 16/9/16.
//  Copyright © 2016年 zuowenping. All rights reserved.
//

#import "NSMutableArray+BLSafe.h"

@implementation NSMutableArray (BLSafe)

+ (id)mutableArrayUsingWeakReferences {
    return [self mutableArrayUsingWeakReferencesWithCapacity:0];
}

+ (id)mutableArrayUsingWeakReferencesWithCapacity:(NSUInteger)capacity {
    CFArrayCallBacks callbacks = {0, NULL, NULL, CFCopyDescription, CFEqual};
    // Cast of C pointer type 'CFMutableArrayRef' (aka 'struct __CFArray *') to Objective-C pointer type 'id' requires a bridged cast
    return (id)CFBridgingRelease(CFArrayCreateMutable(0, capacity, &callbacks));
    // return (id)(CFArrayCreateMutable(0, capacity, &callbacks));
}

- (void)safe_insertObject:(id)anObject atIndex:(NSUInteger)index {
    if (anObject && index <= [self count]) {
        [self insertObject:anObject atIndex:index];
    }
}

- (void)safe_addObject:(id)anObject {
    if (anObject) {
        [self addObject:anObject];
    }
}

- (void)safe_removeObjectAtIndex:(NSUInteger)index {
    if (index < [self count]) {
        [self removeObjectAtIndex:index];
    }
}

- (void)safe_removeObject:(id)anObject {
    if (anObject) {
        [self removeObject:anObject];
    }
}

@end
