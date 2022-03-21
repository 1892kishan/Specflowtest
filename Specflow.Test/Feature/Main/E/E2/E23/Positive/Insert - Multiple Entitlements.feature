﻿Feature: Insert - Multiple Entitlements

@Rest
Scenario: RT - As user with Multiple Entitlements, Insert into a Link Column using ResolveLink
	Given Cleanup Run cql from file ChangeApprovalCleanup5.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Multiple Entitlements Run cql from file insertLinkColumn16.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Multiple Entitlements Run cql from file SelectColumns4.txt and validate unordered result RtResultCommon13.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: RT - As user with Multiple Entitlements, using parameters, Insert into a Link Column using ResolveLink
	Given Cleanup Run cql from file ChangeApprovalCleanup5.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Multiple Entitlements Run cql from file insertLinkColumn13.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value  |
		| value1 | Fruit6 |
	Then As User Multiple Entitlements Run cql from file SelectColumns4.txt and validate unordered result RtResultCommon13.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: RT - As user with Multiple Entitlements, Insert into a Link Column using square bracket syntax
	Given Cleanup Run cql from file ChangeApprovalCleanup5.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Multiple Entitlements Run cql from file insertLinkColumn17.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Multiple Entitlements Run cql from file SelectColumns4.txt and validate unordered result RtResultCommon13.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: RT - As user with Multiple Entitlements, Insert into a Link Column using Cinchy Version syntax
	Given Cleanup Run cql from file ChangeApprovalCleanup5.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Multiple Entitlements Run cql from file insertLinkColumn18.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Multiple Entitlements Run cql from file SelectColumns4.txt and validate unordered result RtResultCommon13.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: RT - As user with Multiple Entitlements, Insert into a Link Column that references simple column types
	Given Cleanup Run cql from file ChangeApprovalCleanup5.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Multiple Entitlements Run cql from file insertLinkColumn19.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Multiple Entitlements Run cql from file SelectColumns4.txt and validate unordered result RtResultCommon14.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: RT - As user with Multiple Entitlements, Insert into a Link Column that references cached calculated column type, that references a simple type, link column, UDF
	Given Cleanup Run cql from file ChangeApprovalCleanup5.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Multiple Entitlements Run cql from file insertLinkColumn14.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Multiple Entitlements Run cql from file SelectColumns4.txt and validate unordered result RtResultCommon15.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value          |

@Rest
Scenario: RT - As user with Multiple Entitlements, Insert into a Link Column that references live calculated columns, that references a simple type, link column, UDF
	Given Cleanup Run cql from file ChangeApprovalCleanup5.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Multiple Entitlements Run cql from file insertLinkColumn15.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Multiple Entitlements Run cql from file SelectColumns4.txt and validate unordered result RtResultCommon15.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value            |

@Rest
Scenario: RT - As user with Multiple Entitlements, Insert into a Multi Select Link Column
	Given Cleanup Run cql from file ChangeApprovalCleanup5.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Multiple Entitlements Run cql from file insertMultiLinkColumn4.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Multiple Entitlements Run cql from file SelectColumns4.txt and validate unordered result RtResultCommon15.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value            |

@Rest
Scenario: RT - As user with Multiple Entitlements, Insert into a Multi Select Link Column By Square Bracket
	Given Cleanup Run cql from file ChangeApprovalCleanup5.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Multiple Entitlements Run cql from file insertMultiLinkColumn5.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Multiple Entitlements Run cql from file SelectColumns4.txt and validate unordered result RtResultCommon15.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value            |

@Rest
Scenario: RT - As user with Multiple Entitlements, Insert into a Multi Select Link Column By Version
	Given Cleanup Run cql from file ChangeApprovalCleanup5.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Multiple Entitlements Run cql from file insertMultiLinkColumn6.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Multiple Entitlements Run cql from file SelectColumns4.txt and validate unordered result RtResultCommon15.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value            |

@Rest
Scenario: RT - As user with Multiple Entitlements, Insert into a Multi Select Choice Column
	Given Cleanup Run cql from file ChangeApprovalCleanup5.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Multiple Entitlements Run cql from file insertMultiChoiceColumn3.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Multiple Entitlements Run cql from file SelectColumns4.txt and validate unordered result RtResultCommon15.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value            |

@Rest
Scenario: RT - As user with Multiple Entitlements, using parameters, Insert into a Multi Select Choice Column
	Given Cleanup Run cql from file ChangeApprovalCleanup5.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Multiple Entitlements Run cql from file insertMultiChoiceColumn4.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value            |
		| value1 | Dance,Jump,Sleep |
	Then As User Multiple Entitlements Run cql from file SelectColumns4.txt and validate unordered result RtResultCommon15.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value            |

