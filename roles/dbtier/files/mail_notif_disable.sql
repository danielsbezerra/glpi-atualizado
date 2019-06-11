use glpi;

UPDATE glpi.glpi_mailcollectors
SET is_active = 0
where name = 'centraldeservicos@desenbahia.ba.gov.br';

UPDATE glpi.glpi_configs
SET value = 0
where name = 'notifications_mailing';