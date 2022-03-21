﻿Feature: CQL User with All

@Rest
Scenario: UE - SELECT currentUserId() with user with edit all columns and view all columns
	When As User User with All Run cql statement select currentUserId() as Result with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result8

@Rest
Scenario: UE - SELECT where currentUserId() with user with edit all columns and view all columns
	When As User User with All Run cql statement select [Employee ID] as Result from [Mock].[Employees360] where [User]= currentUserId(); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest
Scenario: UE - SELECT where currentUsersGroups() with user with edit all columns and view all columns
	When As User User with All Run cql statement select [Name] from [Mock].[Employees360] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameAnnieBananaKiwiLemonFruit2OrangeMango

@Rest
Scenario: UE - SELECT subquery currentUsersGroups() with user with edit all columns and view all columns
	When As User User with All Run cql statement select TOP 1 (Select TOP 1 [Name] from [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[Employees360] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultSelect

@Rest
Scenario: UE - Select scalar UDF() with user with edit all columns and view all columns
	When As User User with All Run cql statement select UDFSubstring([Name]) from [Mock].[Employees360] where [User] = currentUserId(); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULT

@Rest
Scenario: UE - Select where scalar UDF() with user with edit all columns and view all columns
	When As User User with All Run cql statement select [Person] from [Mock].[Employees360] where UDFReturn([Name]) = 'Annie' with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be PersonAnnie

@Rest
Scenario: UE - Select executeSavedQuery() with user with edit all columns and view all columns
	When As User User with All Run cql statement Select Name = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: UE - Select where executeSavedQuery() with user with edit all columns and view all columns
	When As User User with All Run cql statement Select [Name] from [Mock].[Employees360] where [Name] = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2