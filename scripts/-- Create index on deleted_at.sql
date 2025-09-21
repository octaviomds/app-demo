-- Create index on deleted_at
CREATE INDEX users_sync_deleted_at_idx ON neon_auth.users_sync (deleted_at);
```