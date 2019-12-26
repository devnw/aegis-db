/*
  RETURN JobHistory
  ID                      NVARCHAR(36)           NOT
  JobID                   INT           NOT
  ConfigID                NVARCHAR(36)           NOT
  StatusID                INT           NOT
  ParentJobID             NVARCHAR(36)           NULL
  Identifier              NVARCHAR(100) NULL
  Priority                INT           NOT
  CurrentIteration        INT           NULL
  Payload                 TEXT          NOT
  ThreadID                NVARCHAR(100) NULL
  PulseDate               DATETIME      NULL
  CreatedDate             DATETIME      NOT
  UpdatedDate             DATETIME      NULL
*/

DROP PROCEDURE IF EXISTS `GetCancelledJobs`;

CREATE PROCEDURE `GetCancelledJobs` ()
  #BEGIN#
  SELECT
    JH.Id,
    JH.JobId,
    JH.ConfigId,
    JH.StatusId,
    JH.ParentJobId,
    JH.Identifier,
    JH.Priority,
    JH.CurrentIteration,
    JH.Payload,
    JH.ThreadId,
    JH.PulseDate,
    JH.CreatedDate,
    JH.UpdatedDate
  FROM JobHistory JH
  WHERE JH.StatusId < 0 -- Cancelled;