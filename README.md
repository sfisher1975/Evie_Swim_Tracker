# Evie Swim Tracker v10

Version 10 fixes shared-data deletion across GitHub-synced devices.

## v10 changes
- Deleted swims now create a shared deletion marker (tombstone).
- A deleted swim cannot be restored accidentally by another device that still has an older local copy.
- Deletion markers are stored in `data/evie-data.json` during GitHub sync and included in backups.
- Existing GitHub merge and 409 retry protection remains in place.
- App header updated to v10.

## Important
Keep a current backup before updating. GitHub credentials/tokens are not included in this package and remain stored locally in each configured browser/device.
