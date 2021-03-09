title: Workstation
---

## 工作站
目前系上提供一台 FreeBSD 工作站與一台 Linux 工作站：
- **FreeBSD**
    - daemon.cs.ccu.edu.tw

- **Linux**
    - tux.cs.ccu.edu.tw

----

## 使用者帳號

### 本系生
- 本系生的帳號資訊會在入學後以紙本告知。
- 五台工作站的帳號與家目錄內的資料皆是共通的。
- 只要依據需求及工作站負載狀況，選擇合適的機器來使用。

### 外系生
- 外系生修習資工系課程時，可在該學期至資工系系辦申請帳號。
- 詳細說明請參閱 [外系生帳號申請](./external.html) 。

----

## 連線
### SSH
- 請以任何支援 SSH protocol version 2 的程式來登入工作站。
    - Windows 使用者可使用如 PuTTY, PieTTY, MobaXterm, ...。
    - Unix-like 使用者可以使用 OpenSSH, Dropbear, ...。
<br/>

- 登入方式：
``` Shell-Script
ssh 帳號名稱@工作站位址
```
- 範例：
``` Shell-Script
ssh user@tux.cs.ccu.edu.tw
```
### FTP
- 建議使用 SFTP 傳輸檔案以增加安全性。

### SFTP
- 所有工作站皆有支援 SFTP 協定。

----

## Quota 
系上儲存空間有限，故實施以下限制：
- 家目錄容量限制 ( ~/ ) :
    - 大學部在校生：10 GB
    - 碩士班在校生： 3 GB
    - 畢業大學部、碩士班校友：1 GB


- Quota 限制有緩衝 0.5 GB，即在超過 quota，但未超出 0.5 GB 時，有三日緩衝時間，如超過上限或超過三日緩衝時間，將無法再進行資料寫入。


- 查看目前用量與 quota 限制：
    - FreeBSD
``` Shell-Script
    quota -h
```
    - Linux
``` Shell-Script
    quota -s
```

## 更改密碼

需至 tux.cs.ccu.edu.tw

```
> passwd
```

## 更改 Shell

需至 tux.cs.ccu.edu.tw

輸入密碼驗證身份後，即可更換

```
> chsh.ldap
```

## 外系申請帳號

##### 由於 csie2 已退役，目前是給外系生能用 tux,daemon
##### 可能從下學期開始，會額外架一台給外系生使用
##### 需刪除原先 csie2 的部分