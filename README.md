What is MLDatePicker?
---
It's a date picker base on ActionSheet for iPhone.

<img src=""/>

ARC
---
Fully ARC compatible now

How to use:
---

**Init**

    MLDatePicker *dp = [[MLDatePicker alloc] initWithDefaultDate:[NSDate date]
                                                  datePickerMode:UIDatePickerModeDate];
    dp.delegateForML = self;
    
    [dp showInView:self.view];
    
**Delegate**

    - (void)handleCompletionForMLDatePicker:(NSDate *)pDate
    {
        NSLog(@"%@", pDate);
    }
