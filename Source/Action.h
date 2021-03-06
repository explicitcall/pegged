//
//  Action.h
//  pegged
//
//  Created by Matt Diephouse on 12/29/09.
//  This code is in the public domain.
//

#import <Foundation/Foundation.h>

#import "Node.h"

@class Rule;

@interface Action : Node
{
    NSString *_code;
}

+ (id) actionWithCode:(NSString *)code;
- (id) initWithCode:(NSString *)code;

@end
