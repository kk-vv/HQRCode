### `二维码、条码扫描`

---

- `二维码、条码扫描`
- `Block 回调`

##### `iOS10 注意设置相机权限：`

- `Info.plist 设置`

>
Privacy - Camera Usage Description  : 需要您的相机来扫描二维码

##### `调用方式：`

```
[ZXQRScanViewController startScanInViewController:self asPush:true autoDismiss:true callBack:^(NSString *result) {
        [_txtvResult setText:result];
    }];
```

##### `IMAGE`
|IMG1|IMG2|
|--------|--------|
|![](https://github.com/iFallen/HQRCode/raw/master/ScreenShots/1.png)|![](https://github.com/iFallen/HQRCode/raw/master/ScreenShots/2.png)|