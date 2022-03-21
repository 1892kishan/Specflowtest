﻿Feature: Builder Positive Scenario

@Rest
Scenario: As Builder, Insert into a Link Column using ResolveLink
	Given Cleanup Run cql from file Cleanup.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Builder Run cql from file Link Column insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql from file Link Column selectCQL.txt and validate unordered result Link Column insertCQLResult.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name            | Value      |

@Rest
Scenario: As Builder, Insert into a Link Column using square bracket syntax
	Given Cleanup Run cql from file Cleanup.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Builder Run cql from file Link Column insertCQL4.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql from file Link Column selectCQL.txt and validate unordered result Link Column insertCQLResult.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name            | Value      |

@Rest
Scenario: As Builder, Insert into a Link Column using Cinchy Version syntax
	Given Cleanup Run cql from file Cleanup.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Builder Run cql from file Link Column insertCQL6.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql from file Link Column selectCQL.txt and validate unordered result Link Column insertCQLResult.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name            | Value      |

@Rest
Scenario: Scenario: As Builder, Insert into a Link Column that references simple column types
	Given Cleanup Run cql from file Resolve Link With Simple Type.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Builder Run cql from file Link Column Simple Type insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql from file Link Column Simple Type selectCQL.txt and validate unordered result Link Column Simple Type insertCQLResult.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name            | Value      |

@Rest
Scenario: As Builder, Insert into a Link Column that references cached calculated column type, that references a simple type, link column, UDF
	Given Cleanup Run cql from file Resolve Link With Calculated Column Type.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Builder Run cql from file Link Column Resolve Calculated Column Cache insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql from file Link Column Resolve Calculated Column Cache selectCQL.txt and validate unordered result Link Column Resolve Calculated Column Cache insertCQLResult.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name            | Value      |

@Rest
Scenario:  As Builder, Insert into a Link Column that references live calculated columns, that references a simple type, link column, UDF
	Given Cleanup Run cql from file Resolve Link With Calculated Column Type.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Builder Run cql from file Link Column Resolve Calculated Column Live insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql from file Link Column Resolve Calculated Column Live selectCQL.txt and validate unordered result Link Column Resolve Calculated Column Live insertCQLResult.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name            | Value      |

@Rest
Scenario: As Builder, Insert into a Multi Select Link Column
	Given Cleanup Run cql from file Link Column Multi.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Builder Run cql from file Link Column Multi insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql from file Link Column Multi selectCQL.txt and validate unordered result Link Column Multi CQLResult.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name            | Value      |

@Rest
Scenario: As Builder, Insert into a Multi Select Link Column By Square Bracket
	Given Cleanup Run cql from file Link Column Multi.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Builder Run cql from file Link Column Multi Square Bracket insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql from file Link Column Multi selectCQL.txt and validate unordered result Link Column Multi CQLResult.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name            | Value      |

@Rest
Scenario: As Builder, Insert into a Multi Select Link Column By Version
	Given Cleanup Run cql from file Link Column Multi.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Builder Run cql from file Link Column Multi Version insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql from file Link Column Multi selectCQL.txt and validate unordered result Link Column Multi CQLResult.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name            | Value      |

@Rest
Scenario: As Builder, Insert into a Multi Select Choice Column
	Given Cleanup Run cql from file Choice Column Multi.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Builder Run cql from file Choice Column Multi insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql from file Choice Column Multi selectCQL.txt and validate unordered result Choice Column Multi CQLResult.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name            | Value      |

@Rest
Scenario: As Builder, Insert multiple rows
	Given Cleanup Run cql from file Multiple Row.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Builder Run cql from file Multiple Row insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql from file Multiple Row selectCQL.txt and validate unordered result Multiple Row CQLResult.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name            | Value      |

@Rest
Scenario: As Builder, Access cinchy row id
	Given Cleanup Run cql from file Cleanup.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Builder Run cql from file Access Cinchy Row Id insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then User is able to access cinchy row id

#Table Team 1) Name (Text) 2) League (Link to Table League Column Name)
#Table League 1) Name
#Requires Insert + Edit for Table team
#Requires Direct Query and View All Columns for Table League
@Rest
Scenario: As Builder, Insert into table and validate viewable rows
	Given Cleanup Run cql from file Row Filter.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Builder Run cql from file Row Filter insertCQL.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Builder Run cql from file Row Filter selectCQL.txt and validate unordered result Row Filter Admin CQLResult.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name            | Value      |

@Rest
Scenario: As Builder using parameters, Insert into a Link Column using ResolveLink
	Given Cleanup Run cql from file Cleanup.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Builder Run cql from file Link Column insertCQL Param.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value                                |
		| text  | 93b55872-cbf7-4b54-80f3-14ecb7f65059 |
		| value | 4                                    |
	Then As User Builder Run cql from file Link Column selectCQL Param.txt and validate unordered result Link Column insertCQLResult.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name      | Value                                |
		| textvalue | 93b55872-cbf7-4b54-80f3-14ecb7f65059 |

@Rest
Scenario: As Builder using parameters, Insert into a Multi Select Choice Column
	Given Cleanup Run cql from file Choice Column Multi.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Builder Run cql from file Choice Column Multi insertCQL Param.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                |
		| value4 | Blue,Green,Red,White |
	Then As User Builder Run cql from file Choice Column Multi selectCQL Param.txt and validate unordered result Choice Column Multi CQLResult.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
		| value  | Blue  |
		| value1 | Green |
		| value2 | Red   |
		| value3 | White |