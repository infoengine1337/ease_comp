# ease_comp
easingスクリプトを用いているスクリプトをeaseに対応させるためのライブラリ(手抜き)

## 使い方
easeに対応させたいスクリプトのrequireをease_compに変更します  
```
require("easing")とか -> require("ease_comp")
```

UndoFish版イージングの範囲内の値は自動的にマイナスになるため、ease特有の「負の値を入力する」処理は必要ないです  
死ぬほど手抜きです。autoメソッドしか対応してません  
動かないスクリプトは普通にあります。改良プルリク歓迎  

動作確認:個別オブジェクトを中間点毎に表示スクリプト(https://www.youtube.com/watch?v=fqgmParrAK0)  
当スクリプトの58行目を  
```
 E = require("ease_comp")
 ```
 に変更。 easeの動作を確認  