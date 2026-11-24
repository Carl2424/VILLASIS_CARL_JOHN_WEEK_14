StudyHub — Two-Screen Flutter Static UI

National Teachers College**  
Course:PC16 – Mobile Development with Lab  
Activity:Week 14 – Flutter Foundations & Static UI (Part 2)  
ourse Outcome: CO4 — Implement Flutter-based user interfaces using widgets and layouts  

overview

StudyHub is a non-interactive, two-screen Flutter static mobile prototype based on Week 1–2 Figma wireframes. Built for BSIT 3.3 students at National Teachers College, the prototype demonstrates declarative widget-tree composition, consistent `ThemeData` styling, local image asset integration, responsive spacing, and z-axis layering using `Stack` and `Positioned`.

---

Screens Included

1. Welcome Screen (`lib/screens/welcome_screen.dart`)
* Branding Header:** Centered `Row` featuring an academic icon and `StudyHub` title.
* Hero Banner:** Local image asset (`assets/images/banner.png`) wrapped in `ClipRRect` with `BoxFit.cover`.
* Student Greeting:** Personalized welcome message for **Carl John** (**BSIT 3.3**).
* Static Input & Action Representations:** Styled `Container` widgets representing the student email (`carljohn.villasis@ntc.edu.ph`), masked password field, and primary **Sign In** button.

### 2. Student Dashboard (`lib/screens/dashboard_screen.dart`)
* AppBar & Student Profile Header:** Displays **Carl John S. Villasis**, **BSIT 3.3 • National Teachers College**, and a monogram `CircleAvatar` (`CV`).
* Layered Featured Course Card (`Stack` & `Positioned`):** Combines `Image.asset()`, a dark gradient scrim for contrast, a top-right `WEEK 14 LAB` status badge, and a bottom-left `PC16: Mobile Development` course title.
* Summary Stat Cards (`Row` & `Expanded`):** Equal-width cards highlighting **6 Subjects (BSIT 3.3 Load)** and **3 Tasks (Due This Week)**.
* Enrolled Subjects List (BSIT 3.3):**
  1. **Mobile Development** — PC16 • Flutter & Mobile UI Lab
  2. **Computer Networking 2** — Routing, Switching & Network Config
  3. **IT Elective 2** — Specialized IT Track
  4. **R Language** — Statistical Computing & Data Analysis
  5. **Integrative Programming** — Systems Integration & Architecture
  6. **The Contemporary World** — Global Studies & Society

## Project Structure

```text
villasis_carljohn_week14/
├── assets/
│   └── images/
│       └── banner.png
├── lib/
│   ├── main.dart
│   └── screens/
│       ├── welcome_screen.dart
│       └── dashboard_screen.dart
├── pubspec.yaml
└── README.md
```

---

## Getting Started

### Prerequisites
* Flutter SDK (`3.38.10` or compatible)
* Dart SDK
* VS Code or Android Studio with an Android Emulator or physical device

### Installation
1. Clone this repository:
   ```bash
   git clone [https://github.com/](https://github.com/)<your-username>/villasis_carljohn_week14.git
   cd villasis_carljohn_week14
   ```
2. Install dependencies and bundle local assets:
   ```bash
   flutter pub get
   ```
3. Run the application on a connected device or emulator:
   ```bash
   flutter run
   ```


How to Preview Both Screens (Without Navigation Logic)

Both static screens are previewed independently by toggling the `home` property inside `lib/main.dart`:

1. **Preview Screen 1 (`WelcomeScreen`):**
   * Open `lib/main.dart` and set:
     ```dart
     home: const WelcomeScreen(),
     ```
   * Run `flutter run` (or save and trigger a Hot Restart) to view the Welcome screen.

2. **Preview Screen 2 (`DashboardScreen`):**
   * Open `lib/main.dart` and change `home` to:
     ```dart
     home: const DashboardScreen(),
     ```
   * Press **`R`** in the terminal (Hot Restart) to render the Student Dashboard screen.

---

## Widgets Demonstrated
* **App & Theme:** `MaterialApp`, `ThemeData`, `ColorScheme`, `TextTheme`
* **Structure & Scrolling:** `StatelessWidget`, `Scaffold`, `AppBar`, `SafeArea`, `SingleChildScrollView`
* **Layout & Layering:** `Column`, `Row`, `Stack`, `Positioned`, `Container`, `ClipRRect`, `CircleAvatar`
* **Sizing & Spacing:** `Padding`, `SizedBox`, `Expanded`
* **Content & Assets:** `Text`, `Icon`, `Image.asset` (`BoxFit.cover`)
