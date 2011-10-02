//
//  GetTimeZoomDateAppDelegate_iPhone.m
//  GetTimeZoomDate
//
//  Created by Hristo Papazov on 10/2/11.
//  Copyright 2011 University of Chicago. All rights reserved.
//

#import "GetTimeZoomDateAppDelegate_iPhone.h"

@implementation GetTimeZoomDateAppDelegate_iPhone
@synthesize timeLabel;
@synthesize dateLabel;

- (void)dealloc {
    [timeLabel release];
    [dateLabel release];
    [super dealloc];
}
- (IBAction)dateSlider:(id)sender {
    UISlider *ds = (UISlider *)sender;
    //NSLog(@"Slider Value: %1.0f", ds.value);
    
    //Get the font size using the slider value
    UIFont *dateFont = [UIFont fontWithName:@"Helvetica" size:(ds.value)];
    
    //Set the date font size
    dateLabel.font = dateFont;
}

- (IBAction)timeDateButton:(id)sender {
    NSDate *date_time = [NSDate date];
    
    // Initialize gregorian calendar object
    NSCalendar *greg_calndr = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    
    //Get the date and time components 
    NSDateComponents *dt_comps = [greg_calndr components:(NSDayCalendarUnit | NSMonthCalendarUnit | NSYearCalendarUnit | NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit) fromDate:date_time];
    
    // Set date and time variables
    NSInteger day = [dt_comps day];
    NSInteger month = [dt_comps month];
    NSInteger year = [dt_comps year];
    NSInteger hour = [dt_comps hour];
    NSInteger minute = [dt_comps minute];
    NSInteger second = [dt_comps second];  
    
    //Destroy gregorian calendar object
    [greg_calndr release];
    
    //Set the text attribute for the 'timeLable
    timeLabel.text = [NSString stringWithFormat:@"%02d:%02d:%02d", hour, minute, second];
    
    //Set the text attribute for the 'dateLabel'
    dateLabel.text = [NSString stringWithFormat:@"%02d-%02d-%02d", day, month, year];
}
@end
