//
//  RoomListViewController.m
//  MyCoreDataHotel
//
//  Created by Gru on 02/10/15.
//  Copyright (c) 2015 GruTech. All rights reserved.
//

#import "RoomListViewController.h"
#import "AddReservationViewController.h"
#import "Room.h"

@interface RoomListViewController () <UITableViewDataSource>
@property (strong, nonatomic) NSArray *rooms;
@end

@implementation RoomListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.rooms                  = self.selectedHotel.rooms.allObjects;
    self.tableView.dataSource   = self;
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.rooms.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ROOM_CELL" forIndexPath:indexPath];

    Room *room = self.rooms[indexPath.row];
    cell.textLabel.text =[NSString stringWithFormat:@"%@", room.number];
    return cell;
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"SHOW_RESERVATION"]) {
        AddReservationViewController *destinationVC = segue.destinationViewController;
        NSIndexPath *indexPath     = self.tableView.indexPathForSelectedRow;
        Room        *room          = self.rooms[indexPath.row];
        destinationVC.selectedRoom = room;

    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
