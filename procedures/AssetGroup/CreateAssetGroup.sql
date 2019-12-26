DROP PROCEDURE IF EXISTS `CreateAssetGroup`;

CREATE PROCEDURE `CreateAssetGroup` (inOrgID VARCHAR(36), _GroupID INT, _ScannerSourceID NVARCHAR(36))
#BEGIN#
INSERT INTO AssetGroup(OrganizationID, GroupID, ScannerSourceID) VALUES (inOrgID, _GroupID, _ScannerSourceID);