/*
    RETURN AssetGroup
    GroupID         INT         NOT NULL
    ScannerSourceID VARCHAR(36) NOT NULL
    CloudSourceID   VARCHAR(36) NULL
*/

DROP PROCEDURE IF EXISTS `GetAssetGroupForOrg`;

CREATE PROCEDURE `GetAssetGroupForOrg` (inScannerSource VARCHAR(36), inOrgID VARCHAR(36))
    #BEGIN#
SELECT
    AG.GroupID,
    AG.ScannerSourceID,
    AG.CloudSourceID
FROM AssetGroup AG
WHERE AG.OrganizationID = inOrgID AND AG.ScannerSourceID = inScannerSource;