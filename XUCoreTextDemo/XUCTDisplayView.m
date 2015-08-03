//
//  XUCTDisplayView.m
//  XUCoreTextDemo
//
//  Created by 徐继垚 on 15/6/24.
//  Copyright (c) 2015年 徐继垚. All rights reserved.
//

#import "XUCTDisplayView.h"

@implementation XUCTDisplayView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    [super drawRect:rect];
    
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetTextMatrix(context, CGAffineTransformIdentity);
    CGContextTranslateCTM(context, 0, self.bounds.size.height);
    CGContextScaleCTM(context, 1.0, -1.0);
    
    
    CGMutablePathRef path = CGPathCreateMutable();
//    CGPathAddRect(path, NULL, self.bounds);
    CGPathAddEllipseInRect(path, NULL, self.bounds);
    
    
    NSAttributedString * attString = [[NSAttributedString alloc]initWithString:@"祖国的语言，像繁星那样灿烂，像珍珠那样宝贵，"
                            "像牡丹那样美丽，像梅花那样芬芳；"
                            "祖国的语言，耸立着珠峰，镌刻着长城，"
                            "绵延着昆仑，流淌着黄河；"
                            "有 汉魏风骨，唐宋诗章，金元曲剧，明清小说；"
                            "有皇宫凤阕，阆苑奇葩，竹篱茅塘，朝日霞光；"
                            "有婉约浓艳，朴素大方，清新冷峻，典雅豪放。"
                                      "徐继垚"];
    CTFramesetterRef framesetter = CTFramesetterCreateWithAttributedString((CFAttributedStringRef)attString);
    CTFrameRef frame = CTFramesetterCreateFrame(framesetter, CFRangeMake(0, [attString length]), path, NULL);
    
    
    CTFrameDraw(frame, context);
    
    
    CFRelease(frame);
    CFRelease(path);
    CFRelease(framesetter);
    
        
    
}


@end
