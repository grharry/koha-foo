ALTER TABLE borrowers ADD privacy_guarantor_checkouts BOOLEAN NOT NULL DEFAULT '0' AFTER privacy;

ALTER TABLE deletedborrowers ADD privacy_guarantor_checkouts BOOLEAN NOT NULL DEFAULT '0' AFTER privacy;

INSERT IGNORE INTO systempreferences (variable, value, options, explanation, type )
VALUES (
    'AllowStaffToSetCheckoutsVisibilityForGuarantor',  '0', NULL,
    'If enabled, library staff can set a patron''s checkouts to be visible to linked patrons from the opac.',  'YesNo'
), (
    'AllowPatronToSetCheckoutsVisibilityForGuarantor',  '0', NULL,
    'If enabled, the patron can set checkouts to be visible to  his or her guarantor',  'YesNo'
);