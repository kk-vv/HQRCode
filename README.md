### `二维码、条码扫描`

---

- `二维码、条码扫描`
- `Block 回调`

##### `调用方式：`

```
[ZXQRScanViewController startScanInViewController:self asPush:true autoDismiss:true callBack:^(NSString *result) {
        [_txtvResult setText:result];
    }];
```

##### `IMAGE`
|IMG1|IMG2|
|--------|--------|
|![](https://github.com/iFallen/HQRCode/raw/master/ScreenShots/1.png)|![](https://github.com/iFallen/HQRCode/raw/master/ScreenShots/2.jpg)|