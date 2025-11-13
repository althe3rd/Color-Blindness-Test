# Tritanopia Accessibility Test Station

An interactive web-based tool for demonstrating and testing web accessibility for users with tritanopia (blue-yellow color blindness).

## 🎯 Purpose

This tool helps developers, designers, and accessibility testers understand how color choices affect users with tritanopia. It provides:

- **Interactive color palette toggle** - Switch between accessible (high contrast) and difficult (problematic blue/yellow) color schemes
- **Tritanopia simulation filter** - Experience how someone with tritanopia perceives colors
- **Comprehensive UI examples** - Links, buttons, forms, alerts, navigation, and more
- **Educational content** - Learn about tritanopia and its impact on web accessibility

## 🚀 Live Demo

Once deployed, access the tool at: `https://[your-username].github.io/colorblind-test/`

## 💻 Local Development

Test the site locally before deploying. Choose any method below:

### Method 1: Using the Shell Script (Recommended)

```bash
./serve.sh
```

Or specify a custom port:

```bash
./serve.sh 3000
```

Then open: `http://localhost:8000` (or your custom port)

### Method 2: Using npm/npx

```bash
npm start
# Opens on http://localhost:3000
```

Or with auto-open in browser:

```bash
npm run preview
```

### Method 3: Using Python Directly

**Python 3:**
```bash
python3 -m http.server 8000
```

**Python 2:**
```bash
python -m SimpleHTTPServer 8000
```

Then open: `http://localhost:8000`

### Method 4: Using Make (If you have make installed)

```bash
make serve
# or
make preview  # Opens browser automatically
```

See all available commands:
```bash
make help
```

### Method 5: Direct File Open (Limited)

Simply open `index.html` in your browser:
```bash
open index.html  # macOS
```

⚠️ Note: Some browsers may restrict certain features when opening files directly (file:// protocol). Using a local server is recommended.

## 📋 Features

### Color Palettes

**Difficult Palette** (Default)
- Uses problematic blues and yellows
- Demonstrates poor color choices for tritanopia
- Shows how color alone cannot convey information
- Starts in this mode to immediately showcase accessibility issues

**Accessible Palette**
- Uses reds, greens, and high-contrast colors
- Easily distinguishable for people with tritanopia
- Follows WCAG accessibility guidelines
- Toggle to this to see the proper approach

### Interactive Controls

1. **Color Palette Toggle** - Switch between accessible and difficult color schemes instantly
2. **Tritanopia Simulation** - Apply a color matrix filter to simulate tritanopia vision

### UI Components Tested

- Hyperlinks (unvisited, visited, hover states)
- Buttons with semantic colors (primary, secondary, success, warning, info)
- Form elements (inputs, selects, checkboxes)
- Alert messages (success, warning, info)
- Navigation menus
- Color swatches

## 🛠️ GitHub Pages Deployment

### Automatic Deployment

This repository is configured for automatic deployment to GitHub Pages using GitHub Actions.

**Setup Steps:**

1. Go to your repository on GitHub
2. Navigate to **Settings** → **Pages**
3. Under "Build and deployment":
   - **Source**: Select "GitHub Actions"
4. Push to the `main` or `master` branch
5. The site will automatically deploy via the GitHub Actions workflow

### Manual Deployment (Alternative)

If you prefer manual deployment without GitHub Actions:

1. Go to **Settings** → **Pages**
2. Under "Build and deployment":
   - **Source**: Select "Deploy from a branch"
   - **Branch**: Select `main` or `master`
   - **Folder**: Select `/ (root)`
3. Click **Save**
4. Your site will be available at `https://[your-username].github.io/colorblind-test/`

## 📖 How to Use

1. **Page starts with difficult palette** - Immediately see how problematic blues and yellows affect readability
2. **Toggle to accessible palette** - Compare with high-contrast colors that work better for tritanopia
3. **Enable tritanopia simulation** - Experience how someone with tritanopia perceives the colors
4. **Experiment with combinations** - Try both palettes with and without the simulation filter to understand the impact

## 🧪 What is Tritanopia?

Tritanopia is a rare form of color blindness affecting approximately **0.01% of the population** (about 1 in 10,000 people). 

**Characteristics:**
- Inability to distinguish between blue and yellow colors
- Blues may appear greenish
- Yellows may appear pink or light purple
- Reds and greens are generally perceived normally

**Web Accessibility Impact:**
- Blue links on gray backgrounds may be hard to distinguish
- Yellow warning indicators may be confused with other colors
- Information conveyed through blue/yellow color coding alone is inaccessible

## 🎨 Best Practices for Tritanopia-Friendly Design

1. ✅ **Use red/green or high-contrast color combinations** instead of blue/yellow
2. ✅ **Underline links** rather than relying on color alone
3. ✅ **Use patterns, icons, or text** in addition to color for status indicators
4. ✅ **Ensure sufficient contrast** between text and background (WCAG AA: 4.5:1 minimum)
5. ✅ **Test with simulation tools** like this one
6. ❌ **Avoid blue links** on blue/purple backgrounds
7. ❌ **Don't use yellow/blue** as the only distinguishing factor

## 🔧 Technical Details

- **Pure HTML/CSS/JavaScript** - No build process required
- **CSS Custom Properties** - Easy theme switching
- **SVG Color Matrix Filter** - Accurate tritanopia simulation
- **Responsive Design** - Works on desktop and mobile devices
- **No external dependencies** - Loads fast and works offline

## 📝 License

This project is open source and available for educational and commercial use.

## 🤝 Contributing

Contributions are welcome! Feel free to:
- Report issues
- Suggest improvements
- Submit pull requests
- Share feedback on accessibility

## 📚 Resources

- [WebAIM: Color Blindness](https://webaim.org/articles/visual/colorblind)
- [WCAG 2.1 Guidelines](https://www.w3.org/WAI/WCAG21/quickref/)
- [Color Blind Awareness](http://www.colourblindawareness.org/)

---

**Made for accessibility testing and education** 🌈

