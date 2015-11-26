//
//  VSModel.h
//  VictoriaSecret
//
//  Created by Hoàng Tiến on 11/23/15.
//  Copyright © 2015 Hoàng Tiến. All rights reserved.
//

#import <Foundation/Foundation.h>


#import <UIKit/UIKit.h>
@interface VSModel : NSObject
@property (nonatomic, strong) NSString* name;
@property (nonatomic, strong) NSString* measure;
@property (nonatomic, strong) UIImage* photo;
@property (nonatomic, strong) UIImage* icon;

- (instancetype) init: (NSString*) name
          withMeasure: (NSString*) measure
             andPhoto: (NSString*) photo;

@end
