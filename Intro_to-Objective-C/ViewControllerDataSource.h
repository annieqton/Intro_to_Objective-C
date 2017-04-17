//
//  ViewControllerDataSource.h
//  Intro_to-Objective-C
//
//  Created by Annie Ton-Nu on 4/17/17.
//  Copyright © 2017 Annie Ton-Nu. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ViewControllerDataSource <NSObject>


@optional
-(void)optionalNumberOfItems:(int)number;
-(void)something;

@required
-(void)requiredNumberForEachItem:(int)number;


@end
