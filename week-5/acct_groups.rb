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