@Rest
Scenario: RT - As user with Multiple Entitlements, Insert into hierarchy link column using ResolveLink
	Given Cleanup Run cql from file ChangeApprovalCleanup5.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Multiple Entitlements Run cql from file insertHierarchyColumn5.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Multiple Entitlements Run cql from file SelectColumns4.txt and validate unordered result RtResultCommon15.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value            |

@Rest
Scenario: RT - As user with Multiple Entitlements, using parameters, Insert into hierarchy link column using ResolveLink
	Given Cleanup Run cql from file ChangeApprovalCleanup5.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Multiple Entitlements Run cql from file insertHierarchyColumn6.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
		| value1 | Mark  |
	Then As User Multiple Entitlements Run cql from file SelectColumns4.txt and validate unordered result RtResultCommon15.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value            |

@Rest
Scenario: RT - As user with Multiple Entitlements, Insert into hierarchy link column using Cinchy id, Version syntax
	Given Cleanup Run cql from file ChangeApprovalCleanup5.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Multiple Entitlements Run cql from file insertHierarchyColumn7.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Multiple Entitlements Run cql from file SelectColumns4.txt and validate unordered result RtResultCommon15.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value            |

@Rest
Scenario: RT - As user with Multiple Entitlements, Insert into hierarchy link column using square brackets syntax
	Given Cleanup Run cql from file ChangeApprovalCleanup5.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Multiple Entitlements Run cql from file insertHierarchyColumn8.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Multiple Entitlements Run cql from file SelectColumns4.txt and validate unordered result RtResultCommon15.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value            |

@Rest
Scenario: RT - As user with Multiple Entitlements, Insert into table of columns types : Text, Number, Date, Yes/No, Single select choice columns
	Given Cleanup Run cql from file ChangeApprovalCleanup5.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Multiple Entitlements Run cql from file insertSimpleColumn5.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Multiple Entitlements Run cql from file SelectColumns4.txt and validate unordered result RtResultCommon15.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value            |

@Rest
Scenario: RT - As user with Multiple Entitlements, Insert into table of columns types using parameters: Text, Number, Date, Yes/No, Single select choice columns
	Given Cleanup Run cql from file ChangeApprovalCleanup5.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Multiple Entitlements Run cql from file insertSimpleColumn6.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value            |
		| value1 | AutomationTest82 |
		| value2 | Yes              |
		| value3 | 324224           |
		| value4 | 15 Mar 2020      |
		| value5 | Co-op            |
	Then As User Multiple Entitlements Run cql from file SelectColumns4.txt and validate unordered result RtResultCommon15.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value            |

@Rest
Scenario: RT - As user with Multiple Entitlements, Insert into multi select hierarchy link column using ResolveLink
	Given Cleanup Run cql from file ChangeApprovalCleanup5.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Multiple Entitlements Run cql from file insertMultiHierarchyColumn5.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Multiple Entitlements Run cql from file SelectColumns4.txt and validate unordered result RtResultCommon15.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value            |

@Rest
Scenario: RT - As user with Multiple Entitlements, using parameters, Insert into multi select hierarchy link column using ResolveLink
	Given Cleanup Run cql from file ChangeApprovalCleanup5.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Multiple Entitlements Run cql from file insertMultiHierarchyColumn6.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value      |
		| value1 | Mark,Annie |
	Then As User Multiple Entitlements Run cql from file SelectColumns4.txt and validate unordered result RtResultCommon15.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value            |

@Rest
Scenario: RT - As user with Multiple Entitlements, Insert into multi select hierarchy link column using Cinchy id, Version syntax
	Given Cleanup Run cql from file ChangeApprovalCleanup5.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Multiple Entitlements Run cql from file insertMultiHierarchyColumn7.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Multiple Entitlements Run cql from file SelectColumns4.txt and validate unordered result RtResultCommon15.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value            |

@Rest
Scenario: RT - As user with Multiple Entitlements, Insert into multi select hierarchy link column using square brackets syntax
	Given Cleanup Run cql from file ChangeApprovalCleanup5.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Multiple Entitlements Run cql from file insertMultiHierarchyColumn8.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Multiple Entitlements Run cql from file SelectColumns4.txt and validate unordered result RtResultCommon15.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value            |

@Rest
Scenario: RT - As user with Multiple Entitlements, Insert multiple rows
	Given Cleanup Run cql from file ChangeApprovalCleanup5.txt with ResultFormat = CSV and QueryType = Number Of Rows Affected and Timeout = 60 seconds
	When As User Multiple Entitlements Run cql from file insertMultipleRow3.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Multiple Entitlements Run cql from file SelectColumns4.txt and validate unordered result RtResultCommon19.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |