# RIME 速成輸入法配置整合

> 為繁體中文與粵語使用者打造的 Rime 速成輸入方案——更自然的詞頻、更聰明的整句輸入。

![Rime](https://img.shields.io/badge/Rime-Quick5-0f766e?style=flat-square)
![Traditional Chinese](https://img.shields.io/badge/繁體中文-supported-c2410c?style=flat-square)
![Cantonese](https://img.shields.io/badge/粵語-supported-7c3aed?style=flat-square)
![GitHub stars](https://img.shields.io/github/stars/JACKCHAN000/Rime-Quick5-Setup?style=flat-square)

RIME 速成輸入法配置改善系統內建速成輸入法候選排序欠佳、粵語詞彙不足及長句輸入不順的問題。方案結合繁體中文與粵語語料重算詞頻，並提供以相同語料重新訓練的語法模型，讓候選結果更貼近日常書寫習慣。

---

## 語法模型效果

新的 `zh-hant-cantonese` 語法模型會根據上下文調整候選排序，支援更自然的連續輸入與整句組詞。

<img width="705" height="120" alt="語法模型候選效果示例一" src="https://github.com/user-attachments/assets/d8435d8c-5ac4-4fb5-bfe8-9d1a97341ca8" />

<img width="1002" height="144" alt="語法模型候選效果示例二" src="https://github.com/user-attachments/assets/5e84cfe0-0862-4c6b-a01d-193dc8f02a0e" />

---

## 特色

- **語料驅動詞頻**：使用繁體中文及粵語語料重新計算速成詞庫詞頻。
- **上下文語法模型**：利用語料重新訓練模型，改善候選排序與整句輸入。
- **粵語友善詞庫**：整合粵語、維基、動漫、人名、地名等常用詞庫。
- **中英混合輸入**：中文、英文與中英混合詞彙可在同一方案中輸入。
- **多種反查方式**：以速成碼反查粵語或國語讀音，也可臨時切換至粵拼或拼音輸入。
- **實用 Lua 工具**：支援日期、時間、星期、農曆、Unicode、數字大寫及計算器等功能。
- **豐富輸入體驗**：內建 Emoji、顏文字、科學符號、快捷短語及簡繁切換。

詞頻處理及語法模型訓練流程可參考 [rime-corpus-processing](https://github.com/JACKCHAN000/rime-corpus-processing)。

---

## 安裝

1. 從 [Rime 官方網站](https://rime.im/) 安裝適合你平台的輸入法前端，例如 Windows 的小狼毫或 macOS 的鼠鬚管。
2. 備份現有的 Rime 使用者資料夾。
3. 下載此 repo，將所有檔案複製到 Rime 使用者資料夾。
4. 執行「重新部署」，然後選擇「速成」方案。

> 如要使用完整的粵拼輸入及反查功能，可同時安裝 [粵語拼音輸入方案](https://github.com/rime/rime-cantonese)。

---

## 快捷輸入與反查

| 輸入 | 功能 |
| --- | --- |
| `date` | 輸入日期 |
| `time` | 輸入時間 |
| `week` | 輸入星期 |
| `datetime` | 輸入 ISO 8601 日期時間 |
| `timestamp` | 輸入時間戳 |
| `lunar` | 輸入農曆日期 |
| `` `c `` | 以速成碼反查粵語讀音 |
| `` `p `` | 以速成碼反查國語讀音 |
| `` `C `` | 臨時使用粵語拼音輸入 |
| `` `P `` | 臨時使用國語拼音輸入 |

---

## 自訂詞庫

- 修改 `custom_phrase.txt` 可加入自己的快捷短語。
- 修改 `cn_dicts/*.dict.yaml` 可調整或擴充中文詞庫。
- 在 `quick5.extended.dict.yaml` 的 `import_tables` 中，可按需要啟用或停用個別詞庫。
- Rime 詞典格式與進階設定可參考 [Rime Wiki：碼表與詞典](https://github.com/rime/home/wiki/RimeWithSchemata#%E7%A2%BC%E8%A1%A8%E8%88%87%E8%A9%9E%E5%85%B8)。

---

## 更多效果

<details>
<summary>展開功能截圖</summary>

### 速成整句連打

![速成整句連打](https://user-images.githubusercontent.com/61930699/95476217-9a76aa80-09b9-11eb-8c38-af670367176b.png)

### 廣東話及自訂詞庫

![廣東話及自訂詞庫](https://user-images.githubusercontent.com/61930699/95475219-90a07780-09b8-11eb-8125-7ce725fcc09e.png)

### 中英混合輸入

![中英混合輸入](https://user-images.githubusercontent.com/61930699/95475224-91390e00-09b8-11eb-8fac-5c3e5d87d19a.png)

### 英文單字提示

![英文單字提示](https://user-images.githubusercontent.com/61930699/95475216-8f6f4a80-09b8-11eb-866a-3eb8b0f5477f.png)

### 快捷短語

![快捷短語](https://user-images.githubusercontent.com/61930699/95476761-2983c280-09ba-11eb-9be2-252fcf3f49a2.png)

### 科學符號

![科學符號](https://user-images.githubusercontent.com/61930699/95475218-9007e100-09b8-11eb-99fd-d347673f2604.png)

### Emoji 聯想

![Emoji 聯想](https://user-images.githubusercontent.com/61930699/95476428-d1e55700-09b9-11eb-8eaf-343e7784c1f0.png)

### 顏文字

![顏文字](https://user-images.githubusercontent.com/61930699/95476871-4d470880-09ba-11eb-98d6-db7df95c1f72.png)

### 日期、時間及星期

![日期、時間及星期](https://user-images.githubusercontent.com/61930699/95554519-e3267600-0a42-11eb-8975-45109c760c61.png)

### 粵語讀音反查

![粵語讀音反查](https://user-images.githubusercontent.com/61930699/95823550-63f5b280-0d60-11eb-8197-dc388e2991b8.png)

### 國語讀音反查

![國語讀音反查](https://user-images.githubusercontent.com/61930699/95823548-635d1c00-0d60-11eb-9a4a-8fcac9831ddb.png)

</details>

---

## 延伸功能

Rime 配合 Lua 插件可實現更多功能，例如 Google 翻譯及搜尋建議：

[Rime-Lua-GoogleTranslate](https://github.com/JACKCHAN000/Rime-Lua-GoogleTranslate)

![Rime Lua Google Translate](https://user-images.githubusercontent.com/61930699/113588017-3419ce80-9662-11eb-8ce6-51e6443a32e8.gif)

---

## 鳴謝

- [萬象詞庫](https://github.com/amzxyz/RIME-LMDG) — 主要詞庫
- [白霜拼音](https://github.com/gaboolic/rime-frost)
- [薄荷拼音](https://github.com/Mintimate/oh-my-rime)
- [霧凇拼音](https://github.com/iDvel/rime-ice)
- [粵語拼音輸入方案](https://github.com/rime/rime-cantonese) — 粵語詞庫
- [融合拼音](https://github.com/tumuyan/rime-melt) — 維基及動漫詞庫
