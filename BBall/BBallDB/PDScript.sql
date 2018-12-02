/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

IF '$(LoadTestData)' = 'true'

BEGIN

DELETE FROM Game;
DELETE FROM Player;

INSERT INTO Player ([Name], Email) VALUES
('Florence Chau', 'yousuck@gmail.com'),
('Flodude McChau', 'sofet@gmail.com');

INSERT INTO Game (DateAndTime, Venue) VALUES
('10-DEC-2018 4:20:00PM', 'Springers');

END