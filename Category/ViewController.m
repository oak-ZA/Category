//
//  ViewController.m
//  Category
//
//  Created by 张奥 on 2019/5/10.
//  Copyright © 2019年 张奥. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+Delay.h"
#import "CustomTableViewCell.h"
#import "NSObject+Extention.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong) UIButton *button;
@property (nonatomic,strong) NSArray *datas;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSObject *objc = [[NSObject alloc] init];
    objc.name = @"张奥";
    objc.age = 10;
    NSLog(@"%@",objc.name);
    NSLog(@"%ld",objc.age);
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.delayTime = 18;
    button.frame = CGRectMake(100, 100, 100, 100);
    button.backgroundColor = [UIColor blueColor];
    self.button = button;
    [self.view addSubview:button];
    [button addTarget:self action:@selector(clickBtn:) forControlEvents:UIControlEventTouchUpInside];
    
    self.datas = @[@{@"name":@"猫咪",@"bir":@"10-18"},@{@"name":@"妞",@"bir":@"08-28"}];
    UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height) style:UITableViewStylePlain];
    tableView.delegate = self;
    tableView.dataSource = self;
    tableView.rowHeight = 50;
    [tableView registerNib:[UINib nibWithNibName:@"CustomTableViewCell" bundle:nil] forCellReuseIdentifier:@"CELL"];
    [self.view addSubview:tableView];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.datas.count;
    
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CELL" forIndexPath:indexPath];
    NSDictionary *dic = self.datas[indexPath.row];
    cell.nameLab.text = dic[@"name"];
    cell.birthLab.text = dic[@"bir"];
    return cell;
}
-(void)clickBtn:(UIButton*)button{
    button.delayTime ++;
    [button changeBackColor];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
