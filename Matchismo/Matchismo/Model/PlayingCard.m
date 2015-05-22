//
//  PlayingCard.m
//  Matchismo
//
//  Created by Stephanie New on 5/22/15.
//  Copyright (c) 2015 Domeyard. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

// Class methods start with +
// Instance methods start with -

- (NSString *) contents
{
    NSArray *rankStrings = [PlayingCard rankStrings];
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
}

@synthesize suit = _suit; // because we changed the getter and setter

+ (NSArray *)validSuits
{
    return @[@"♠︎", @"♣︎", @"♥︎", @"♦︎"];
}

- (void)setSuit:(NSString *)suit
{
    if ([[PlayingCard validSuits] containsObject:suit]) {
        _suit = suit;
    }
}

- (NSString *) suit
{
    return _suit ? _suit : @"?";
}

+ (NSArray *)rankStrings
{
    return @[@"?", @"1", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9",@"10",@"J", @"Q", @"K"];
}

+ (NSUInteger)maxRank
{
    return [[self rankStrings] count] - 1;
}

- (void)setRank:(NSUInteger)rank
{
    if (rank <= [PlayingCard maxRank]) {
        _rank = rank;
    }
}

@end
