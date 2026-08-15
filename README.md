# 2ls.tech

Company site for **Two Ls LLC** — a one-person indie game & software studio in
Minneapolis. Only product: [Everwhen](https://playeverwhen.com). Contact:
hello@2ls.tech.

One static page, no build step: `public/index.html` is the whole site. Open it
in a browser and that's 2ls.tech. Two plain companion pages sit beside it:
`public/privacy.html` and `public/terms.html` (served at `/privacy` and
`/terms`), the privacy policy and messaging terms for the studio's SMS/MMS
messaging (alerts and two-way chat with its AI assistants), written to
Twilio's A2P 10DLC campaign requirements.

## Design

The identity is the **"Rewrite" mark**: three plates of the same form — white
over screen-blended cyan and magenta — slightly out of register, moving on
quantized clocks, occasionally slicing into bands.

The page is an original system grown from that physics. The conceit is a press
proof (**proof nº 2LS-001**): crop marks at the viewport corners, a job slug
with ink swatches, and a live readout annotating the hero plates' actual
offsets as they drift. The hero sets the full company name with the mark's two
lit L's inside "LLC" — the two L's hiding in plain sight. Everwhen's section
embeds the game's own reel and the **ledger**, a strip of history blocks that
rewrite themselves one edit at a time (point at one to edit history yourself).
Every animation runs on `steps()` — nothing eases — and all motion stops under
`prefers-reduced-motion`.

## Serving

Hosted on **Vercel**: a push to `main` deploys production at
https://2ls.tech (`www` redirects to the apex), and every pull request gets a
preview URL. There is no build step. [`vercel.json`](./vercel.json) points
Vercel at `public/` and turns on clean URLs (`/foo` serves `foo.html`), the
extension-less behavior nginx used to provide; HTML revalidation, compression,
and TLS are platform defaults. The project and domains are managed in the
Vercel dashboard.
