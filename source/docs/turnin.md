title: Turnin
---

## 學生 - 使用 Turnin 繳交作業

### 繳交作業
在工作站上輸入指令：
```bash
turnin 作業目錄 files...
```
- **作業目錄：**
由助教指定，每次作業會放在不同的目錄下，如資料結構的第一個作業可能會叫 「csds.hw1」


- **files：**
作業檔案，可以是數個檔案，如 「hw1.c hw1.h readme」


- **範例：**
將 hw1.c, hw1.h, 及 readme 複製到助教所指定的 csds.hw1 目錄下。
```bash
turnin csds.hw1 hw1.c hw1.h readme
```

### 查看作業繳交狀態
當作業繳交後，可使用此指令查看作業是否繳交成功：
```bash
turnin -ls 作業目錄
```

### 刪除已交檔案
使用此指令可刪除所有已繳交的檔案：
```
turnin -rm 作業目錄
```

<br/>
## 助教 - 申請與設定 Turnin

### 申請
申請 turnin 目錄時請附下列資料：
1. 課程代碼
2. 課程名稱
3. 課程教授姓名及帳號
4. 課程助教姓名及帳號
5. root 助教（可選）

- **說明：**
    - 課程助教：將加入該課程專屬的 group
    - root 助教：如沒有指定 root 助教，則僅有教授有 turnin 設定權限。為了分擔教授的工作，可指定一位 root 助教獲得設定權限 turnin。
    - 上述帳號皆為教授與助教固有之工作站帳號。
    - 申請後 SA 會回函通知在 `/Turnin` 下所建立的課程目錄為何，教授或 root 助教可以自行到工作站的 `/Turnin/課程目錄` 下建立作業目錄，並記得設定權限。


- **範例：**
    - 課程代碼： 4102062
    - 課程名稱： Data Structure
    - 課程教授： 吳昇(sw)
    - 課程助教： (ssy89)、(hrs89)
    - root 助教： (ssy89)

### 指定作業目錄（以課程目錄 csds 設定 hw1 為例）
1. 教授或 root 助教登入工作站。
2. 到 `/Turnin/csds` 下，建立作業目錄 hw1。
3. 指定 hw1 為作業目錄 csds.hw1 的存放處，讓學生可以交作業進來：
```bash
turnin -s csds.hw1 /Turnin/csds/hw1
```
如此，當修課學生以 turnin 繳交至作業目錄 csds.hw1 時，其檔案便會被複製到 `/Turnin/csds/hw1`。

### 設定助教批改作業
用 `chmod` 調整作業存放處的 group 權限為 rwx ，如此助教才有權限進入其中批改作業。
```bash
chmod g+rwx /Turnin/csds/hw1
```

### 關閉作業目錄
```bash
turnin -d csds.hw1
```

### 查詢作業目錄是否可以 turnin
```
turnin -l csds.hw1
```
