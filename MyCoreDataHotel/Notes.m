//
//  Notes.m
//  MyCoreDataHotel
//
//  Created by Gru on 02/11/15.
//  Copyright (c) 2015 GruTech. All rights reserved.
//
//
// Monday
//
// 1. Setup your MOM with entities for Hotel >> Room >> Reservation > Guest
// 2. Seed your data base with the JSON payload provided
// 3. Create a static table view based menu view controller. This will be the first view controller the user sees. The first option should segue to HotelsViewController, which will show the hotels in a table view.
// 4. Upon selecting a hotel, segue to a RoomsViewController, which shows all the rooms of that hotel in another table view.
//
// Tuesday
//
// 5. Setup a View controller that allows you to book reservations for the room they select from your RoomsListViewController.
// 6. Create an Availability View Controller, which lets the user query for all rooms that are available in a specific date range, aka they don't have reservations anywhere in that range.
//
// Wednesday
//
// 7. Separate your core data setup into a separate CoreDataStack Class.
// 8. Create a HotelService class that should abstract away your business logic (booking reservations, checking availability, etc)
// 9. Write unit tests for your HotelServiceMethods
// 10. Implement a fetchedresultscontroller in your reservation list view controller.