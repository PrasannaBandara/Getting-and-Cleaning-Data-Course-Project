# Getting-and-Cleaning-Data-Course-Project
 Code for performing your analysis

Created tables using test and train data files.
Created tables seperately as follows;
testx, testy(for test activities, testsub(for test subjects)
trainx, trainy(for test activities, trainsub(for test subjects)

Then combined testx and trainx (Using row combind) and created a seperate table called table1.
After activity lists of test and train were combined. As result we have a table called Activity.
Simillarly subjects were combind and created Subject table.
Then column combind Activities as Subjects to a table called table 2.

Then Activity codes were replced by a descriptive names.

Row means and Standard deviations were calculated for table 1. Then crated a table called output1
to have row mean and standard deviation. 

Then combind the columns in table 2 and output1 and created a new data frame called Tidy.

Finaly created a text file called Tidy in the samsung data folder which is located in my documents.
