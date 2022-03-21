﻿Feature: CQL Edit Selected Edit Row Filter

@Rest
Scenario: VH - SELECT currentUserId() with user with edit selected columns with editable row filter based on currentUserId
	When As User Edit Selected Edit Row Filter currentUserId Run cql statement select TOP 1 currentUserId() as Result from [Mock].[EmployeeChangeApproval1] with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result108

@Rest
Scenario: VH - SELECT where currentUserId() with user with edit selected columns with editable row filter based on currentUserId
	When As User Edit Selected Edit Row Filter currentUserId Run cql statement select [Role] as Result from [Mock].[EmployeeChangeApproval1] where [User]= currentUserId(); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result14141414141414

@Rest
Scenario: VH - SELECT where currentUsersGroups() with user with edit selected columns with editable row filter based on currentUserId
	When As User Edit Selected Edit Row Filter currentUserId Run cql statement select [Name] from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()) ORDER BY NAME DESC; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameRaspberryRaspberryRaspberryRaspberryRaspberryRaspberryRaspberryPear1PearPearPearPearPearPearPearPearPearPearPearPearPeachPeachPeachPeachPeachPeachPeachPeachPeachPapayaPapayaPapayaPapayaPapayaPapayaPapayaPapayaPapayaPapayaPapayaOrange1OrangeOrangeOrangeOrangeOrangeOrangeMango2Mango2Mango2Mango2Mango2Mango2Mango2Mango1MangoMangoMangoMangoLimeLimeLimeLimeLimeLimeLimeLimeLemon1LemonLemonLemonLemonLemonLemonLemonLemonLemonLemonKiwiKiwiKiwiKiwiKiwiKiwiKiwiKiwiKiwiJack Fruit1Jack Fruit1Jack FruitJack FruitJack FruitJack FruitJack FruitJack FruitJack FruitJack FruitGrapefruitGrapefruitGrapefruitGrapefruitGrapefruitGrapefruitGrapefruitGrapefruitGrapefruitGrapefruitGrapefruitFruit6Fruit6Fruit6Fruit6Fruit6Fruit6Fruit6Fruit5Fruit4Fruit4Fruit4Fruit3Fruit3Fruit3Fruit3Fruit3Fruit3Fruit3Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit11DraftFruit11Fruit11Fruit11Fruit11Fruit11Fruit11Fruit10Fruit10Fruit10Fruit10Fruit10Fruit10Fruit10Fruit10Fruit10Fruit10Fruit10Fruit10Fruit10Fruit10Fruit10Fruit10Fruit10Fruit10Carambola1CarambolaCarambolaCarambolaCarambolaBanana1BananaBananaBananaBananaBananaApricotsApricotsApricotsApricotsApricotsApricotsApricotsAnnie1AnnieAnnieAnnieAnnie

