# Pseudocode
#steps
#1. get all names into an array
#2. Run through names and place 5 into new array
def cohort_generator(names)
	total = []
	cohort_1 = []
	cohort_2 = []
	cohort_3 = []
	cohort_4 = []
	cohort_5 = []
	cohort_6 = []
	cohort_7 = []
	cohort_8 = []
	cohort_9 = []
	cohort_10 = []
	cohort_11 = []
	cohort_12 = []
	cohort_13 = []
	cohort_14 = []
	
	names.each_slice(5){|names| total << names}

	cohort_1 << total[1]
	cohort_2 << total[2]
	cohort_3 << total[3]
	cohort_4 << total[4]
	cohort_5 << total[5]
	cohort_6 << total[6]
	cohort_7 << total[7]
	cohort_8 << total[8]
	cohort_9 << total[9]
	cohort_10 << total[10]
	cohort_11 << total[11]
	cohort_12 << total[12]
	cohort_13 << total[13]
	cohort_14 << total[14]
end

cohort_generator(["John Seo", "Aaron Hu", "Adam Pinsky", "Akeem Street",
"Alex Forger", "Andrew Kim", "Baron Kwan", "Brian Bier",
"Byron Gage", "Carl Conroy", "Charlie Bliss", "Christopher Bunkers",
"Cody Kendall", "Coline Forde", "David Valencia", "Emily Bosakowski",
"Everett Golden", "Hagai Zwick", "Heather C", "Ian Wudarski",
"Ieronim Oltean", "Jake Hamilton", "James Boyd" ,"Jasmeet Chatrath",
"Jenna El-Amin", "Jerrie Evans", "Joe Case", "Jonathan Case",
"Jonathan Schwartz", "Jonathan Silvestri", "Kathryn Garbacz",
"Ian Kinner", "Kyle Cierzan", "Kyle Zelman", "Linda Oanh Ho",
"Yiorgos Makridakis", "Matt Harris", "Matthew Baquerizo",
"Menuka Samaranayake", "Michael Pintar", "Mollie Stein",
"Lydia Nash", "Aaron Opsahl", "Peter Leong", "Peter Stratoudakis",
"Prince Sadie", "Ryan F. Salerno", "Sanderfer Chau", "Sarah Finken",
"EMMET SUSSLIN", "Sydney Rossman-Reich", "Eric Tenza", "Thomas Yancey",
"Tim Kelly", "Timothy Beck", "Tyler Doerschuk"])


#What was the most interesting and most difficult part of this challenge?
# The most interesting is the freedom of this challenge and the same with the diffuculty of the challenge
# I feel like this would be more like what I would encounter in the real world,
# I wouldn't have test or anything and I would need everything to come from my head.

#Do you feel you are improving in your ability to write pseudocode and break the problem down?
# I don't know. I feel like my logic is good, but my code logic is really bad. 
# Sometimes it is hard for me to come to grips with this and feel like it's not right,
# but I love doing this and I know that it will come and hopefully the psudocode will help out.

#Was your approach for automating this task a good solution? What could have made it even better?
# I feel like it was a good solution, but definitely not the best and I need to learn more. I need 
# to get more randomized and check for that. 

#What data structure did you decide to store the accountability groups in and why?
# I used an array because I only have names and nothing more. I didn't have anything else
# to look at so this is what I did. 
#What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
# I learned that I didn't need to push single name into the arrays. Instead I could just create something
# to do that for me. I know it isn't the best solution, but it is what I have right now.


