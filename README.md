Evie Swim Tracker v1.15 - Mobile Progress Sync Fix

Evie Swim Tracker v1.11 - Combined Progress + Times

Evie Swim Tracker v1.00

Based on the corrected v13 build.
- More-page actions restored.
- Personal Best badge features retained.
- Goal features retained.
- Visible app revision updated to v1.00.
- New cache name forces devices/GitHub Pages to recognize the update.

This package does not include data/evie-data.json.


v15 goal/event fix: Goals are generated from Manage Events, cannot be deleted, new events get goal records automatically, event renames carry goal data, removed events retain goal data, and legacy 50 Breaststroke/50 BR goals migrate to 50 Breast.


## v1.12 Meet Mode + Cheer Squad
Adds morning-of meet setup, event result entry, shareable Cheer Squad links, and custom encouragement messages.


## v1.16
- True two-way per-swim sync using per-record `updatedAt` timestamps.
- Newest edit wins between phone and laptop for every swim field.
- Legacy conflicts prefer the current cloud copy so older device-local data cannot undo synced edits.


## v1.17 — Accounts & Security
- Supabase email/password login required for the main tracker.
- Parent/Admin has full read/write access.
- Athlete account is read-only and limited to Home, Progress, Trophy Room and Meet Mode.
- Private race videos use short-lived signed URLs; only Admin can upload/delete.
- Cheer Squad links carry only the meet summary needed by the public cheer page; anonymous users can submit cheers but cannot read tracker tables.
- Logout and persistent authenticated sessions added.


## v1.17.1
- Fixed private race-video playback for authenticated Parent and Athlete accounts.
- Recovers Storage paths from legacy public video URLs and requests fresh signed URLs.
- Refreshes expired login tokens when signing video URLs.

## v1.17.2
- Private video playback now downloads the video through the authenticated Storage endpoint and plays it from a local Blob URL.
- This avoids relying on legacy public URLs or signed-URL playback for existing videos.


## v1.17.2.1 Athlete Meet Mode Fix
- Fixed the Athlete Meet Mode navigation button so Evie can open Meet Mode read-only.
- No changes to the working private video playback or security permissions.

## v1.18 Meet Results Workflow
- Meet Mode results are temporary until Finish Meet.
- Temporary results can be edited or cleared during the meet.
- Finish Meet reviews and commits results to permanent swim history once.
- Permanent results then participate in PB, standards, achievements and progress calculations.
- Personal Bests continue to show only the current fastest Official time for each event/course.


## v1.18.1 Meet Finish Fix
- Finished meet results are saved/synced before Meet Mode closes.
- Finish Meet returns directly to Home without reopening a celebration/modal.
- Newly committed meet results sort to the top of Recent Swims for their meet date.


## v1.18.2
- Fixed Finish Meet cloud sync crash caused by legacy Times-page rendering code reading controls that no longer exist.
- Finish Meet now commits locally, syncs tracker and meet data, then closes Meet Mode and returns Home.
- No security, video, or permission changes.


## v1.18.3
- Window/navigation cleanup: Save, Delete, Clear, and nested edit actions now return to the previous app window after completion.
- Preserves v1.18.2 Meet Mode, security, sync, and private-video behavior.


## v1.18.4
- Added Parent/Admin-only Cancel Meet in Meet Mode.
- Cancel Meet requires confirmation, discards temporary events/results, removes the unfinished meet from cloud/local active data, and returns Home.
- Cancelled meet results are never added to permanent swim history.
