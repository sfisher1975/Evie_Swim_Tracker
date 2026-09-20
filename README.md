# Evie Swim Tracker v8

GitHub Pages-ready static app with shared GitHub JSON synchronization.

## Shared data
- `data/evie-data.json` is the shared master data file.
- On each phone/PC, open **More → GitHub Sync** once and enter the GitHub owner, repository, branch, file path, and a fine-grained token limited to this repository with **Contents: Read and write**.
- The token is stored only in that browser's localStorage; it is never included in this ZIP or committed to the repository.
- When data changes, the app first fetches and merges the current GitHub file, then writes the merged copy back.
- Local browser storage remains as an offline/safety copy. Export Backup is still available.

## v7
- Shared phone + PC data through GitHub.
- Visible version updated to v7.
- Includes the v5 calendar picker and v6 swim icon.
- Initial shared JSON combines the original historical swims with the latest uploaded September backup.

## v8 sync fix
- Serializes GitHub writes so phone saves cannot overlap.
- Automatically retries GitHub 409 conflicts after re-reading the latest file/SHA.
- Stops list seeding from accidentally starting background GitHub writes.
- Uses GitHub REST API version 2022-11-28.
