# ZFLoading
Loading视图动画
### 效果演示：
![image](https://github.com/renzifeng/ZFLoading/raw/master/ZFLoading.gif)


``` objc
//3秒加载完毕，动画写在viewDidAppear
[self.loadingView setStarsByStars:@(1.0)];
[UIView animateWithDuration:3 animations:^{
    [self.loadingView setStarsByStars:@(0)];
} completion:^(BOOL finished) {

}];
```
# 期待
- 如果在使用过程中遇到BUG，或发现功能不够用，希望你能Issues我
- 如果觉得好用请Star!
- 谢谢!
