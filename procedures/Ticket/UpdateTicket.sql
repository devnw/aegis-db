DROP PROCEDURE IF EXISTS `UpdateTicket`;

CREATE PROCEDURE `UpdateTicket`(_Title VARCHAR(36), _Status VARCHAR(100), _OrganizationID VARCHAR(100), _UpdatedDate DATETIME, _ResolutionDate DATETIME)

#BEGIN#
UPDATE Ticket T SET T.Status = _Status, T.UpdatedDate = _UpdatedDate, T.ResolutionDate = _ResolutionDate WHERE T.Title = _Title AND T.OrganizationID = _OrganizationID;