//
//  HYDiscoverViewController.m
//  HYLive
//
//  Created by Sekorm on 2017/3/23.
//  Copyright © 2017年 YL. All rights reserved.
//

#import "HYDiscoverViewController.h"
#import "HYMallCollectionViewCell.h"

@interface HYDiscoverViewController () <UICollectionViewDataSource,UICollectionViewDelegate>
@property (nonatomic,strong) UICollectionView *collectionView;
@end

@implementation HYDiscoverViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.view addSubview:self.collectionView];
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {

    return 21;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {

    HYMallCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"HYMallCollectionViewCell" forIndexPath:indexPath];
    NSString *imageName = [NSString stringWithFormat:@"%ld",indexPath.row + 1];
    cell.imageName = imageName;
    return cell;
}

- (UICollectionView *)collectionView {
    
    if (!_collectionView) {
        
        UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
        flowLayout.itemSize = CGSizeMake(66, 70);
        
        
        _collectionView = [[UICollectionView alloc] initWithFrame:self.view.bounds collectionViewLayout:flowLayout];
        [_collectionView registerClass:[HYMallCollectionViewCell class] forCellWithReuseIdentifier:@"HYMallCollectionViewCell"];
        _collectionView.dataSource = self;
        _collectionView.delegate = self;
        _collectionView.backgroundColor = [UIColor whiteColor];
    }
    return _collectionView;
}


@end
