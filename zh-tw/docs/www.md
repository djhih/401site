title: WWW Server 使用手冊
---

## WWW Server 使用手冊
### 注意事項
- 不可放置非法物品且供人下載，機房有權可以刪除非法物

### 支援服務
- cgi
- php

### 如何建立/放置自己的 HomePage？
**SSH**
1. 請連線至任一工作站，並到自己的家目錄下，建立 WWW 目錄。
```bash
mkdir WWW
```
2. 將網頁放入 WWW 目錄。
    - 首頁檔案必需為：index.html index.php index.shtml


**FTP 上傳 (For Windows 使用者, 感謝 cct96u 提供)**

1. 開啟任意一個資料夾, 網址列上打 ftp://csie0.cs.ccu.edu.tw
2. 此時會出現一個方塊說「FTP 資料夾錯誤」, 按“確定”跳過它.
3. 接者在空白處按右鍵，選「登入身分」, 輸入你的系計中的帳號密碼即可登入
4. 最後建立一個 WWW 資料夾, 再將網站放進 WWW 資料夾內即可
    - 首頁檔案必需為：index.html index.php index.shtml

### 使用者的 URL 為何？
```
http://www.cs.ccu.edu.tw/~username/ (username 為你個人使用的帳號)
```

### 使用者如何執行自己的php程式？
1. 程式副檔名為.php
2. 將程式放在 WWW 目錄下任一地方

**範例**
假設 llh91 在 WWW 目錄下有個 xxx.php 的程式，用 browser 執行 PHP 的方式如下: 
```
http://www.cs.cs.ccu.edu.tw/~llh91/xxx.php
```
### 使用者如何執行自己的cgi程式？
1. 程式副檔名必須是 .cgi
2. 請到自己的根目錄下，在 WWW 目錄底下建立 cgi-bin 目錄 (必需先建立 WWW 目錄)
3. 將程式放在WWW目錄底下的cgi-bin目錄下

**範例**
假設 llh91 在 WWW/cgi-bin 下有一個 xxx.cgi 的程式,用 browser 執行方式如下: 
```
http://www.cs.ccu.edu.tw/~llh91/cgi-bin/xxx.cgi
```


**平台相異性**
上述 http://www.cs.ccu.edu.tw 主機為 FreeBSD 作業系統
系上另外提供 Linux WWW server： http://linux.cs.ccu.edu.tw/


因此請在 linux.cs 上面編譯 cgi 程式的系上成員，使用連結：
```
http://linux.cs.ccu.edu.tw/~llh91/cgi-bin/xxx.cgi
```
而在 csie*.cs 上面編譯 cgi 程式的系上成員，則使用原本連結：
```
http://www.cs.ccu.edu.tw/~llh91/cgi-bin/xxx.cgi
```

## WWW2 Server 使用手冊
### 注意事項
支援 WWW Server，當 WWW Server 負載過高時，可以使用 WWW2 Server 替代之。
不可放置非法物品且供人下載，機房有權可以刪除非法物。

### 支援服務
- cgi
- php

### 使用者的 URL 為何？
```
http://www2.cs.ccu.edu.tw/~username/ (username 為你個人使用的帳號)
```
