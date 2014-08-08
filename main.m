//
//  main.m
//  secondsSinceBirth
//
//  Created by Nikita Ber on 2014-08-04.
//  Copyright (c) 2014 BigNerdRanch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSDateComponents *comps = [[NSDateComponents alloc] init];
        [comps setYear:1993];
        [comps setMonth:4];
        [comps setDay:25];
        [comps setHour:6];
        [comps setMinute:0];
        [comps setSecond:0];
        
        NSCalendar *g = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
        NSDate *dateOfBirth = [g dateFromComponents:comps];
        
        NSDate *laterDate = [[NSDate alloc]init];
        double seconds = [laterDate timeIntervalSinceDate: dateOfBirth];
        
        NSLog(@"It has been %f seconds since my birth", seconds);
    }
    return 0;
}

