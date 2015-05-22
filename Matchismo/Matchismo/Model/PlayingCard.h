//
//  PlayingCard.h
//  Matchismo
//
//  Created by Stephanie New on 5/22/15.
//  Copyright (c) 2015 Domeyard. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *) validSuits;
+ (NSUInteger) maxRank;

@end
