-- Fixed deployment-era window. The source starts at 488,650,631 and this fixture
-- asserts the three busiest event streams through the last sealed block.
--
-- Counts are intentionally raw event counts, not Graph entities: this nest makes
-- the on-chain input queryable without replaying AssemblyScript mappings.
SELECT
    (SELECT count(*) FROM "ichichain__transfer" WHERE block_number BETWEEN 488650631 AND 495414965) AS ticket_transfers,
    (SELECT count(*) FROM "ichichain__new_series" WHERE block_number BETWEEN 488650631 AND 495414965) AS series_created,
    (SELECT count(*) FROM "ichichain__new_ticket_status" WHERE block_number BETWEEN 488650631 AND 495414965) AS ticket_statuses,
    (SELECT count(*) FROM "doudo_redraw_module__redraw_requested" WHERE block_number BETWEEN 488650631 AND 495414965) AS redraw_requests;
