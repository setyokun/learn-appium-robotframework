---

# 🤖 Robot Framework Appium Tests

![CI/CD Android Tests](https://github.com/setyokun/learn-appium-robotframework/actions/workflows/run-appium-on-browserstack.yml/badge.svg)

Test automation Android dengan **Robot Framework + AppiumLibrary**, dijalankan di **BrowserStack**.

---

## 📦 Dependency

* Python 3.7+
* `pip`
* [Robot Framework](https://robotframework.org/)
* AppiumLibrary
* BrowserStack account

---

## 🛠️ Setup Lokal

### 1. Clone Repo

```bash
git clone https://github.com/setyokun/learn-appium-robotframework.git
cd learn-appium-robotframework
```

### 2. Install Dependency

```bash
pip install --upgrade pip
pip install robotframework robotframework-appiumlibrary
```

### 3. Siapkan File `resources/variables.robot`

Buat file `variables.robot` untuk menyimpan konfigurasi BrowserStack seperti:

```robot
*** Variables ***
${USERNAME}       your_browserstack_username
${ACCESS_KEY}     your_browserstack_access_key
${APP}            bs://<app-id-dari-browserstack>
${DEVICE}         Google Pixel 6
${OS_VERSION}     12.0
```

Atau, bisa juga langsung override saat menjalankan test:

```bash
robot --variable APP:bs://your_app_url tests/login-demo.robot
```

---

## 🚀 Menjalankan Test

### 1. Jalankan di Lokal

Untuk menjalankan di lokal:

* Pastikan emulator Android sudah berjalan.
* Jalankan Appium Server (default port: 4723).

```bash
appium
```

Lalu, jalankan test:

```bash
robot tests/
```

### 2. Jalankan di BrowserStack

Untuk menjalankan di BrowserStack, gunakan URL aplikasi yang sudah di-upload:

```bash
robot --variable APP:bs://your_app_url tests/login-demo.robot
```

---

## 🏗️ CI/CD di GitHub Actions

CI pipeline otomatis berjalan ketika ada perubahan di repository Flutter (melalui trigger `repository_dispatch`). Kamu bisa menjalankan test secara manual melalui GitHub Actions juga.

Contoh manual trigger workflow:

```bash
gh workflow run robot-ci.yml
```

---

## ⚡ Integrasi dengan Flutter dan BrowserStack

Pada repository ini, **Robot Framework** digunakan untuk melakukan test otomatis pada aplikasi Android yang dikembangkan menggunakan **Flutter**. Proses otomatisasi ini di-trigger oleh **Flutter CI/CD** workflow, dan tes dijalankan di **BrowserStack** menggunakan perangkat cloud.

### 🔧 Alur Kerja

1. Setiap kali perubahan dilakukan pada repository Flutter, workflow akan membangun file APK dan meng-upload-nya ke BrowserStack.
2. Setelah APK berhasil di-upload, workflow akan mengirimkan trigger ke repository ini untuk menjalankan tes otomatis menggunakan **Robot Framework + AppiumLibrary** di perangkat yang tersedia di BrowserStack.

---


## 📁 Struktur Folder

* **tests/** → berisi file test case `.robot`
* **resources/** → berisi `variables.robot` (opsional)
* **screenshots/** → untuk menyimpan screenshot hasil test
* **.github/workflows/robot-ci.yml** → konfigurasi GitHub Actions CI/CD
* **README.md** → dokumentasi repo

---

## 📸 Screenshot


![Test](https://i.imgur.com/jNj7Pyr.png)

---


