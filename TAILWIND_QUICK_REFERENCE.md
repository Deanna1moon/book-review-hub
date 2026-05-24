🎨 QUICK REFERENCE GUIDE - TAILWIND PURPLE THEME
================================================

For developers implementing future changes to the Book Review Hub interface.

================================================================================
COLOR QUICK REFERENCE
================================================================================

PRIMARY PURPLE:
• bg-purple-600    → Brand color (button backgrounds)
• bg-purple-700    → Hover state for buttons
• text-purple-300  → Text on dark backgrounds
• text-purple-400  → Links, lighter text
• border-purple-500/20  → Subtle borders

GRADIENTS:
• bg-gradient-to-r from-purple-600 to-pink-600        → Primary gradient
• bg-gradient-to-br from-gray-800 to-gray-900         → Card background
• bg-gradient-to-br from-slate-900 via-purple-900 to-slate-900  → Page background
• text-transparent bg-clip-text bg-gradient-to-r from-purple-300 to-pink-300  → Gradient text

SEMANTIC:
• Success:  bg-gradient-to-r from-green-400 to-emerald-500 + text-white
• Error:    bg-gradient-to-r from-red-400 to-rose-500 + text-white
• Warning:  bg-yellow-600 hover:bg-yellow-700

BACKGROUNDS:
• Page:     bg-gradient-to-br from-slate-900 via-purple-900 to-slate-900
• Cards:    bg-gradient-to-br from-gray-800 to-gray-900
• Inputs:   bg-gray-700
• Navbar:   bg-gradient-dark (defined in config)

================================================================================
COMMON TAILWIND PATTERNS
================================================================================

CENTER LAYOUT:
div class="flex items-center justify-center min-h-screen"
  ├─ flex: Use flexbox layout
  ├─ items-center: Vertical centering
  ├─ justify-center: Horizontal centering
  └─ min-h-screen: Full viewport height

CARD STYLING:
div class="bg-gradient-to-br from-gray-800 to-gray-900 rounded-2xl shadow-2xl p-8 border border-purple-500/20 hover:border-purple-400/40 transition"
  ├─ Gradient background
  ├─ Large rounded corners (2xl = 16px)
  ├─ Strong shadow
  ├─ Padding inside
  ├─ Purple border with opacity
  ├─ Hover border brightness increase
  └─ Smooth transition

BUTTON STYLING:
class="px-6 py-3 bg-gradient-to-r from-purple-600 to-pink-600 hover:from-purple-700 hover:to-pink-700 text-white font-bold rounded-lg transition transform hover:scale-105"
  ├─ Padding: px-6 py-3 (24px x 12px)
  ├─ Gradient background
  ├─ Gradient hover state
  ├─ White text with bold weight
  ├─ Rounded corners (lg = 8px)
  ├─ Smooth transition
  ├─ Scale up on hover (105%)
  └─ Combined with transform class

RESPONSIVE GRID:
class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8"
  ├─ 1 column on mobile
  ├─ 2 columns on tablet (md: breakpoint at 768px)
  ├─ 3 columns on desktop (lg: breakpoint at 1024px)
  └─ 32px gap between items

FORM INPUT STYLING:
class="w-full px-4 py-3 bg-gray-700 text-white placeholder-gray-500 border border-purple-500/30 rounded-lg focus:outline-none focus:border-purple-400 focus:ring-2 focus:ring-purple-400/30 transition"
  ├─ Full width: w-full
  ├─ Internal spacing: px-4 py-3
  ├─ Dark background: bg-gray-700
  ├─ White text
  ├─ Gray placeholder text
  ├─ Purple border with opacity
  ├─ Focus: No outline ring
  ├─ Focus: Brighter border
  ├─ Focus: Purple glow ring
  └─ Smooth transition

GRADIENT TEXT:
class="text-transparent bg-clip-text bg-gradient-to-r from-purple-300 to-pink-300"
  ├─ Make text transparent
  ├─ Clip background to text
  ├─ Apply gradient to background
  └─ Result: Gradient text effect

ICON SPACING:
class="flex items-center space-x-2"
  ├─ Horizontal flex layout
  ├─ Vertical center alignment
  ├─ 8px spacing between children
  └─ Use: <span>🚀</span><span>Text</span>

================================================================================
RESPONSIVE BREAKPOINTS
================================================================================

Mobile First Approach:
• Base (no prefix):    < 640px   (mobile)
• sm:                  ≥ 640px   (small)
• md:                  ≥ 768px   (tablet)
• lg:                  ≥ 1024px  (desktop)
• xl:                  ≥ 1280px  (large desktop)

