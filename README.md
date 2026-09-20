# Evie Swim Tracker v4

GitHub Pages-ready static app.

## v4 changes
- More tab reorganized into Goals, Manage Events, Manage Courses, Manage Places, Data & Backup, and Settings.
- Removed Add Event from More. The quick Add Event button remains beside Evelyn's name on Home.
- Goals only show when a positive goal time exists. If none exist, the Goals screen shows “No goals set yet”.
- Event/course/place dropdown choices can be added, edited, and removed.
- Backup v2 now includes swims, goals, dropdown lists, and swimmer profile.
- Browser data stays separate from program files, so normal GitHub app updates do not overwrite local saved data.
- Mobile keeps bottom navigation and full-screen-style modal sheets; desktop uses the left navigation.

The supplied `updated-data-backup-2026-09-20.json` is a safety copy of the user's latest exported data and is not auto-imported, so existing browser data is never overwritten by deploying v4.
