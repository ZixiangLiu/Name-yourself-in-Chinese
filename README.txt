CSC214
Project1
Team Member: Junyang Chen, Yifei Yang, Zixiang Liu, Yukun Chen
App Name: Name Yourself in Chinese

Proposal:

	Introduction
	With Chinese culture affecting this whole world increasingly, having a nice and sounding Chinese name will become a very meaningful thing. A good Chinese name can promote better communication with the Chinese people, and let the others feel your understanding of the Chinese culture. Not only that, as the Chinese proverb, good names can make people shine, a beautiful Chinese name can bring good luck and lofty future.

	Target Audience
	Generally the app is designed for those who like Chinese culture and wish to have a Chinese name. While businessmen who want to have Chinese Business card will find this app is the only option on the market.

	Existing Apps
	Since similar apps in appstore cannot generate business card, and cannot show correct way of writing the name, let only writing practice, our app is tailored for business oriented customers.

	How to use
	By input an English last name, the application would automatically generate a corresponding Chinese last name. And then depend on users’ gender and specific requirements like (sound-like, concept behind name or easy-writing), the application would show a list of results to users. 

	Main function：Generate Chinese name
	Views：
		1. loading
		2. Input page (ask for gender, last name, first name, writability and so on)
		3. Output text (A list of generated names and their meanings)

	UI:
	Loading view: just include a static string
	Input view: Combination of segment controller, label, text field
	Output view: Table view 

	Database:
	A database includes:
		Commonly used Chinese characters:
		easiness of writing, meaning

	User experience:
	1、Open the app
	2、Input information
	3、See a list of candidates
	4、edit candidates
	5、Select preferred one
	6、go back to choose another combination

	** A tab bar controller and view controller has been added to satisfy the animation requirement.

Requirements:
	animation in second option of tab bar controller
	table view support edit and delete operation, add & move is not supported because it is meaningless in our app. 
	localization: Chinese traditional
	Bundle display name: Mingzi (Chinese for Name)
	table view cells are costumed, which will be more complex in project 2
	table view cell uses dynamic type
	

Honor Pledge:
	I affirm that I have not given or received any unauthorized help on this assignment, and that this work is my own.

