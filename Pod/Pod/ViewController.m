#import "ViewController.h"

#import "UIViewController+HYPKeyboardToolbar.h"

@interface ViewController ()

@end

@implementation ViewController

- (instancetype)init
{
    self = [super init];
    if (!self) return nil;

    [self hyp_addKeyboardToolbarObservers];

    return self;
}

- (void)dealloc
{
    [self hyp_removeKeyboardToolbarObservers];
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];

    UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(20.0f, 100.0f, 200, 60.0f)];
    textField.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:textField];

    UIBarButtonItem *doneButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone
                                                                                target:self
                                                                                action:@selector(doneButtonAction)];
    self.toolbarItems = @[doneButton];
}

- (void)doneButtonAction
{
    [self.view endEditing:YES];
}

@end
