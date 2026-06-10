# Willpower Media Page — Sandbox

This repo holds **one page**: the draft Media page for willpowerbrands.com, where we
highlight panel recordings from events and the insights behind them.

It is a **sandbox, fully separate from the live website.** Edit freely here. Nothing you
do can affect willpowerbrands.com. When Bill approves the page, he copies it into the real
site and publishes it.

---

## What you edit

- **The only file you touch is `index.html`.** That's the whole page.
- Fonts, colors, and components are pulled **live from the real site**, so this page looks
  exactly like willpowerbrands.com while you work.
- The nav links at the top and bottom are **inert in this sandbox** (they point at real-site
  pages that don't exist here). That's expected — they'll work once the page is on the real
  site. Don't worry about them.
- Every spot you should fill in is marked in the file with an `EDIT ME ▸` comment:
  - the featured panel's video embed + insights
  - each session card in the archive grid

## Live preview

The page is live here (share this link with anyone):

> **https://willpower-media-draft.netlify.app**

You can also preview locally without deploying — just open the file:
```bash
open index.html
```

### How your edits go live
Once this repo is connected to Netlify (Site settings → Build & deploy → Link
repository), **every push to `main` auto-publishes** to the URL above within ~30 seconds.
Until then, a maintainer (Bill) publishes by running `./publish.sh`.

## How to edit it with Claude Code

```bash
# one-time: clone this repo
git clone https://github.com/billpower21/willpower-media-draft.git
cd willpower-media-draft

# each time you work:
claude            # then tell it what to change, e.g.
                  # "add a session card for the Catalyst NYC brand panel
                  #  and embed this YouTube video: <link>"

# save + publish your changes:
git add -A && git commit -m "describe your change" && git push
```

(Claude Code can run the git commands for you — just ask it to "commit and push.")

## How a recording goes in

To embed a YouTube video, replace the placeholder in `index.html` with:
```html
<iframe src="https://www.youtube.com/embed/VIDEO_ID" title="Panel title"
        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
        allowfullscreen loading="lazy"></iframe>
```
The `VIDEO_ID` is the part after `watch?v=` in a YouTube link. Or just paste the link to
Claude Code and ask it to embed it — it'll handle the markup.

---

## When the page is ready (Bill only)

The finished `index.html` gets copied into the real `willpowerbrands-website` repo as
`media.html` (asset URLs switched back to root-relative `/assets/...`), then deployed. The
page goes live at willpowerbrands.com/media.