@Rest
Scenario: VH - SELECT subquery currentUsersGroups() with user with edit selected columns with editable row filter based on currentUserId
	When As User Edit Selected Edit Row Filter currentUserId Run cql statement select TOP 1 (Select TOP 1 [Name] from [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultUserId

@Rest
Scenario: VH - Select scalar UDF() with user with edit selected columns with editable row filter based on currentUserId
	When As User Edit Selected Edit Row Filter currentUserId Run cql statement select UDFSubstring([Name]) from [Mock].[EmployeeChangeApproval1] where [User] = currentUserId(); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULTMaMaMaMaMaMaMaMa

@Rest
Scenario: VH - Select where scalar UDF() with user with edit selected columns with editable row filter based on currentUserId
	When As User Edit Selected Edit Row Filter currentUserId Run cql statement select [Person] from [Mock].[EmployeeChangeApproval1] where UDFReturn([Name]) = 'Annie1' with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be PersonAnnieAnnieAnnieAnnieAnnieAnnie

@Rest
Scenario: VH - Select executeSavedQuery() with user with edit selected columns with editable row filter based on currentUserId
	When As User Edit Selected Edit Row Filter currentUserId Run cql statement Select Name = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: VH - Select where executeSavedQuery() with user with edit selected columns with editable row filter based on currentUserId
	When As User Edit Selected Edit Row Filter currentUserId Run cql statement Select [Name] from [Mock].[EmployeeChangeApproval1] where [Name] = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2

@Rest
Scenario: VH - SELECT currentUserId() with user with edit selected columns with editable row filter based on currentUsersGroups
	When As User Edit Selected Edit Row Filter currentUsersGroups Run cql statement select TOP 1 currentUserId() as Result from [Mock].[EmployeeChangeApproval1] with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result109

@Rest
Scenario: VH - SELECT where currentUserId() with user with edit selected columns with editable row filter based on currentUsersGroups
	When As User Edit Selected Edit Row Filter currentUsersGroups Run cql statement select [Role] as Result from [Mock].[EmployeeChangeApproval1] where [User]= currentUserId(); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result1212121212121212

@Rest
Scenario: VH - SELECT where currentUsersGroups() with user with edit selected columns with editable row filter based on currentUsersGroups
	When As User Edit Selected Edit Row Filter currentUsersGroups Run cql statement select [Name] from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()) ORDER BY NAME DESC; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameRaspberryRaspberryPlum1Plum1PlumPlumPlumPlumPlumPlumPineapplePineapplePapaya1PapayaOrange1OrangeOrangeOrangeOrangeOrangeOrangeNectarine1Nectarine1NectarineNectarineNectarineNectarineNectarineMarkMarkMarkMarkMarkMango1MangoMangoMangoMangoMandarin1Mandarin1MandarinMandarinMandarinMandarinMandarinMandarinMandarinMandarinMandarinLimeLemon1LemonLemonLemonLemonLemonLemonLemonLemonLemonLemonKiwiKiwiKiwiKiwiKiwiKiwiKiwiKiwiKiwiKiwiKiwiJackfruitJackfruitJackfruitFruit7Fruit7Fruit7Fruit7Fruit7Fruit5Fruit4Fruit4Fruit4Fruit4Fruit4Fruit4Fruit4Fruit3Fruit3Fruit3Fruit3Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit1Fruit1Fruit1Fruit1Fruit1Fruit1Fruit1Blueberry1Blueberry1Blueberry1BlueberryBlueberryBlueberryBlueberryBlueberryBanana2Banana1BananaBananaBananaBananaBananaApricotApricotApricotApricotApricotApricotApricotAppleAppleAppleAppleAnnie1AnnieAnnieAnnieAnnie

@Rest
Scenario: VH - SELECT subquery currentUsersGroups() with user with edit selected columns with editable row filter based on currentUsersGroups
	When As User Edit Selected Edit Row Filter currentUsersGroups Run cql statement select TOP 1 (Select TOP 1 [Name] from [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultUserGroup

@Rest
Scenario: VH - Select scalar UDF() with user with edit selected columns with editable row filter based on currentUsersGroups
	When As User Edit Selected Edit Row Filter currentUsersGroups Run cql statement select UDFSubstring([Name]) from [Mock].[EmployeeChangeApproval1] where [User] = currentUserId(); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULTBlBlBlBlBlBlBlBlBlBlBlBlBlBlBlBlBlBl

@Rest
Scenario: VH - Select where scalar UDF() with user with edit selected columns with editable row filter based on currentUsersGroups
	When As User Edit Selected Edit Row Filter currentUsersGroups Run cql statement select [Person] from [Mock].[EmployeeChangeApproval1] where UDFReturn([Name]) = 'Annie1' with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be PersonAnnieAnnieAnnieAnnieAnnieAnnie

@Rest
Scenario: VH - Select executeSavedQuery() with user with edit selected columns with editable row filter based on currentUsersGroups
	When As User Edit Selected Edit Row Filter currentUsersGroups Run cql statement Select Name = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: VH - Select where executeSavedQuery() with user with edit selected columns with editable row filter based on currentUsersGroups
	When As User Edit Selected Edit Row Filter currentUsersGroups Run cql statement Select [Name] from [Mock].[EmployeeChangeApproval1] where [Name] = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2

@Rest
Scenario: VH - SELECT currentUserId() with user with edit selected columns with editable row filter based on executeSavedQuery
	When As User Edit Selected Edit Row Filter executeSavedQuery Run cql statement select TOP 1 currentUserId() as Result from [Mock].[EmployeeChangeApproval1] with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result110

@Rest
Scenario: VH - SELECT where currentUserId() with user with edit selected columns with editable row filter based on executeSavedQuery
	When As User Edit Selected Edit Row Filter executeSavedQuery Run cql statement select [Role] as Result from [Mock].[EmployeeChangeApproval1] where [User]= currentUserId(); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result777777

@Rest
Scenario: VH - SELECT where currentUsersGroups() with user with edit selected columns with editable row filter based on executeSavedQuery
	When As User Edit Selected Edit Row Filter executeSavedQuery Run cql statement select [Name] from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameBanana1Orange1Annie1Mango1Fruit2Fruit3Fruit4Lemon1Fruit5AnnieBananaOrangeMangoKiwiLemonFruit2AnnieKiwiBananaOrangeAnnieBananaOrangeMangoKiwiLemonFruit2OrangeFruit2LemonKiwiLemonLemonLemonKiwiFruit2KiwiLemonMangoLemonLemonFruit2KiwiKiwiKiwiBananaOrangeFruit2Fruit3Fruit4Fruit2Fruit3Fruit3Fruit4BananaOrangeMangoAnnieLemon

@Rest
Scenario: VH - SELECT subquery currentUsersGroups() with user with edit selected columns with editable row filter based on executeSavedQuery
	When As User Edit Selected Edit Row Filter executeSavedQuery Run cql statement select TOP 1 (Select TOP 1 [Name] from [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultSelect

@Rest
Scenario: VH - Select scalar UDF() with user with edit selected columns with editable row filter based on executeSavedQuery
	When As User Edit Selected Edit Row Filter executeSavedQuery Run cql statement select UDFSubstring([Name]) from [Mock].[EmployeeChangeApproval1] where [User] = 117; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULTPlPlPlPlPlPlPlPlPlPlPlPlPlPlPlPlPlPl

@Rest
Scenario: VH - Select where scalar UDF() with user with edit selected columns with editable row filter based on executeSavedQuery
	When As User Edit Selected Edit Row Filter executeSavedQuery Run cql statement select [Person] from [Mock].[EmployeeChangeApproval1] where UDFReturn([Name]) IN ('Mandarin','Papaya','Orange','Apricot','Fruit1','Grapefruit','Kiwi','Grape','Mango1') order by [Person] with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be PersonAppleAppleAppleAppleAppleAppleAppleAppleAppleAppleAppleAppleAppleAppleAppleAppleAppleAppleAppleAppleAppleAppleAppleAppleAppleAppleAppleAppleAppleAppleAppleAppleAppleAppleAppleAppleAppleAppleAppleAppleAppleAppleAppleAppleAppleAppleAppleJohnJohnJohnJohnJohnJohnJohnJohnJohnJohnJohnJohnJohnJohnJohnJohnJohnJohnJohnJohnJohnJohnJohnJohnJohnJohnJohnJohnJohnJohnJohnJohnJohnJohnJohnJohnJohnJohnJohnJohnMangoMangoMango

@Rest
Scenario: VH - Select executeSavedQuery() with user with edit selected columns with editable row filter based on executeSavedQuery
	When As User Edit Selected Edit Row Filter executeSavedQuery Run cql statement Select Name = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: VH - Select where executeSavedQuery() with user with edit selected columns with editable row filter based on executeSavedQuery
	When As User Edit Selected Edit Row Filter executeSavedQuery Run cql statement Select [Name] from [Mock].[EmployeeChangeApproval1] where [Name] = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2

@Rest
Scenario: VH - SELECT currentUserId() with user with edit selected columns with editable row filter based on Link column
	When As User Edit Selected Edit Row Filter Link column Run cql statement select TOP 1 currentUserId() as Result from [Mock].[EmployeeChangeApproval1] with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result111

@Rest
Scenario: VH - SELECT where currentUserId() with user with edit selected columns with editable row filter based on Link column
	When As User Edit Selected Edit Row Filter Link column Run cql statement select [Role] as Result from [Mock].[EmployeeChangeApproval1] where [User]= currentUserId(); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest
Scenario: VH - SELECT where currentUsersGroups() with user with edit selected columns with editable row filter based on Link column
	When As User Edit Selected Edit Row Filter Link column Run cql statement select [Name] from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameBanana1Orange1Annie1Mango1Fruit2Fruit3Fruit4Lemon1Fruit5AnnieBananaOrangeMangoKiwiLemonFruit2AnnieKiwiBananaOrangeAnnieBananaOrangeMangoKiwiLemonFruit2OrangeFruit2LemonKiwiLemonLemonLemonKiwiFruit2KiwiLemonMangoLemonLemonFruit2KiwiKiwiKiwiBananaOrangeFruit2Fruit3Fruit4Fruit2Fruit3Fruit3Fruit4BananaOrangeMangoAnnieLemon

@Rest
Scenario: VH - SELECT subquery currentUsersGroups() with user with edit selected columns with editable row filter based on Link column
	When As User Edit Selected Edit Row Filter Link column Run cql statement select TOP 1 (Select TOP 1 [Name] from [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultSelect

@Rest
Scenario: VH - Select scalar UDF() with user with edit selected columns with editable row filter based on Link column
	When As User Edit Selected Edit Row Filter Link column Run cql statement select UDFSubstring([Name]) from [Mock].[EmployeeChangeApproval1] where [User] = 133; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULTKiKiKiKiKiKiKiKiKiKiKiKi

@Rest
Scenario: VH - Select where scalar UDF() with user with edit selected columns with editable row filter based on Link column
	When As User Edit Selected Edit Row Filter Link column Run cql statement select [Person] from [Mock].[EmployeeChangeApproval1] where UDFReturn([Name]) = 'Annie1' with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be PersonAnnieAnnieAnnieAnnieAnnieAnnie

@Rest
Scenario: VH - Select executeSavedQuery() with user with edit selected columns with editable row filter based on Link column
	When As User Edit Selected Edit Row Filter Link column Run cql statement Select Name = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: VH - Select where executeSavedQuery() with user with edit selected columns with editable row filter based on Link column
	When As User Edit Selected Edit Row Filter Link column Run cql statement Select [Name] from [Mock].[EmployeeChangeApproval1] where [Name] = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2

@Rest
Scenario: VH - SELECT currentUserId() with user with edit selected columns with editable row filter based on Nested Link column
	When As User Edit Selected Edit Row Filter Nested Link column Run cql statement select TOP 1 currentUserId() as Result from [Mock].[EmployeeChangeApproval1] with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result112

@Rest
Scenario: VH - SELECT where currentUserId() with user with edit selected columns with editable row filter based on Nested Link column
	When As User Edit Selected Edit Row Filter Nested Link column Run cql statement select [Role] as Result from [Mock].[EmployeeChangeApproval1] where [User]= currentUserId(); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest
Scenario: VH - SELECT where currentUsersGroups() with user with edit selected columns with editable row filter based on Nested Link column
	When As User Edit Selected Edit Row Filter Nested Link column Run cql statement select [Name] from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameBanana1Orange1Annie1Mango1Fruit2Fruit3Fruit4Lemon1Fruit5AnnieBananaOrangeMangoKiwiLemonFruit2AnnieKiwiBananaOrangeAnnieBananaOrangeMangoKiwiLemonFruit2OrangeFruit2LemonKiwiLemonLemonLemonKiwiFruit2KiwiLemonMangoLemonLemonFruit2KiwiKiwiKiwiBananaOrangeFruit2Fruit3Fruit4Fruit2Fruit3Fruit3Fruit4BananaOrangeMangoAnnieLemon

@Rest
Scenario: VH - SELECT subquery currentUsersGroups() with user with edit selected columns with editable row filter based on Nested Link column
	When As User Edit Selected Edit Row Filter Nested Link column Run cql statement select TOP 1 (Select TOP 1 [Name] from [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultSelect

@Rest
Scenario: VH - Select scalar UDF() with user with edit selected columns with editable row filter based on Nested Link column
	When As User Edit Selected Edit Row Filter Nested Link column Run cql statement select UDFSubstring([Name]) from [Mock].[EmployeeChangeApproval1] where [User] = 117; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULTPlPlPlPlPlPlPlPlPlPlPlPlPlPlPlPlPlPl

@Rest
Scenario: VH - Select where scalar UDF() with user with edit selected columns with editable row filter based on Nested Link column
	When As User Edit Selected Edit Row Filter Nested Link column Run cql statement select [Person] from [Mock].[EmployeeChangeApproval1] where UDFReturn([Name]) = 'Annie1' with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be PersonAnnieAnnieAnnieAnnieAnnieAnnie

@Rest
Scenario: VH - Select executeSavedQuery() with user with edit selected columns with editable row filter based on Nested Link column
	When As User Edit Selected Edit Row Filter Nested Link column Run cql statement Select Name = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: VH - Select where executeSavedQuery() with user with edit selected columns with editable row filter based on Nested Link column
	When As User Edit Selected Edit Row Filter Nested Link column Run cql statement Select [Name] from [Mock].[EmployeeChangeApproval1] where [Name] = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2

@Rest
Scenario: VH - SELECT currentUserId() with user with edit selected columns with editable row filter based on Simple Column
	When As User Edit Selected Edit Row Filter Simple Column Run cql statement select TOP 1 currentUserId() as Result from [Mock].[EmployeeChangeApproval1] with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result113

@Rest
Scenario: VH - SELECT where currentUserId() with user with edit selected columns with editable row filter based on Simple Column
	When As User Edit Selected Edit Row Filter Simple Column Run cql statement select [Role] as Result from [Mock].[EmployeeChangeApproval1] where [User]= currentUserId(); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest
Scenario: VH - SELECT where currentUsersGroups() with user with edit selected columns with editable row filter based on Simple Column
	When As User Edit Selected Edit Row Filter Simple Column Run cql statement select [Name] from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameBanana1Orange1Annie1Mango1Fruit2Fruit3Fruit4Lemon1Fruit5AnnieBananaOrangeMangoKiwiLemonFruit2AnnieKiwiBananaOrangeAnnieBananaOrangeMangoKiwiLemonFruit2OrangeFruit2LemonKiwiLemonLemonLemonKiwiFruit2KiwiLemonMangoLemonLemonFruit2KiwiKiwiKiwiBananaOrangeFruit2Fruit3Fruit4Fruit2Fruit3Fruit3Fruit4BananaOrangeMangoAnnieLemon

@Rest
Scenario: VH - SELECT subquery currentUsersGroups() with user with edit selected columns with editable row filter based on Simple Column
	When As User Edit Selected Edit Row Filter Simple Column Run cql statement select TOP 1 (Select TOP 1 [Name] from [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultSelect

@Rest
Scenario: VH - Select scalar UDF() with user with edit selected columns with editable row filter based on Simple Column
	When As User Edit Selected Edit Row Filter Simple Column Run cql statement select UDFSubstring([Name]) from [Mock].[EmployeeChangeApproval1] where [User] = 10; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULTJoJoJoJoJoJoJoJoJoJoJoJoJoJoJoJoJoJo

@Rest
Scenario: VH - Select where scalar UDF() with user with edit selected columns with editable row filter based on Simple Column
	When As User Edit Selected Edit Row Filter Simple Column Run cql statement select [Person] from [Mock].[EmployeeChangeApproval1] where UDFReturn([Name]) IN ('Annie','John','Mark') ORDER BY [Person]; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be PersonAnnieAnnieAnnieAnnieAnnieAnnieAnnieAnnieAnnieAnnieAnnieAnnieJohnJohnJohnJohnJohnJohnJohnJohnJohn

@Rest
Scenario: VH - Select executeSavedQuery() with user with edit selected columns with editable row filter based on Simple Column
	When As User Edit Selected Edit Row Filter Simple Column Run cql statement Select Name = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: VH - Select where executeSavedQuery() with user with edit selected columns with editable row filter based on Simple Column
	When As User Edit Selected Edit Row Filter Simple Column Run cql statement Select [Name] from [Mock].[EmployeeChangeApproval1] where [Name] = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2

@Rest
Scenario: VH - SELECT currentUserId() with user with edit selected columns with editable row filter based on Subquery
	When As User Edit Selected Edit Row Filter Subquery Run cql statement select TOP 1 currentUserId() as Result from [Mock].[EmployeeChangeApproval1] with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result114

@Rest
Scenario: VH - SELECT where currentUserId() with user with edit selected columns with editable row filter based on Subquery
	When As User Edit Selected Edit Row Filter Subquery Run cql statement select [Role] as Result from [Mock].[EmployeeChangeApproval1] where [User]= currentUserId(); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest
Scenario: VH - SELECT where currentUsersGroups() with user with edit selected columns with editable row filter based on Subquery
	When As User Edit Selected Edit Row Filter Subquery Run cql statement select [Name] from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameBanana1Orange1Annie1Mango1Fruit2Fruit3Fruit4Lemon1Fruit5AnnieBananaOrangeMangoKiwiLemonFruit2AnnieKiwiBananaOrangeAnnieBananaOrangeMangoKiwiLemonFruit2OrangeFruit2LemonKiwiLemonLemonLemonKiwiFruit2KiwiLemonMangoLemonLemonFruit2KiwiKiwiKiwiBananaOrangeFruit2Fruit3Fruit4Fruit2Fruit3Fruit3Fruit4BananaOrangeMangoAnnieLemon

@Rest
Scenario: VH - SELECT subquery currentUsersGroups() with user with edit selected columns with editable row filter based on Subquery
	When As User Edit Selected Edit Row Filter Subquery Run cql statement select TOP 1 (Select TOP 1 [Name] from [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultSelect

@Rest
Scenario: VH - Select scalar UDF() with user with edit selected columns with editable row filter based on Subquery
	When As User Edit Selected Edit Row Filter Subquery Run cql statement select UDFSubstring([Name]) from [Mock].[EmployeeChangeApproval1] where [User] = 150; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULTFrFrFrFrFrFrFrFrFr

@Rest
Scenario: VH - Select where scalar UDF() with user with edit selected columns with editable row filter based on Subquery
	When As User Edit Selected Edit Row Filter Subquery Run cql statement select [Person] from [Mock].[EmployeeChangeApproval1] where UDFReturn([Name]) = 'John' with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be PersonJohnJohnJohnJohnJohnJohnJohnJohnJohn

@Rest
Scenario: VH - Select executeSavedQuery() with user with edit selected columns with editable row filter based on Subquery
	When As User Edit Selected Edit Row Filter Subquery Run cql statement Select Name = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: VH - Select where executeSavedQuery() with user with edit selected columns with editable row filter based on Subquery
	When As User Edit Selected Edit Row Filter Subquery Run cql statement Select [Name] from [Mock].[EmployeeChangeApproval1] where [Name] = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2

@Rest
Scenario: VH - SELECT currentUserId() with user with edit selected columns with editable row filter based on Unrelated Subquery
	When As User Edit Selected Edit Row Filter Unrelated Subquery Run cql statement select TOP 1 currentUserId() as Result from [Mock].[EmployeeChangeApproval1] with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result115

@Rest
Scenario: VH - SELECT where currentUserId() with user with edit selected columns with editable row filter based on Unrelated Subquery
	When As User Edit Selected Edit Row Filter Unrelated Subquery Run cql statement select [Role] as Result from [Mock].[EmployeeChangeApproval1] where [User]= currentUserId(); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be Result

@Rest
Scenario: VH - SELECT where currentUsersGroups() with user with edit selected columns with editable row filter based on Unrelated Subquery
	When As User Edit Selected Edit Row Filter Unrelated Subquery Run cql statement select [Name] from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameBanana1Orange1Annie1Mango1Fruit2Fruit3Fruit4Lemon1Fruit5AnnieBananaOrangeMangoKiwiLemonFruit2AnnieKiwiBananaOrangeAnnieBananaOrangeMangoKiwiLemonFruit2OrangeFruit2LemonKiwiLemonLemonLemonKiwiFruit2KiwiLemonMangoLemonLemonFruit2KiwiKiwiKiwiBananaOrangeFruit2Fruit3Fruit4Fruit2Fruit3Fruit3Fruit4BananaOrangeMangoAnnieLemon

@Rest
Scenario: VH - SELECT subquery currentUsersGroups() with user with edit selected columns with editable row filter based on Unrelated Subquery
	When As User Edit Selected Edit Row Filter Unrelated Subquery Run cql statement select TOP 1 (Select TOP 1 [Name] from [Cinchy].[Groups] as Result where [Cinchy Id] IN (currentUsersGroups()) ORDER BY NAME DESC) as Result from [Mock].[EmployeeChangeApproval1] where [Role] IN (currentUsersGroups()); with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be ResultSelect

@Rest
Scenario: VH - Select scalar UDF() with user with edit selected columns with editable row filter based on Unrelated Subquery
	When As User Edit Selected Edit Row Filter Unrelated Subquery Run cql statement select UDFSubstring([Name]) from [Mock].[EmployeeChangeApproval1] where [User] = 148; with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be FN_RESULTGrGrGrGrGrGrGrGrGrGrGrGr

@Rest
Scenario: VH - Select where scalar UDF() with user with edit selected columns with editable row filter based on Unrelated Subquery
	When As User Edit Selected Edit Row Filter Unrelated Subquery Run cql statement select [Person] from [Mock].[EmployeeChangeApproval1] where UDFReturn([Name]) = 'Annie1' with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be PersonAnnieAnnieAnnieAnnieAnnieAnnie

@Rest
Scenario: VH - Select executeSavedQuery() with user with edit selected columns with editable row filter based on Unrelated Subquery
	When As User Edit Selected Edit Row Filter Unrelated Subquery Run cql statement Select Name = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2

@Rest
Scenario: VH - Select where executeSavedQuery() with user with edit selected columns with editable row filter based on Unrelated Subquery
	When As User Edit Selected Edit Row Filter Unrelated Subquery Run cql statement Select [Name] from [Mock].[EmployeeChangeApproval1] where [Name] = executeSavedQuery('Mock','UserRole99') with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected string to be NameFruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2Fruit2