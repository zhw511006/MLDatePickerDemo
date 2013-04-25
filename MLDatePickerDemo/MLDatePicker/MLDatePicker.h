//
//  MLDatePicker.h
//  NewPeek2
//
//  Created by Tyler on 13-4-18.
//  Copyright (c) 2013年 Delaware consulting. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MLDatePickerDelegate <NSObject>

- (void)handleCompletionForMLDatePicker:(NSDate *)pDate;

@end

@interface MLDatePicker : UIActionSheet

@property (nonatomic, weak) id<MLDatePickerDelegate> delegateForML;

- (id)initWithDefaultDate:(NSDate *)pDefaultDate
           datePickerMode:(UIDatePickerMode)pDatePickerMode;

@end
