//
//  MagicalCreature.m
//  MCMS
//
//  Created by Danny Vasquez on 1/19/16.
//  Copyright © 2016 Danny Vasquez. All rights reserved.
//

#import "MagicalCreature.h"

@implementation MagicalCreature

-(instancetype)initWithName:(NSString *)name {
    self = [super init];
    if (self) {
        self.name = name;
    }
    return self;
}
@end
