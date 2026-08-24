# 01 — Terminal Basics

> Level: 🟢 একদম শুরু থেকে

এই module-এ terminal-এর সবচেয়ে বেসিক অথচ সবচেয়ে বেশি ব্যবহৃত কমান্ডগুলো শেখানো হবে — প্রতিটার real demo সহ।

---

## `pwd`

**কী কাজ করে:** এখন তুমি ফাইলসিস্টেমের কোন ডিরেক্টরিতে আছো, সেটার **full path** দেখায়। (Print Working Directory)

**Syntax:**
```bash
pwd
```

### 🖥️ Demo
```bash
$ pwd
/home/kali
```

### 📤 Output ব্যাখ্যা
`/home/kali` মানে তুমি এখন `kali` ইউজারের হোম ডিরেক্টরিতে আছো। `/` দিয়ে শুরু হওয়া মানে এটা একটা **absolute path** — root (`/`) থেকে শুরু করে পুরো path।

### ⚙️ গুরুত্বপূর্ণ Options
- `pwd -P` → symbolic link থাকলে আসল (physical) path দেখায়

### ⚠️ সাবধানতা
নেই — এটা সম্পূর্ণ নিরাপদ, read-only কমান্ড।

---

## `whoami`

**কী কাজ করে:** এখন তুমি কোন username হিসেবে terminal-এ login/active আছো, তা দেখায়।

**Syntax:**
```bash
whoami
```

### 🖥️ Demo
```bash
$ whoami
kali
```

### 📤 Output ব্যাখ্যা
তুমি `kali` নামের non-root ইউজার হিসেবে কাজ করছো — root না। privileged কমান্ডের জন্য `sudo` লাগবে।

---

## `hostname`

**কী কাজ করে:** মেশিনের নেটওয়ার্ক নাম (hostname) দেখায়।

**Syntax:**
```bash
hostname
```

### 🖥️ Demo
```bash
$ hostname
kali
```

### 📤 Output ব্যাখ্যা
এই মেশিনকে নেটওয়ার্কে `kali` নামে চেনা যাবে — যেমন `ping kali` করলে এই মেশিনেই পৌঁছাবে (লোকাল নেটওয়ার্কে যদি resolve করে)।

---

## `uname -a`

**কী কাজ করে:** কার্নেল ভার্সন, আর্কিটেকচার, ও সিস্টেম সম্পর্কে সব তথ্য একসাথে দেখায়।

**Syntax:**
```bash
uname [options]
```

### 🖥️ Demo
```bash
$ uname -a
Linux kali 6.6.9-amd64 #1 SMP PREEMPT_DYNAMIC Debian 6.6.9-1kali1 x86_64 GNU/Linux
```
*(সঠিক ভার্সন নাম্বার তোমার সিস্টেমে ভিন্ন হবে — এটা example output)*

### 📤 Output ব্যাখ্যা
| অংশ | মানে |
|---|---|
| `Linux` | কার্নেলের নাম |
| `kali` | hostname |
| `6.6.9-amd64` | কার্নেল ভার্সন |
| `x86_64` | প্রসেসর আর্কিটেকচার (64-bit) |
| `GNU/Linux` | সিস্টেম টাইপ |

### ⚙️ গুরুত্বপূর্ণ Options
- `uname -r` → শুধু কার্নেল ভার্সন
- `uname -m` → শুধু আর্কিটেকচার

---

## `date`

**কী কাজ করে:** সিস্টেমের বর্তমান তারিখ ও সময় দেখায়।

**Syntax:**
```bash
date
```

### 🖥️ Demo
```bash
$ date
Mon Aug 24 14:32:07 +06 2026
```

### 📤 Output ব্যাখ্যা
Timezone অনুযায়ী বর্তমান দিন, তারিখ, সময় দেখাচ্ছে। Server troubleshooting-এ log timestamp মেলাতে এটা খুব গুরুত্বপূর্ণ।

---

## `clear`

**কী কাজ করে:** টার্মিনাল স্ক্রিন পরিষ্কার করে (আগের কমান্ড/আউটপুট মুছে ফেলে — actual history মোছে না)।

**Syntax:**
```bash
clear
```

### 🖥️ Demo
```bash
$ clear
```
*(স্ক্রিন খালি হয়ে যাবে, নতুন prompt উপরে চলে আসবে)*

### ⚙️ Shortcut
`clear` টাইপ না করেও **Ctrl + L** চাপলে একই কাজ হয়।

---

## `history`

**কী কাজ করে:** এই session-এ (এবং আগের session-এর সংরক্ষিত) আগে চালানো কমান্ডগুলোর লিস্ট দেখায়।

**Syntax:**
```bash
history
```

### 🖥️ Demo
```bash
$ history
  1  pwd
  2  whoami
  3  hostname
  4  uname -a
  5  date
```

### 📤 Output ব্যাখ্যা
প্রতিটা লাইনে একটা নাম্বার + আগের কমান্ড। এই নাম্বার ব্যবহার করে `!5` লিখলে সেই কমান্ডটা আবার চালানো যায়।

### ⚙️ গুরুত্বপূর্ণ ব্যবহার
- `history | grep ssh` → আগে `ssh` সংক্রান্ত কোন কমান্ড চালিয়েছিলে তা খুঁজে বের করে
- `Ctrl + R` → history-তে reverse search করে (টাইপ করতে করতে match খুঁজে দেয়)

---

## `man`

**কী কাজ করে:** যেকোনো কমান্ডের সম্পূর্ণ **অফিসিয়াল ম্যানুয়াল** (documentation) টার্মিনাল থেকেই দেখায়।

**Syntax:**
```bash
man <command>
```

### 🖥️ Demo
```bash
$ man ls
```

### 📤 Output ব্যাখ্যা
এটা একটা scrollable পেজ খুলবে যেখানে `ls` কমান্ডের সব option, syntax, ও উদাহরণ থাকবে। বের হতে **`q`** চাপো।

### ⚙️ গুরুত্বপূর্ণ Navigation
| Key | কাজ |
|---|---|
| `Space` | পরের পেজ |
| `b` | আগের পেজ |
| `/word` | ম্যানুয়ালের ভিতরে সার্চ |
| `q` | বের হয়ে আসা |

### ⚠️ সাবধানতা / Common Mistake
`man` থেকে বের হতে না পেরে অনেকে terminal বন্ধ করে ফেলে — মনে রাখো, **`q`** চাপলেই বের হওয়া যায়।

---

## 🧪 Practice

নিচের কমান্ডগুলো নিজে টাইপ করে চালাও এবং প্রতিটার output নোট করো:

```bash
pwd
whoami
hostname
uname -a
date
history
man pwd
```

---

## 📝 Quiz

**Q: কোন কমান্ড দিয়ে বর্তমান ডিরেক্টরির path জানা যায়?**
A. `ls`
B. `pwd`
C. `cd`
D. `whoami`

*(উত্তর: B)*

---

[🏠 Home](../README.md)
[🔑 Command Reference](../command-reference/00-master-command-index.md)
[Next: Navigation & Filesystem ➡](../02-navigation-filesystem/README.md)
