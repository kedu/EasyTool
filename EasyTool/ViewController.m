//
//  ViewController.m
//  EasyTool
//
//  Created by Apple on 2017/12/5.
//  Copyright © 2017年 李康滨,工作qq:1218773641. All rights reserved.
//

#import "ViewController.h"


@interface ViewController()

@property (weak) IBOutlet NSTextField *UIViewName;

@property (weak) IBOutlet NSTextField *UIViewNum;

@property (weak) IBOutlet NSTextField *UIImageViewName;

@property (weak) IBOutlet NSTextField *UIImageViewNum;

@property (weak) IBOutlet NSTextField *UILabelName;

@property (weak) IBOutlet NSTextField *UILabelNum;


@property (weak) IBOutlet NSTextField *UIButtonName;

@property (weak) IBOutlet NSTextField *UIButtonNum;

@property (weak) IBOutlet NSTextField *UITextFieldName;

@property (weak) IBOutlet NSTextField *UITextfieldNum;

@property (weak) IBOutlet NSTextField *UITextViewName;

@property (weak) IBOutlet NSTextField *UITextViewNum;


@property (weak) IBOutlet NSButton *clearBtn;

@property (weak) IBOutlet NSButton *commitBtn;

@property (weak) IBOutlet NSButton *sampleOne;

@property (weak) IBOutlet NSButton *sampleTwo;

@property (weak) IBOutlet NSButton *becomeSample;

@property (weak) IBOutlet NSButton *becomeSampleTwo;







@end


@implementation ViewController

- (void)awakeFromNib {
    
    [super awakeFromNib];
    
    //数量只能输数字

    NSNumberFormatter * formater = [[NSNumberFormatter alloc] init];
    
    _UIViewNum.cell.formatter    = formater;
    
    _UIImageViewNum.cell.formatter    = formater;
    
    _UILabelNum.cell.formatter    = formater;
    
    _UIButtonNum.cell.formatter    = formater;
    
    _UITextViewNum.cell.formatter    = formater;
    
    _UITextfieldNum.cell.formatter    = formater;
  
    

}


/**
 清空

 @param sender 清空按钮
 */
- (IBAction)clearAction:(id)sender {
}


/**
 提交

 @param sender 提交按钮
 */
