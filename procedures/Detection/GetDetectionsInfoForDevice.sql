/*
  RETURN DetectionInfo
  ID                  NVARCHAR(36)  NOT
  OrganizationID      NVARCHAR(36)  NOT
  SourceID            NVARCHAR(36)  NOT
  DeviceID            NVARCHAR(36)  NOT
  VulnerabilityID     NVARCHAR(36)  NOT
  AlertDate           DATETIME      NOT
  Proof               NVARCHAR(255) NOT
  Port                INT           NOT
  Protocol            VARCHAR(20)   NOT
  ActiveKernel        INT           NULL
  DetectionStatusID   INT           NOT
  TimesSeen           INT           NOT
*/

DROP PROCEDURE IF EXISTS `GetDetectionsInfoForDevice`;

CREATE PROCEDURE `GetDetectionsInfoForDevice` (_DeviceID VARCHAR(36))
    #BEGIN#
SELECT
    D.ID,
    D.OrganizationID,
    D.SourceID,
    D.DeviceID,
    D.VulnerabilityID,
    D.AlertDate,
    D.Proof,
    D.Port,
    D.Protocol,
    D.ActiveKernel,
    D.DetectionStatusID,
    D.TimesSeen
FROM Detection D
WHERE D.DeviceID = _DeviceID;