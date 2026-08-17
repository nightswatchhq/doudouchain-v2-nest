-- Every decoded row must retain the declared emitting address. This catches a
-- surprisingly easy mistake in large, multi-contract imports: attaching an ABI
-- to the right event signature but the wrong contract address.
SELECT
    count(*) AS ichichain_rows,
    count(*) FILTER (WHERE address = '0x4749289f940f0c6b7cf68a19b0bdc611b80cdb0a') AS correctly_scoped_rows
FROM "ichichain__transfer"
WHERE block_number BETWEEN 488650631 AND 495414965;
