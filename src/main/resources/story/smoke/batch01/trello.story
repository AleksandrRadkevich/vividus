Scenario: Trello sign up
Given I am on the main application page
When I click on element located `By.xpath(//a[@href="/signup"][@class="btn btn-sm bg-primary text-white font-weight-bold"])`
When I wait until element located `By.xpath(//*[@id="email"])` appears
When I enter `<email>` in field located `By.xpath(//*[@id="email"])`
When I click on element located `By.xpath(//*[@id="signup-submit"])`
When I wait until element located `By.xpath(//*[@id="displayName"])` appears
When I enter `<fullname>` in field located `By.xpath(//*[@id="displayName"])`
When I wait until element located `By.xpath(//*[@id="password"])` appears
When I enter `<password>` in field located `By.xpath(//*[@id="password"])`
When I click on element located `By.xpath(//*[@id="signup-submit"]//span[text()="Sign up"])`
Examples:
|email|fullname|password|
|#{generate(Internet.emailAddress)}|#{generate(Name.fullName)}|#{generate(Internet.password)}|

