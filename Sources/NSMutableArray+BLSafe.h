//
//  NSMutableArray+BLSafe.h
//  PandaTV-HD
//
//  Created by sunwanhua on 16/9/16.
//  Copyright © 2016年 zuowenping. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableArray (BLSafe)

+ (id)mutableArrayUsingWeakReferences;
+ (id)mutableArrayUsingWeakReferencesWithCapacity:(NSUInteger)capacity;

- (void)safe_insertObject:(id)anObject atIndex:(NSUInteger)index;
- (void)safe_addObject:(id)anObject;

- (void)safe_removeObjectAtIndex:(NSUInteger)index;
- (void)safe_removeObject:(id)anObject;

@end