- (IBAction)commitAction:(id)sender {
    
    //先判断是否有值
    
    //然后一个一个来.
    //先判断数量,如果数量大于1,递增
    //没有就一个
    
    
    
    
    
    if (_UIViewNum.cell.title.integerValue == 1){
        
        NSString*name = (_UIViewName.cell.title.length >0 )?_UIViewName.cell.title:@"viewName";
      
        NSString*str = [NSString stringWithFormat:@"@property (nonatomic , strong ) UIView * %@ ;\r\n ",name];

        NSLog(@"数字为1 %@", str);
        
        NSString*viewStr = @"\r\n <# ViewName #>  =  [UIView new];\r\n\
        <# viewName  #>.backgroundColor = [UIColor colorWithHex:<# 16color #>];\r\n";
        
        
        NSLog(@"%@",viewStr);
        
//        NSLocalizedStringFromTableInBundle(<#key#>, <#tbl#>, <#bundle#>, <#comment#>)
//         NSLocalizedStringFromTable(<#key#>, <#tbl#>, <#comment#>)
//        NSLocalizedString(<#key#>, <#comment#>)

    }else if (_UIViewNum.cell.title.integerValue > 1) {
        
       
         NSString*name = (_UIViewName.cell.title.length >0 )?_UIViewName.cell.title:@"viewName";
        
        NSString*str ;
        
        for (int i=0; i<_UIViewNum.cell.title.integerValue; i++) {
            
            
            
            if (str.length <= 0) {
                
                str = [NSString stringWithFormat:@"\r\n @property (nonatomic , strong ) UIView * %@%d ;\r\n ",name,i];
                
                
            }else {
                
             str =   [str stringByAppendingString:[NSString stringWithFormat:@"@property (nonatomic , strong ) UIView * %@%d ;\r\n ",name,i]];
                
            }
            

        }
        
        
       NSLog(@"%@", str);
        
        
        
        
        
    }
    
    
    
    ///
    if (_UIImageViewNum.cell.title.integerValue == 1){
        
        NSString*name = (_UIImageViewName.cell.title.length >0 )?_UIImageViewName.cell.title:@"imageViewName";
        
    
        
        NSString*str = [NSString stringWithFormat:@"@property (nonatomic , strong ) UIImageView * %@ ;\r\n ",name];
        
        NSLog(@"数字为1 %@", str);
        
        
    }else if (_UIImageViewNum.cell.title.integerValue > 1) {
        
        
        NSString*name = (_UIImageViewName.cell.title.length >0 )?_UIImageViewName.cell.title:@"imageViewName";
        
        NSString*str ;
        
        for (int i=0; i<_UIImageViewNum.cell.title.integerValue; i++) {
            
            
            
            if (str.length <= 0) {
                
                str = [NSString stringWithFormat:@"\r\n @property (nonatomic , strong ) UIImageView * %@%d ;\r\n ",name,i];
                
            }else {
                
                str =   [str stringByAppendingString:[NSString stringWithFormat:@"@property (nonatomic , strong ) UIImageView * %@%d ;\r\n ",name,i]];
                
            }
            
            
        }
        
        
        NSLog(@"%@", str);
        
        
        
        
        
    }
    
    
    ///
    if (_UILabelNum.cell.title.integerValue == 1){
        
        NSString*name = (_UILabelName.cell.title.length >0 )?_UILabelName.cell.title:@"labelName";
        
        
        
        NSString*str = [NSString stringWithFormat:@"@property (nonatomic , strong ) UILabel * %@ ;\r\n ",name];
        
        NSLog(@"数字为1 %@", str);
        
        
    }else if (_UILabelNum.cell.title.integerValue > 1) {
        
        
        NSString*name = (_UILabelName.cell.title.length >0 )?_UILabelName.cell.title:@"imageViewName";
        
        NSString*str ;
        
        for (int i=0; i<_UILabelNum.cell.title.integerValue; i++) {
            
            
            
            if (str.length <= 0) {
                
                str = [NSString stringWithFormat:@"\r\n @property (nonatomic , strong ) UILabel * %@%d ;\r\n ",name,i];
                
            }else {
                
                str =   [str stringByAppendingString:[NSString stringWithFormat:@"@property (nonatomic , strong ) UILabel * %@%d ;\r\n ",name,i]];
                
            }
            
            
        }
        
        
        NSLog(@"%@", str);
        
        
        
        
        
    }
    
    
    
    //
    if (_UIButtonNum.cell.title.integerValue == 1){
        
        NSString*name = (_UIButtonName.cell.title.length >0 )?_UIButtonName.cell.title:@"buttonName";
        
        
        
        NSString*str = [NSString stringWithFormat:@"@property (nonatomic , strong ) UIButton * %@ ;\r\n ",name];
        
        NSLog(@"数字为1 %@", str);
        
        
    }else if (_UIButtonNum.cell.title.integerValue > 1) {
        
        
        NSString*name = (_UIButtonName.cell.title.length >0 )?_UIButtonName.cell.title:@"imageViewName";
        
        NSString*str ;
        
        for (int i=0; i<_UIButtonNum.cell.title.integerValue; i++) {
            
            
            
            if (str.length <= 0) {
                
                str = [NSString stringWithFormat:@"\r\n @property (nonatomic , strong ) UIButton * %@%d ;\r\n ",name,i];
                
            }else {
                
                str =   [str stringByAppendingString:[NSString stringWithFormat:@"@property (nonatomic , strong ) UIButton * %@%d ;\r\n ",name,i]];
                
            }
            
            
        }
        
        
        NSLog(@"%@", str);
        
        
        
        
        
    }
    
    //
    if (_UITextfieldNum.cell.title.integerValue == 1){
        
        NSString*name = (_UITextFieldName.cell.title.length >0 )?_UITextFieldName.cell.title:@"textFieldName";
        
        
        
        NSString*str = [NSString stringWithFormat:@"@property (nonatomic , strong ) UITextField * %@ ;\r\n ",name];
        
        NSLog(@"数字为1 %@", str);
        
        
    }else if (_UITextfieldNum.cell.title.integerValue > 1) {
        
        
        NSString*name = (_UITextFieldName.cell.title.length >0 )?_UITextFieldName.cell.title:@"textFieldName";
        
        NSString*str ;
        
        for (int i=0; i<_UITextfieldNum.cell.title.integerValue; i++) {
            
            
            
            if (str.length <= 0) {
                
                str = [NSString stringWithFormat:@"\r\n @property (nonatomic , strong ) UITextField * %@%d ;\r\n ",name,i];
                
            }else {
                
                str =   [str stringByAppendingString:[NSString stringWithFormat:@"@property (nonatomic , strong ) UITextField * %@%d ;\r\n ",name,i]];
                
            }
            
            
        }
        
        
        NSLog(@"%@", str);
        
        
        
        
        
    }
    
    //
    if (_UITextViewNum.cell.title.integerValue == 1){
        
        NSString*name = (_UITextViewName.cell.title.length >0 )?_UITextViewName.cell.title:@"textViewName";
        
        
        
        NSString*str = [NSString stringWithFormat:@"@property (nonatomic , strong ) UITextView * %@ ;\r\n ",name];
        
        NSLog(@"数字为1 %@", str);
        
        
    }else if (_UITextViewNum.cell.title.integerValue > 1) {
        
        
        NSString*name = (_UITextViewName.cell.title.length >0 )?_UITextViewName.cell.title:@"textViewName";
        
        NSString*str ;
        
        for (int i=0; i<_UITextViewNum.cell.title.integerValue; i++) {
            
            
            
            if (str.length <= 0) {
                
                str = [NSString stringWithFormat:@"\r\n @property (nonatomic , strong ) UITextView * %@%d ;\r\n ",name,i];
                
            }else {
                
                str =   [str stringByAppendingString:[NSString stringWithFormat:@"@property (nonatomic , strong ) UITextView * %@%d ;\r\n ",name,i]];
                
            }
            
            
        }
        
        
        NSLog(@"%@", str);
        
        
        
        
        
    }
    
    
    
    
    
    
    
}


/**
 输出模板一

 @param sender 模板按钮
 */
- (IBAction)sampleOneAction:(id)sender {
}


/**
 输出模板二

 @param sender 模板按钮
 */
- (IBAction)sampleTwoAction:(id)sender {
}





/**
 设为模板

 @param sender 模板按钮
 */

- (IBAction)becomeSampleAction:(id)sender {
    
    NSLog(@"设为模板一");
    
    
}



/**
 设为模板二

 @param sender 模板按钮
 */
- (IBAction)becomeSampleTwoAction:(id)sender {
    
    NSLog(@"设为模板二");
}




- (void)viewWillAppear {
    [super viewWillAppear];
    
    
}

- (void)viewDidAppear {
    [super viewDidAppear];
    
}

- (void)viewWillDisappear {
    [super viewWillDisappear];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}




@end
