//
//  Deck.h
//  Matchismo
//
//  Created by Stephanie New on 5/22/15.
//  Copyright (c) 2015 Domeyard. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

- (void)addCard:(Card *)card atTop:(BOOL)atTop;
- (void)addCard:(Card *)card;

- (Card *)drawRandomCard;

@end
