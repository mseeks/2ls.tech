# 2ls.tech

Company site for **Two Ls LLC** — a one-person indie game & software studio in
Minneapolis. Only product: [Everwhen](https://playeverwhen.com). Contact:
hello@2ls.tech.

One static page, no build step: `public/index.html` is the whole site. Open it
in a browser and that's 2ls.tech.

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

CI builds `ghcr.io/mseeks/2ls.tech:latest` on every push to `main` — a plain
`docker build` of nginx + `public/` (see `Dockerfile` / `nginx.conf`).
