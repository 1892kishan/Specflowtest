﻿Feature: CQL User with All

@Rest
Scenario: DD - SELECT currentUserId() with user with edit all columns and view all columns
	When As User User with All Run cql statement select TOP 1 currentUserId() as Result from [Mock].[EmployeeChangeApproval1] with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result8

@Rest
Scenario: DD - SELECT where currentUserId() with user with edit all columns and view all columns
	When As User User with All Run cql statement select [Employee ID] as Result from [Mock].[EmployeeChangeApproval1] where [User]= currentUserId(); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest
Scenario: DD - SELECT where currentUsersGroups() with user with edit all columns and view all columns
	When As User User with All Run cql statement select [Name] from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()) ORDER BY [Cinchy ID],[Version],[Draft Version]; with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameAnnieBananaOrangeMangoKiwiLemonFruit2

@Rest
Scenario: DD - SELECT subquery currentUsersGroups() with user with edit all columns and view all columns
	When As User User with All Run cql statement select TOP 1 (Select TOP 1 [Name] from [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultSelect

@Rest
Scenario: DD - Select scalar UDF() with user with edit all columns and view all columns
	When As User User with All Run cql statement select UDFSubstring([Name]) from [Mock].[EmployeeChangeApproval1] where [User] = currentUserId(); with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULT

@Rest
Scenario: DD - Select where scalar UDF() with user with edit all columns and view all columns
	When As User User with All Run cql statement select [Person] from [Mock].[EmployeeChangeApproval1] where UDFReturn([Name]) = 'Annie1' with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be PersonAnnie

@Rest
Scenario: DD - Select executeSavedQuery() with user with edit all columns and view all columns
	When As User User with All Run cql statement Select Name = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: DD - Select where executeSavedQuery() with user with edit all columns and view all columns
	When As User User with All Run cql statement Select [Name] from [Mock].[EmployeeChangeApproval1] where [Name] = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Draft Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2