//
//  VSModel.m
//  VictoriaSecret
//
//  Created by Hoàng Tiến on 11/23/15.
//  Copyright © 2015 Hoàng Tiến. All rights reserved.
//

#import "VSModel.h"

@implementation VSModel

-(instancetype) init: (NSString*) name
withMeasure: (NSString*) measure
andPhoto: (NSString*) photo{
    if (self= [super init]) {
        self.name = name;
        self.measure = measure;
        NSString *photoFile = [NSString stringWithFormat:@"%@.jpg",photo];
        self.photo = [UIImage imageNamed:photoFile];
        NSString *iconFile = [NSString stringWithFormat:@"%@0.jpg",photo];
        self.icon = [UIImage imageNamed:iconFile];

    }
    return self;
}
@end
