//
//  GetTimeZoomDateAppDelegate_iPhone.h
//  GetTimeZoomDate
//
//  Created by Hristo Papazov on 10/2/11.
//  Copyright 2011 University of Chicago. All rights reserved.
//

#import "GetTimeZoomDateAppDelegate.h"

@interface GetTimeZoomDateAppDelegate_iPhone : GetTimeZoomDateAppDelegate {
    UILabel *timeLabel;
    UILabel *dateLabel;
}

@property (nonatomic, retain) IBOutlet UILabel *timeLabel;
@property (nonatomic, retain) IBOutlet UILabel *dateLabel;

- (IBAction)dateSlider:(id)sender;
- (IBAction)timeDateButton:(id)sender;

@end
