﻿Feature: Edit All Columns Editable Row Filter

## C<-B<-A, user has no permission to C
@Rest
Scenario: VH - Select a link column pointing to another link column as user with no permission to that table, has Edit All Columns Editable Row Filter permission to linked table and source column table
	When  As User EditAll Edit Row Filter executeSavedQuery Run cql statement SELECT [Cinchy Record Type],[Approval State],[Version],[Draft version],[Nested Link] FROM [Mock].[Employees3]; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on table(s) Employees3

# C<-B<-A, user has no permission to C
@Rest
Scenario: VH - Select a multi select link column pointing to another link column as user with no permission to that table, has Edit All Columns Editable Row Filter permission to linked table and source column table
	When  As User EditAll Edit Row Filter executeSavedQuery Run cql statement SELECT [Cinchy Record Type],[Approval State],[Version],[Draft version],[MSL] FROM [Mock].[Employees3]; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on table(s) Employees3

# B<-A, user has no permission to B
@Rest
Scenario: VH - Select a link column as a user with Edit All Columns Editable Row Filter entitlement without access to the table
	When  As User EditAll Edit Row Filter currentUsersGroups Run cql statement SELECT [Cinchy Record Type],[Approval State],[Version],[Draft version],[Location] FROM [Mock].[Job3]; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on table(s) Job3

# B<-A, user has no permission to B
@Rest
Scenario: VH - Select a multi select link column as a user with Edit All Columns Editable Row Filter entitlement without access to the table
	When  As User EditAll Edit Row Filter currentUsersGroups Run cql statement SELECT [Cinchy Record Type],[Approval State],[Version],[Draft version],[Other Locations] FROM [Mock].[Job3]; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied on table(s) Job3

# C<-B<-A, user has no permission to B
@Rest
Scenario: VH - Select a link column that points to another link column as a user with Edit All Columns Editable Row Filter entitlement without access to the linked table
	When  As User EditAll Edit Row Filter currentUsersGroups Run cql statement SELECT [Nested Link] FROM [Mock].[Employees3]; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

# C<-B<-A, user has no permission to B
@Rest
Scenario: VH - Select a multi select link column that points to another link column as a user with Edit All Columns Editable Row Filter entitlement without access to the linked table
	When  As User EditAll Edit Row Filter currentUsersGroups Run cql statement SELECT [MSL] FROM [Mock].[Employees3]; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

# C<-B<-A, user has no permission to A
@Rest
Scenario: VH - Select a link column that points to another link column as a user with Edit All Columns Editable Row Filter entitlement without access to the source column table
	When  As User EditAll Edit Row Filter currentUserId Run cql statement SELECT [Nested Link] FROM [Mock].[Employees3]; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied

# C<-B<-A, user has no permission to A
@Rest
Scenario: VH - Select a multi select link column that points to another link column as a user with Edit All Columns Editable Row Filter entitlement without access to the source column table
	When  As User EditAll Edit Row Filter currentUserId Run cql statement SELECT [MSL] FROM [Mock].[Employees3]; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Run cql result failed with exception Access denied