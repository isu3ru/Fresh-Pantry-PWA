# 🌿 Fresh Pantry

A beautiful, offline-capable grocery list PWA. Create multiple lists, add items with quantities, check them off as you shop.

## Files

```
index.html      ← Main app (rename fresh-pantry.html → index.html)
manifest.json   ← PWA manifest (name, icons, theme)
sw.js           ← Service worker (offline caching)
icon-192.png    ← App icon (home screen, small)
icon-512.png    ← App icon (splash screen, large)
```

## Deploy to GitHub Pages (free)

1. Create a new GitHub repository
2. Upload all 5 files to the root of the repo
3. Go to **Settings → Pages**
4. Set Source to `main` branch, `/ (root)`
5. Click **Save** — your app will be live at `https://yourusername.github.io/your-repo-name/`

## Deploy to Netlify (free, even easier)

1. Go to [netlify.com](https://netlify.com) and sign up
2. Drag and drop the folder containing all 5 files onto the Netlify dashboard
3. Done — you'll get a live URL instantly (e.g. `https://fresh-pantry.netlify.app`)

## Deploy to Vercel (free)

1. Install Vercel CLI: `npm i -g vercel`
2. Run `vercel` in the folder with all 5 files
3. Follow the prompts

## Updating the app

When you make changes and redeploy, bump the cache version in `sw.js`:

```js
const CACHE_NAME = 'fresh-pantry-v2';  // ← increment this
```

This forces the service worker to clear the old cache and serve the new files.

## Features

- ✅ Multiple grocery lists
- ✅ Add items with quantity (defaults to 1)
- ✅ Check off items while shopping
- ✅ Delete items and lists with confirmation
- ✅ Progress bar per list
- ✅ Light (sky blue) and Dark themes, saved to localStorage
- ✅ All data stored in localStorage (no account needed)
- ✅ Installable as a native-like app on Android, iOS, and desktop
- ✅ Works fully offline after first visit
