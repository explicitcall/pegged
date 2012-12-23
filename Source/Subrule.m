//
//  Subrule.m
//  pegged
//
//  Created by Matt Diephouse on 1/1/10.
//  This code is in the public domain.
//

#import "Subrule.h"

#import "Rule.h"

@implementation Subrule

@synthesize rule = _rule;

//==================================================================================================
#pragma mark -
#pragma mark NSObject Methods
//==================================================================================================



//==================================================================================================
#pragma mark -
#pragma mark Terminal Methods
//==================================================================================================

- (NSString *) condition
{
    return [NSString stringWithFormat:@"[parser matchRule:@\"%@\"]", self.rule.name];
}


//==================================================================================================
#pragma mark -
#pragma mark Public Methods
//==================================================================================================

+ (id) subruleWithRule:(Rule *)rule
{
    return [[[self class] alloc] initWithRule:rule];
}


- (id) initWithRule:(Rule *)rule
{
    self = [super init];
    
    if (self)
    {
        _rule = rule;
    }
    
    return self;
}


@end
