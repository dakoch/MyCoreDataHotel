//
//  Reservation.h
//  MyCoreDataHotel
//
//  Created by Gru on 02/10/15.
//  Copyright (c) 2015 GruTech. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Guest;

@interface Reservation : NSManagedObject

@property (nonatomic, retain) NSDate * endDate;
@property (nonatomic, retain) NSDate * startDate;
@property (nonatomic, retain) NSManagedObject *room;
@property (nonatomic, retain) Guest *guest;

@end
