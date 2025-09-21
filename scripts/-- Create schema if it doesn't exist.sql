-- Create schema if it doesn't exist
CREATE SCHEMA IF NOT EXISTS neon_auth;

-- Create the users_sync table
CREATE TABLE neon_auth.users_sync (
    raw_json JSONB NOT NULL,
    id TEXT NOT NULL,
    name TEXT,
    email TEXT,
    created_at TIMESTAMP WITH TIME ZONE,
    deleted_at TIMESTAMP WITH TIME ZONE,
    PRIMARY KEY (id)
);

-- Create index on deleted_at
CREATE INDEX users_sync_deleted_at_idx ON neon_auth.users_sync (deleted_at);
```