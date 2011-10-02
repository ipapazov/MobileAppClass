//
//  GetTimeZoomDateAppDelegate_iPad.h
//  GetTimeZoomDate
//
//  Created by Hristo Papazov on 10/2/11.
//  Copyright 2011 University of Chicago. All rights reserved.
//

#import "GetTimeZoomDateAppDelegate.h"

@interface GetTimeZoomDateAppDelegate_iPad : GetTimeZoomDateAppDelegate {
    UILabel *timeLabel;
    UILabel *dateLabel;
}


@property (nonatomic, retain) IBOutlet UILabel *timeLabel;
@property (nonatomic, retain) IBOutlet UILabel *dateLabel;

- (IBAction)dateScrollBar:(id)sender;
- (IBAction)dateTimeButton:(id)sender;

@end
