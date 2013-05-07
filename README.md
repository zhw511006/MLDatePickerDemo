What is MLDatePicker?
---
It's a date picker base on ActionSheet for iPhone.

<img src="https://fgfarq.bn1.livefilestore.com/y2phzJr-G-fgbc8YMJl_HPKAMn2KBrEnOU42D4pWIJ_bWyYGGsgK56S1oEvNdGv5mWaaorwiJrvHmfPWZMdfXiCd7Fr5kjb52-uJn3RCSen4bTyfaL6pvor0fH8Bs07SVjN/MLDatePicker.png?psid=1"/>

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
