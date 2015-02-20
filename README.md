# Class Project

##Getting and Cleaning Data
The R script run_analysis.R in this repo prepares a tidy data set of the mean and standard deviation of various measurements from the Samsung data set.

It depends on the package 'dplyr', which will be installed if it is not detected.

This script combines both the Training and Testing sets from the original data.  It extracts only measurements on the mean and standard deviation of each quantity.  It adds a column for the subject (who are given labels between 1 and 30) and the activity description.  Finally, the mean of all measurements with the same subject and activity is taken and reported in the final data set.

The script can be run with source('run_analysis.R').  It expects the Samsung data to be located in two subdirectories 'test' and 'train', located in the same directory as run_analysis.R.  It outputs a tidy data set as 'project.txt'.  This file can be read back into R with the command read.table('project.txt')