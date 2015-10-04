# CircleProgressView

IOS 进度圈

---

效果：

![](http://ww3.sinaimg.cn/large/74311666jw1ewpjr5c95oj20af0j5gm5.jpg)

![](http://ww4.sinaimg.cn/large/74311666jw1ewpjr7dnz6j20af0j5jrr.jpg)


调用：

```Objective-c
    CircleProgressView *progress = [[CircleProgressView alloc]initWithFrame:CGRectMake(0, 0, 250, 250)];
    progress.arcFinishColor =
    [self colorWithHexString:@"#73AF36"];
    progress.arcUnfinishColor =
    [self colorWithHexString:@"#73AF36"];
    progress.arcBackColor = [self colorWithHexString:@"#EAEAEA"];
    progress.percent = 0.2;
    progress.width = 15;
    [testView addSubview:progress];
```
