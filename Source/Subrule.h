//
//  Subrule.h
//  pegged
//
//  Created by Matt Diephouse on 1/1/10.
//  This code is in the public domain.
//

#import <Foundation/Foundation.h>

#import "Terminal.h"

@class Rule;

@interface Subrule : Terminal
{
    Rule *_rule;
}

@property (strong) Rule *rule;

+ (id) subruleWithRule:(Rule *)rule;
- (id) initWithRule:(Rule *)rule;

@end
