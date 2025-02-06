
-- Find drafts which contains the word 'optimism'.

-- Table: google_file_store

select filename,contents from google_file_store
where filename like '%draft%' and contents like '%optimism%';