//
//  Hotel.h
//  MyCoreDataHotel
//
//  Created by Gru on 02/10/15.
//  Copyright (c) 2015 GruTech. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Hotel : NSManagedObject

@property (nonatomic, retain) NSString * location;
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSNumber * rating;
@property (nonatomic, retain) NSSet *rooms;
@end

@interface Hotel (CoreDataGeneratedAccessors)

- (void)addRoomsObject:(NSManagedObject *)value;
- (void)removeRoomsObject:(NSManagedObject *)value;
- (void)addRooms:(NSSet *)values;
- (void)removeRooms:(NSSet *)values;

@end