Usage Example:
class="text-sm md:text-base lg:text-lg"
  ├─ Small text on mobile
  ├─ Normal on tablets
  └─ Large on desktop

Grid Example:
class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3"
  ├─ 1 column mobile
  ├─ 2 columns tablets
  └─ 3 columns desktop

================================================================================
SPACING SCALE
================================================================================

Tailwind uses 4px base unit:

px: 1px
0.5: 2px
1: 4px
2: 8px
3: 12px
4: 16px
6: 24px
8: 32px
12: 48px
16: 64px

Usage:
• p-4         → 16px padding all sides
• px-4        → 16px left/right padding
• py-3        → 12px top/bottom padding
• mb-8        → 32px margin bottom
• space-x-4   → 16px horizontal spacing between children
• gap-8       → 32px gap in grid/flex

================================================================================
HOVER & INTERACTION STATES
================================================================================

Hover:
class="hover:bg-purple-700 hover:shadow-lg hover:scale-105"
  ├─ hover:bg-*: Change background on hover
  ├─ hover:shadow-*: Add/increase shadow on hover
  ├─ hover:scale-*: Grow slightly on hover
  └─ hover:text-*: Change text color on hover

Focus (Forms):
class="focus:outline-none focus:border-purple-400 focus:ring-2 focus:ring-purple-400/30"
  ├─ focus:outline-none: Remove default outline
  ├─ focus:border-*: Highlight border
  ├─ focus:ring-*: Add colored focus ring
  └─ focus:ring-offset-*: Space between element and ring

Active (Links/Buttons):
class="active:scale-95 active:opacity-80"
  ├─ active:scale-*: Shrink slightly when clicked
  └─ active:opacity-*: Fade slightly when active

Disabled (Buttons):
class="disabled:opacity-50 disabled:cursor-not-allowed"
  ├─ disabled:opacity-*: Fade disabled elements
  └─ disabled:cursor-*: Show not-allowed cursor

================================================================================
SHADOW & ELEVATION
================================================================================

Shadows (from subtle to dramatic):
• shadow-sm     → Subtle shadow (used rarely)
• shadow-md     → Small shadow (default cards)
• shadow-lg     → Medium shadow (hovered cards)
• shadow-xl     → Large shadow (important elements)
• shadow-2xl    → Extra large shadow (modals, overlays)
• shadow-glow   → Custom purple glow (defined in config)
• shadow-glow-lg → Custom large purple glow

Example:
class="shadow-md hover:shadow-glow-lg transition"
  ├─ Medium shadow normally
  ├─ Purple glow on hover
  └─ Smooth transition

================================================================================
BORDER & RADIUS
================================================================================

Border Radius:
• rounded      → 4px
• rounded-lg   → 8px
• rounded-xl   → 12px
• rounded-2xl  → 16px
• rounded-full → 50% (circles)

Borders:
• border              → 1px solid current border color
• border-2            → 2px
• border-purple-500   → Purple border
• border-purple-500/20 → Purple at 20% opacity (subtle)
• border-l-4          → Left border only, 4px

Example:
class="border border-purple-500/20 rounded-2xl"
  ├─ 1px purple border at 20% opacity
  └─ 16px rounded corners

================================================================================
ANIMATIONS & TRANSITIONS
================================================================================

Transition:
• transition       → Smooth default (all properties, 150ms)
• transition-all   → Animate all changing properties
• transition-colors → Only color transitions

Duration:
• (no prefix)    → 150ms (default)
• duration-300   → 300ms
• duration-500   → 500ms

Easing:
• (no prefix)    → ease (ease-in-out, default)
• ease-in        → Slow start, fast end
• ease-out       → Fast start, slow end
• ease-linear    → Constant speed

Example:
class="transition duration-300 hover:scale-105 hover:shadow-lg"
  ├─ 300ms smooth transition
  ├─ Grow to 105% on hover
  ├─ Add glow on hover
  └─ All smooth

Keyframe Animations (from application.css):
• fadeIn       → Page entry animation
• cardHover    → Card lift on hover
• spin         → Loading spinner
• pulse        → Attention effect
• glass        → Frosted glass effect

Example:
class="animate-spin"    → Spinning loading indicator
class="animate-pulse"   → Pulsing attention effect

================================================================================
UTILITY CLASSES TO REMEMBER
================================================================================

Layout:
• flex            → Flexbox container
• grid            → CSS grid container
• inline-block    → Block inline element
• absolute        → Position absolute
• relative        → Position relative
• sticky          → Sticky positioning
• z-50            → Z-index 50 (brings to front)

