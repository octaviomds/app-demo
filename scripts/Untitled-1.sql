
SELECT 
  t.*,
  u.id AS user_id,
  u.name AS user_name,
  u.email AS user_email
FROM 
  public.todos t
LEFT JOIN 
  neon_auth.users_sync u ON t.owner = u.id
WHERE 
  u.deleted_at IS NULL
ORDER BY 
  t.id;