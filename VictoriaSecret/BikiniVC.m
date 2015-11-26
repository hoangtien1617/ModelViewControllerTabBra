//
//  BikiniVC.m
//  VictoriaSecret
//
//  Created by Hoàng Tiến on 11/26/15.
//  Copyright © 2015 Hoàng Tiến. All rights reserved.
//

#import "BikiniVC.h"
#import "VSModel.h"
#import "DataManager.h"
#import "DetailVC.h"
@interface BikiniVC ()<UITableViewDataSource,UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation BikiniVC

{
    DataManager *dataManager;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    dataManager = [DataManager getSingleton];
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return dataManager.data.count;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    VSModel *model = dataManager.data[indexPath.row];
    cell.textLabel.text = model.name;
    cell.detailTextLabel.text = model.measure;
    cell.imageView.image = model.icon;
    return cell;
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    DetailVC *detailVC = (DetailVC*)segue.destinationViewController;
    NSIndexPath *selectedIndexpath = [self.tableView indexPathForSelectedRow];
    detailVC.model = dataManager.data[selectedIndexpath.row];
}
@end
