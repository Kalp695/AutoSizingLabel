# AutoSizingLabel
# How to use

####################
#import "AutosizingLabel.h"

- (void)viewDidLoad {
    [super viewDidLoad];

    AutosizingLabel *label = [[AutosizingLabel alloc] init];
    label.text = @"Some text here";
    [self.view addSubview:label];
}

##########################
If you're using a XIB, you can select any UILabel and click on the Identity Inspector in the right sidebar to set it's class to AutosizingLabel. In either case, setting the .text property will auto update the size of the label.
