/*
    RETURN AssetGroup SINGLE
    GroupID         INT         NOT NULL
    ScannerSourceID VARCHAR(36) NOT NULL
    CloudSourceID   VARCHAR(36) NULL
    ScannerSourceConfigID VARCHAR(36) NULL
*/

DROP PROCEDURE IF EXISTS `GetAssetGroup`;

CREATE PROCEDURE `GetAssetGroup` (inOrgID VARCHAR(36), _GroupID INT, _ScannerSourceID NVARCHAR(36))
    #BEGIN#
SELECT
    AG.GroupID,
    AG.ScannerSourceID,
    AG.CloudSourceID,
    AG.ScannerSourceConfigID
FROM AssetGroup AG
WHERE AG.GroupID = _GroupID AND AG.ScannerSourceID = _ScannerSourceID AND AG.OrganizationID = inOrgID;