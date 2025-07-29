# Tailwind CSS Notes

## Text Styling

```html
text-3xl      <!-- Large text -->
text-base     <!-- Base text size -->
font-bold     <!-- Bold font -->
text-orange-400 <!-- Orange text color -->
text-center   <!-- Center-align text -->
```

## Background and Hover Effects

```html
bg-white               <!-- White background -->
hover:bg-orange        <!-- Orange background on hover -->
transition-colors      <!-- Smooth transition of colors -->
ease-in-out            <!-- Easing function for smoothness -->
duration-300           <!-- Transition duration: 300ms -->
```

## Animations

```html
animate-bounce
animate-ping
animate-spin
animate-pulse
```

## Borders and Radius

```html
rounded-2xl       <!-- Large border radius -->
rounded-bl        <!-- Rounded bottom-left corner -->
border-1          <!-- Border width (1 unit = 1px or 0.25rem) -->
border-white      <!-- White border -->
border-solid      <!-- Solid border style -->
```

## Shadows

```html
shadow            <!-- Default shadow -->
```

## Layout Utilities

```html
mx-auto block     <!-- Centered block element -->
my-10             <!-- Vertical margin (top & bottom) -->
py-10             <!-- Vertical padding (top & bottom) -->
px-10             <!-- Horizontal padding (left & right) -->
p-10              <!-- Padding on all sides -->
```

## Size Utilities

> 1 tailwind unit = 4px

```html
w-24              <!-- Width: 96px -->
h-32              <!-- Height: 128px -->
```

---

## Container Width Recommendations

- Optimal container width: **1600px**
- Older recommendation: **1200–1400px**

---

## Responsive Breakpoints

| Prefix | Min Width | CSS Media Query Equivalent            |
|--------|-----------|----------------------------------------|
| `sm`   | 640px     | `@media (min-width: 640px)`            |
| `md`   | 768px     | `@media (min-width: 768px)`            |
| `lg`   | 1024px    | `@media (min-width: 1024px)`           |
| `xl`   | 1280px    | `@media (min-width: 1280px)`           |
| `2xl`  | 1536px    | `@media (min-width: 1536px)`           |

Example media queries:

```html
sm:bg-red-400     <!-- Red background on small screens -->
lg:bg-blue-400    <!-- Blue background on large screens -->
```

Note: iPhone 13 mini has a screen width of **360 CSS pixels**.

---

## Flexbox Layout

To place two blocks in one row with space between:

```html
<div class="flex justify-between">
  <div class="bg-blue-200 w-20 h-20"></div>
  <div class="bg-blue-200 w-20 h-20"></div>
</div>
```

Add spacing between blocks:

```html
gap-5              <!-- Gap between flex items -->
```

---

## Grid Layout

Two columns with spacing:

```html
<div class="grid grid-cols-2 gap-5">
  <div class="bg-blue-500 h-20"></div>
  <div class="bg-blue-500 h-20"></div>
</div>
```

---

## Iframe 3D Perspective Example

```html
<div class="perspective-distant">
  <iframe
    src="dfsa"
    class="w-full h-full aspect-video rotate-x-20 rotate-z-20 transform-3d">
  </iframe>
</div>
```