Sizing:
• w-full          → 100% width
• h-screen        → 100vh height
• min-h-screen    → Minimum 100vh height
• max-w-7xl       → Max width container (container query)
• aspect-video    → 16:9 aspect ratio

Display:
• hidden          → Display none (hidden)
• block           → Display block (visible)
• inline          → Display inline
• flex            → Display flex
• grid            → Display grid
• md:hidden       → Hidden on tablets+
• hidden md:block → Hidden mobile, visible tablets+

Typography:
• font-bold       → Font weight 700
• font-semibold   → Font weight 600
• font-medium     → Font weight 500
• text-center     → Text align center
• uppercase       → Text transform uppercase
• line-clamp-3    → Limit to 3 lines, truncate
• truncate        → Single line ellipsis

================================================================================
COMMON PATTERNS IN THIS PROJECT
================================================================================

Navigation Bar:
<nav class="bg-gradient-dark border-b border-purple-500/20 sticky top-0 z-50 shadow-lg">

Page Hero:
<div class="max-w-7xl mx-auto px-4 py-16 text-center">
  <h1 class="text-5xl font-bold text-transparent bg-clip-text bg-gradient-to-r...">

Card:
<div class="bg-gradient-to-br from-gray-800 to-gray-900 rounded-2xl shadow-xl p-6 border border-purple-500/20 hover:shadow-glow-lg transition">

Button:
class="px-6 py-3 bg-gradient-to-r from-purple-600 to-pink-600 hover:from-purple-700 hover:to-pink-700 text-white font-bold rounded-lg transition"

Form Input:
class="w-full px-4 py-3 bg-gray-700 text-white border border-purple-500/30 rounded-lg focus:border-purple-400 focus:ring-2 focus:ring-purple-400/30"

Flash Message (Success):
class="bg-gradient-to-r from-green-400 to-emerald-500 text-white px-6 py-3 shadow-lg"

Flash Message (Alert):
class="bg-gradient-to-r from-red-400 to-rose-500 text-white px-6 py-3 shadow-lg"

================================================================================
MODIFYING COLORS - HOW TO EXTEND
================================================================================

To change the primary purple:
1. In application.html.erb Tailwind config:
   Update: 'purple-600': '#YOUR_NEW_COLOR'
   
2. In application.css:
   Update: --color-purple-600: #YOUR_NEW_COLOR

To add new colors to palette:
1. In Tailwind config within application.html.erb:
   theme: {
     extend: {
       colors: {
         'custom': { '600': '#hexcode' }
       }
     }
   }

2. Use in classes:
   class="bg-custom-600 text-custom-600"

================================================================================
DEBUGGING TAILWIND CLASSES
================================================================================

If classes aren't applying:

1. Check spacing (Tailwind uses specific scale):
   ❌ p-10 (doesn't exist)
   ✅ p-8 (32px) or p-12 (48px)

2. Use ! prefix to force (rarely needed):
   class="!px-10 !my-4"

3. Check breakpoint prefix:
   ✅ md:text-lg (correct)
   ❌ text-md:lg (wrong order)

4. Verify responsive class exists:
   Mobile-first: base → sm: → md: → lg: → xl:

5. Clear cache if changes don't appear:
   Django: Ctrl+Shift+R or Cmd+Shift+R
   CDN: Hard refresh browser

================================================================================
FORM VALIDATION STYLING
================================================================================

Error states:
class="border border-red-500 focus:ring-red-400/30"

Success states:
class="border border-green-500 focus:ring-green-400/30"

Error message container:
<div class="bg-red-900/30 border border-red-500/50 rounded-xl p-4">

Success message container:
<div class="bg-green-900/30 border border-green-500/50 rounded-xl p-4">

================================================================================
TESTING RESPONSIVE DESIGN
================================================================================

Browser DevTools:
1. Open DevTools: F12 or Cmd+Option+I
2. Click device toolbar icon (or Ctrl+Shift+M)
3. Select device or use responsive mode
4. Test common sizes:
   ├─ 375px (iPhone SE)
   ├─ 768px (iPad)
   ├─ 1024px (Desktop)
   └─ 1440px (Large desktop)

Common Issues:
• Text too small: min font 16px on inputs
• Buttons too small: min 44px height/width
• Overflow: Check max-w and px/padding
• Layout breaks: Use responsive prefixes (md:, lg:)

================================================================================

Happy styling! Use this guide when adding new features or modifying existing ones. 🎨
