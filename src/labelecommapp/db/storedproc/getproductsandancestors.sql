SELECT   distinct pa.path, pa.id, pa.short_name, pa.serial_number
FROM     products p
JOIN     levels l
ON       SUBSTRING_INDEX(p.path, ':', l.id) <> p.path
JOIN     products pa
ON       pa.path = CONCAT(SUBSTRING_INDEX(p.path, ':', l.id), ':')
WHERE    p.id IN (99, 97, 98);