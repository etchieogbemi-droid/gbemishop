# My Store (Vercel + Supabase)
1. Supabase: create a project, open SQL Editor, paste and run `schema.sql`.
2. Push this folder to GitHub, import the repo in Vercel.
3. In Vercel > Settings > Environment Variables add everything in `.env.example` (service key is in Supabase > Project Settings > API; never put it in the frontend).
4. Deploy. The admin account is created automatically on the first visit from ADMIN_EMAIL / ADMIN_PASSWORD.
Put `hero.jpg` and `logo.svg` in `public/images/`. Shop name and currency: top of the script in `public/index.html`.
