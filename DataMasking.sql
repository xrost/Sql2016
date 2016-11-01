SELECT * FROM Users

CREATE USER WebUser WITHOUT LOGIN
GRANT SELECT ON Users TO WebUser
GRANT UNMASK TO WebUser
REVOKE UNMASK TO WebUser

ALTER TABLE Users ALTER COLUMN Login ADD MASKED WITH (FUNCTION = 'partial(1,"XXXXXXX",0)')
ALTER TABLE Users ALTER COLUMN Login DROP MASKED


EXEC AS USER = 'WebUser'

SELECT * FROM Users
REVERT