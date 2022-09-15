# ease_comp
easingスクリプトを用いているスクリプトをeaseに対応させるためのライブラリ(手抜き)

## 使い方
easeに対応させたいスクリプトのrequireをease_compに変更します  
```
require("easing")とか -> require("ease_comp")
```

同ディレクトリ又はAviutlの存在するディレクトリ以下にease.dll, ease_common.luaが必要です  
UndoFish版イージングの範囲内の値は自動的にマイナスになるため、ease特有の「負の値を入力する」処理は必要ないです  
死ぬほど手抜きです。autoメソッドしか対応してません  
動かないスクリプトは普通にあります。改良プルリク歓迎  

## 動作確認

個別オブジェクトを中間点毎に表示スクリプト(https://www.youtube.com/watch?v=fqgmParrAK0)  
当スクリプトの58行目を  
```
 E = require("ease_comp")
 ```
 に変更

Ta-Normal (TA-Trackに同梱 https://twitter.com/respectrum93/status/921674998099492866)

TA-Track85行目よりeasing関数を
```
local function easing(x) return x*x*(3-2*x) end
if (easein>0 or easeout>0) then
	local E = require("ease_comp")
	easing = function(x,n)
		return E.easing(n,x,0,1,1)
	end
end
```
に変更

Ta-Arrange (TA-Trackに同梱 https://twitter.com/respectrum93/status/921674998099492866)

TA-Track220行目よりeasing関数を
```
local function easing(x) return x*x*(3-2*x) end
if (ease) and (ease>0) then
	local E = require("ease_comp")
	easing = function(x)
		return E.easing(ease,x,0,1,1)
	end
end
```
に変更

