-- Fresh Pantry — Supabase table setup
-- Paste this entire script into the Supabase SQL Editor and run it.

CREATE TABLE list_shares (
  id TEXT PRIMARY KEY,
  list_data JSONB NOT NULL,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  expires_at TIMESTAMPTZ NOT NULL
);

ALTER TABLE list_shares ENABLE ROW LEVEL SECURITY;

CREATE POLICY "anon_insert" ON list_shares FOR INSERT TO anon WITH CHECK (true);
CREATE POLICY "anon_select" ON list_shares FOR SELECT TO anon USING (true);
CREATE POLICY "anon_delete" ON list_shares FOR DELETE TO anon USING (true);
