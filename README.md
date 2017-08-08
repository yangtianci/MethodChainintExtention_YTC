

以链式编程思想作为指导, 将普通的多行方法以及中括号语法转换为点语法进行调用, 主要目的是为了减少创建UI的代码量, 使得代码更加集中, 可读性更好.

使用范例:

1.

//新创建一个UIImageView并对frame等进行_赋值_添加手势_将自己添加进父视图

UIImageView *imgV = [UIImageView tc_InitWithBlock:^(UIImageView *imgView) {
      imgView.tc_BGColorEnum(tcColor_Rand0m).tc_Gestrure(GestureType_Tap,self,@selector(Taplalalalla:)).tc_FrameValue(50,50,100,100).tc_Tag(20).tc_SuperView(self.view);
      
    }];



2.

//当然,也可以拆开进行使用,此类库接口和系统的接口可以混用

UILabel *firT = [[UILabel alloc]init];
[self.view addSubview:firT];
firT.setText(@"label").setTextColor([UIColor brownColor]).setFontSize(30).setFrame(20,20,200,50).setAlign(NSTextAlignmentCenter);

## V1.1 稳定版

- 常用控件的常用属性改造已经基本完成,接口已经稳定,可以放心使用.

- 因为需要和系统接口进行区分,因此前缀采用了特殊缩写.
- 增加了快速创建六种手势的接口,可以一句话创建一个手势并添加.
- 增加了快速创建背景色,两种方式,一种通过自己创建颜色,一种直接使用枚举更加便捷.
- 增加了frame的两种设置方式,可以选择传入结构体,也可以直接传入四个值
- 增加了直接将自身加入父视图的接口,推荐最后一个方法调用








