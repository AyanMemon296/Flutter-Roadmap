# Flutter Installation for Windows (Master Guide)

## 1. The "Why" & The Strategy

Before installing, it is important to understand **why** we need these specific tools. This setup prioritizes **speed** and **reliability**.

* **Why install Flutter?**
To build apps for both Mobile (Android/iOS) and Desktop (Windows) from a single codebase.
* **Why we use VS Code (The Editor):**
It is lightweight, fast, and free. This is where you will write code 99% of the time.
* **Why we use Visual Studio 2022 (The Compiler):**
* *Reason:* It allows us to run the app as a **Windows Desktop App**.
* *Benefit:* It starts instantly (2-3 seconds) and uses very little RAM. This makes learning and daily coding much faster than using a slow Android Emulator.


* **Why we keep Android Studio (The SDK):**
We barely use the app itself, but we **must** install it because it contains the "Android SDK" (software development kit). Without this, Flutter cannot build apps for mobile phones.

---

## 2. Official Documentation (For Reference Only)

The official documentation can be scattered. We are following a streamlined path, but these are the official source pages if you ever need to check for updates:

* [https://docs.flutter.dev/install/manual](https://docs.flutter.dev/install/manual)
* [https://docs.flutter.dev/install/with-vs-code](https://docs.flutter.dev/install/with-vs-code)

**Note:** Trust **`flutter doctor`** (the internal checking tool) more than the website text. The website is often outdated; the Doctor checks your actual system reality.

---

## 3. Installation Order (Critical Dependencies)

Follow this exact order to ensure dependencies do not break.

### Step 1: Install Git for Windows

* **Role:** Flutter uses this internally to download updates and manage versions. Even if you don't use it manually, Flutter needs it.
* **Link:** [https://git-scm.com/downloads/win](https://git-scm.com/downloads/win)
* **Action:** Download and install.
* **Settings:** Just click "Next" through all the default options.

### Step 2: Install the Flutter SDK (The Engine)

This is the core framework.

* **Link:** [https://docs.flutter.dev/install/manual](https://docs.flutter.dev/install/manual)
* **Action:** Click the blue button (usually `stable.zip`) to download.
* **Extract:**
* **Do NOT** use `C:\Program Files` (Windows permission issues reside here).
* **DO** create a folder named `C:\src\flutter`.
* Extract the zip contents here.
* *Verification:* You should see files inside `C:\src\flutter\bin`.



### Step 3: Configure Environment Variables (The Connector)

We must tell Windows where Flutter is so you can run commands from any terminal.

1. Press the **Windows Key** and type `env`.
2. Select **"Edit the system environment variables"**.
3. Click the button **"Environment Variables..."**.
4. **Crucial:** Look at the top section labeled **"User variables for UserName"**.
5. Find the row named **Path** (or PATH) and click **Edit**.
6. Click **New** and paste this exact path:
`C:\src\flutter\bin`
7. Click **OK** on all three open windows to save.

### Step 4: Install Visual Studio 2022 (Desktop Support)

**Warning:** Do not just search "Download Visual Studio" or you might get the unstable 2026 version. You need the stable **2022** version.

* **Link:** [https://aka.ms/vs/17/release/vs_community.exe](https://aka.ms/vs/17/release/vs_community.exe)
* **Run the Installer:** Ensure the title bar says "Visual Studio Installer 2022".
* **Select Workload:** Scroll to "Desktop & Mobile" and check the box for **"Desktop development with C++"**.
* **Verify Components (Right Side):**
Ensure these three items are checked in the "Installation details" sidebar:
* [Yes] **MSVC v143 - VS 2022 C++ x64/x86 build tools** (The 2022 compiler).
* [Yes] **Windows 11 SDK** (The latest default version is fine).
* [Yes] **C++ CMake tools for Windows**.


* **Install:** This will be large (~10GB). Let it finish and then restart your computer if requested.

### Step 5: Install Android Studio (Mobile Support)

* **Link:** [https://developer.android.com/studio](https://developer.android.com/studio)
* **Setup:** Open it once. Let it download the default "SDK Components".
* **Install Command-line Tools (Critical Fix):**
1. Open Android Studio.
2. Go to **More Actions** > **SDK Manager**.
3. Click the **"SDK Tools"** tab (middle of the window).
4. Check the box for **"Android SDK Command-line Tools (latest)"**.
5. Click **Apply** and let it download.


* **Close Android Studio:** You rarely need to open this app again.

### Step 6: Setup VS Code (The Editor)

* **Link:** [https://code.visualstudio.com/download](https://code.visualstudio.com/download)
* **Install Extensions:**
1. Open VS Code.
2. Go to the **Extensions** tab (square icon on the left sidebar).
3. Search for **"Flutter"**.
4. Click **Install** on the one by "Dart Code" (This automatically installs the **Dart** extension too).



---

## 4. The "Doctor" Check & License Acceptance

Now we verify that everything is connected.

1. Open a **New** PowerShell or Command Prompt window.
2. **Accept Licenses:**
Copy and run this command:
`flutter doctor --android-licenses`
* *Action:* Keep typing `y` and pressing **Enter** until it says "All SDK package licenses accepted."


3. **Run the Doctor:**
Run this command:
`flutter doctor`

**The Goal:** You want to see Green Checkmarks (no Red X's).

* [Yes] Flutter (Channel stable)
* [Yes] Windows Version
* [Yes] Android toolchain
* [Yes] Chrome
* [Yes] Visual Studio (Visual Studio Community 2022 17.x)

---

## 5. The Final Test: Creating Your First App (Using VS Code)

If this step works, your installation is perfect.

1. **Open VS Code.**
2. **Open the Terminal:**
* **Menu:** Go to top menu bar > **View** > **Terminal**.
* **Shortcut:** Press `Ctrl` + `~` (the tilde key next to 1).


3. **Create the Project:**
In the terminal panel that opens at the bottom, type:
```bash
flutter create my_test_app

```


4. **Enter the App Folder:**
Type this command to go inside the folder you just created:
```bash
cd my_test_app

```


5. **Run the App on Windows:**
Run this command to start the app:
```bash
flutter run -d windows

```



**What to expect:**

* The first time you run this, it may take 2-5 minutes to compile the C++ code.
* Once finished, a Windows application window will open with the "Counter App".
* **Success:** You have a fully functioning professional Flutter environment!

---

## 👤 About the Creator

- **Created by:** Ayan Memon
- **GitHub:** [AyanMemon296](https://github.com/AyanMemon296)
- **YouTube:** [@ayanmemon2926](https://www.youtube.com/@ayanmemon2926)
- **LinkedIn:** [Ayan Memon](https://www.linkedin.com/in/ayanmemon296/)

---

## 🚫 Usage Restrictions

- The content, design, and guide structure of the **Flutter Installation Master Guide** are the **original work of Ayan Memon**.
- You are **strictly prohibited** from copying, reproducing, modifying, or redistributing this guide or any part of it without **explicit written permission** from the author.
- Any unauthorized use, including **removing credits or reusing the content as your own**, may lead to **legal consequences** including but not limited to:
  - **DMCA Takedown Notices**
  - **Copyright infringement claims**
  - **Permanent removal from hosting platforms**
- This project is shared for **educational purposes only**, not for commercial misuse or unethical replication.

> ⚠️ This guide is strictly protected. You are **not allowed** to reuse, copy, host, or modify any part of this code or design. Violations will lead to copyright actions.  
> 🚫 **"Flutter Installation Master Guide" is the original and protected work of Ayan Memon. Unauthorized use of the Name, Content, or Design is strictly prohibited.**

---

© 2025 Ayan Memon | All Rights Reserved