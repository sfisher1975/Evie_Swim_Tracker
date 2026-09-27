-- Evie Swim Tracker v1.20.0
-- Anonymous visitors may READ tracker/meet/cheer/video data.
-- Existing admin-only write policies remain in force.

-- Tracker data: public read-only
DROP POLICY IF EXISTS "Public can read tracker" ON public.swim_tracker_data;
CREATE POLICY "Public can read tracker"
ON public.swim_tracker_data
FOR SELECT
TO anon
USING (true);

-- Meets: public read-only
DROP POLICY IF EXISTS "Public can read meets" ON public.swim_meets;
CREATE POLICY "Public can read meets"
ON public.swim_meets
FOR SELECT
TO anon
USING (true);

-- Cheers: public read-only (public INSERT policy can remain as-is)
DROP POLICY IF EXISTS "Public can read cheers" ON public.cheer_messages;
CREATE POLICY "Public can read cheers"
ON public.cheer_messages
FOR SELECT
TO anon
USING (true);

-- Private race-videos bucket: anonymous users may read objects,
-- but only existing admin policies may upload/delete.
DROP POLICY IF EXISTS "Public can read race videos" ON storage.objects;
CREATE POLICY "Public can read race videos"
ON storage.objects
FOR SELECT
TO anon
USING (bucket_id = 'race-videos');
