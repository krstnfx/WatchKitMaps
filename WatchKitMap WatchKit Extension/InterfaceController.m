//
//  InterfaceController.m
//  WatchKitMap WatchKit Extension
//
//  Created by Thai, Kristina on 3/13/15.
//
//

#import "InterfaceController.h"


@interface InterfaceController()
@property (weak, nonatomic) IBOutlet WKInterfaceMap *map;

@end


@implementation InterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    
    // Location of Apple headquarters
    CLLocationCoordinate2D mapLocation = CLLocationCoordinate2DMake(37, -122);
    
    MKCoordinateSpan coordinateSpan = MKCoordinateSpanMake(1, 1);
    
    // Other colors include red and green pins
    [self.map addAnnotation:mapLocation withPinColor: WKInterfaceMapPinColorPurple];
    
    [self.map addAnnotation:mapLocation withImage:[UIImage imageNamed:@"pink_flag"] centerOffset:CGPointMake(20, -20)];
    [self.map setRegion:(MKCoordinateRegionMake(mapLocation, coordinateSpan))];
}

@end



