//
//  HYMallCollectionViewCell.m
//  HYLive
//
//  Created by Sekorm on 2017/3/31.
//  Copyright © 2017年 YL. All rights reserved.
//

#import "HYMallCollectionViewCell.h"

@interface HYMallCollectionViewCell ()

@property (nonatomic,strong) UIImageView *imageView;
@end

@implementation HYMallCollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _imageView = [[UIImageView alloc] init];
        [self.contentView addSubview:_imageView];
    }
    return self;
}

- (void)setImageName:(NSString *)imageName {
    
    _imageName = imageName;
    _imageView.image = [UIImage imageNamed:imageName];
}

- (void)layoutSubviews {
    
    [super layoutSubviews];
    self.imageView.frame = self.bounds;
}


@end
