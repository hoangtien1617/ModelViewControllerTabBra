//
//  DataManager.h
//  VictoriaSecret
//
//  Created by Hoàng Tiến on 11/23/15.
//  Copyright © 2015 Hoàng Tiến. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataManager : NSObject
@property (nonatomic, strong) NSArray* data;
+ (instancetype)getSingleton;

@end
