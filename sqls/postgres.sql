#
SELECT table_name, pg_size_pretty(pg_relation_size(quote_ident(table_name)))
FROM information_schema.tables WHERE table_schema = 'public' ORDER BY 2;