DROP PROCEDURE IF EXISTS `UpdateDetectionTimesSeen`;

CREATE PROCEDURE `UpdateDetectionTimesSeen` (_DeviceID NVARCHAR(36), _VulnID NVARCHAR(36), _TimesSeen INT, _StatusID INT)
  #BEGIN#
  UPDATE Detection D
    SET D.TimesSeen = _TimesSeen, Updated = NOW(), DetectionStatusId = _StatusID
  WHERE D.DeviceID = _DeviceID AND D.VulnerabilityID = _VulnID;