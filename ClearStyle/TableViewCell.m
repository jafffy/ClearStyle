//
//  TableViewCell.m
//  ClearStyle
//
//  Created by Jaewon Choi on 2015. 3. 4..
//  Copyright (c) 2015년 Jaewon Choi. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import "TableViewCell.h"

@implementation TableViewCell
{
    CAGradientLayer* _gradientLayer;
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        _gradientLayer = [CAGradientLayer layer];
        _gradientLayer.frame = self.bounds;
        _gradientLayer.colors = @[(id)[[UIColor colorWithWhite:1.0 alpha:0.2] CGColor],
                                  (id)[[UIColor colorWithWhite:1.0 alpha:0.1] CGColor],
                                  (id)[[UIColor clearColor] CGColor],
                                  (id)[[UIColor colorWithWhite:0.0 alpha:0.1] CGColor]];
        _gradientLayer.locations = @[@0.00, @0.01, @0.95, @1.00];
        [self.layer insertSublayer:_gradientLayer atIndex:0];
    }
    
    return self;
}

- (void) layoutSubviews {
    [super layoutSubviews];
    
    _gradientLayer.frame = self.bounds;
}

@end
