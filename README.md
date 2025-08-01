# flutter-responsive-utils

A simple utility class for responsive Flutter UI — easily get screen width, height, and average size across devices.

# ResponsiveUtils 📱 — Flutter Responsive UI Helper

`ResponsiveUtils` is a simple and reusable utility class for Flutter apps that makes your UI responsive across different screen sizes using flexible scaling.

---

## 🛠 Features

- 📏 Calculate screen width and height as a percentage
- 🔠 Dynamically scale font sizes using `MediaQuery.textScalerOf`
- 📐 Compute average screen size for better layout scaling
- ✅ Works consistently across devices and resolutions

---

## 📦 File Location

lib/responsiveutils.dart

yaml


---

## 🚀 How to Use

### 1️⃣ Import the class

```dart
import 'package:your_project/responsiveutils.dart';
2️⃣ Initialize it in your widget tree (usually in main.dart)
home: Builder(
  builder: (context) {
    ResponsiveUtils.init(context); // Required initialization
    return const HomePage();       // Your main screen
  },
),
3️⃣ Use it anywhere after initialization
double width = ResponsiveUtils.getScreenWidthPercent(50);    // 50% of screen width
double height = ResponsiveUtils.getScreenHeightPercent(30);  // 30% of screen height
double fontSize = ResponsiveUtils.getScaledText(2);          // 2% of average screen size
🧪 Example
Container(
  width: ResponsiveUtils.getScreenWidthPercent(80),
  height: ResponsiveUtils.getScreenHeightPercent(20),
  color: Colors.amber,
  child: Text(
    'Responsive Text',
    style: TextStyle(fontSize: ResponsiveUtils.getScaledText(2)),
  ),
)
Output in log:
Scaled Width (50%): 205.71
Scaled Height (30%): 267.08
Scaled Font Size (2%): 13.01
✅ Advantages
✅ Lightweight — no external packages required

✅ Ensures consistent UI across screen sizes

✅ Improves UX with scalable layout and fonts

✅ Simple API — easy to integrate and use

❌ Limitations
⚠️ You must call ResponsiveUtils.init(context) before using the methods

⚠️ Does not automatically adapt on orientation change — re-init if needed

⚠️ Only uses screen dimensions (not DPI, breakpoints, etc.)

📌 When to Use
Building apps for multiple screen sizes

Need quick responsiveness without heavy packages like flutter_screenutil

Prioritize simplicity and minimal dependencies

🤝 Contributions
Feel free to fork, improve, and contribute to this utility!

If you have suggestions, issues, or enhancements, you're welcome to:

Open an issue or pull request

Modify and tag me to learn collaboratively

📧 Contact: mohitofficial2320@gmail.com
```
