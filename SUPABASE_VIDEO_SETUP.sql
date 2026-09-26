-- Run once in Supabase SQL Editor for Evie Swim Tracker race videos.
-- Creates a public Storage bucket and allows the app's publishable/anon key
-- to upload, view, and delete race videos.

insert into storage.buckets (id, name, public, file_size_limit, allowed_mime_types)
values ('race-videos', 'race-videos', true, 262144000, array['video/mp4','video/quicktime','video/webm','video/x-m4v'])
on conflict (id) do update set
  public = excluded.public,
  file_size_limit = excluded.file_size_limit,
  allowed_mime_types = excluded.allowed_mime_types;

create policy "Public read race videos"
on storage.objects for select
to public
using (bucket_id = 'race-videos');

create policy "Anon upload race videos"
on storage.objects for insert
to anon
with check (bucket_id = 'race-videos');

create policy "Anon delete race videos"
on storage.objects for delete
to anon
using (bucket_id = 'race-videos');
