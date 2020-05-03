

#read in the data using the file tool. If you insist on reading it in with read.csv make sure that the name of the frame is "EducationStatisticsProperFormat"

#When reading in the data set, MAKE SURE THAT YOU READ IN STRINGS AS FACTORS AS FALSE

#Removing the last couple of rows which do not contain necessary data
#Due to this line the script will delete the data frame into oblivion if you spam the source button, be careful
EducationStatisticsProperFormat <- EducationStatisticsProperFormat[-c(1,270,271,272,273,274),]
#use method fix() to view the rest of the columns. The view function simply will not show it. Additionally we could partition the data for each year
#to train the model E.g. we use randomizer to pick which years are training and which years are test set

#listing and renaming columns
colnames(EducationStatisticsProperFormat)
names(EducationStatisticsProperFormat)[names(EducationStatisticsProperFormat) == "V1"] <- "Countries"
names(EducationStatisticsProperFormat)[names(EducationStatisticsProperFormat) == "V2"] <- "Country Code"
#For now the data will be cleaned to be the given name from the data set, note that the columnds containing the names have not been removed

#INFORMATION FOR 2008
#Honestly these are so long we really should change them
names(EducationStatisticsProperFormat)[names(EducationStatisticsProperFormat) == "V3"] <- "2008 [YR2008] - GDP per capita"
names(EducationStatisticsProperFormat)[names(EducationStatisticsProperFormat) == "V4"] <- "2008 [YR2008] - Primary completion rate, both sexes (%)"
names(EducationStatisticsProperFormat)[names(EducationStatisticsProperFormat) == "V5"] <- "2008 [YR2008] - Adjusted net enrolment rate, upper secondary, both sexes (%)"

#May want to remove the column that is Graduates from ISCED 6 programmes as not many countries have this filled in
names(EducationStatisticsProperFormat)[names(EducationStatisticsProperFormat) == "V6"] <- "2008 [YR2008] - Graduates from ISCED 6 programmes in tertiary education, both sexes"
names(EducationStatisticsProperFormat)[names(EducationStatisticsProperFormat) == "V7"] <- "2008 [YR2008] - Population"
names(EducationStatisticsProperFormat)[names(EducationStatisticsProperFormat) == "V8"] <- "2008 [YR2008] - Graduates from tertiary education, both sexes"

#INFORMATION FOR 2009
#Honestly these are so long we really should change them
names(EducationStatisticsProperFormat)[names(EducationStatisticsProperFormat) == "V9"] <- "2009 [YR2009] - GDP per capita"
names(EducationStatisticsProperFormat)[names(EducationStatisticsProperFormat) == "V10"] <- "2009 [YR2009] - Primary completion rate, both sexes (%)"
names(EducationStatisticsProperFormat)[names(EducationStatisticsProperFormat) == "V11"] <- "2009 [YR2009] - Adjusted net enrolment rate, upper secondary, both sexes (%)"

#May want to remove the column that is Graduates from ISCED 6 programmes as not many countries have this filled in
names(EducationStatisticsProperFormat)[names(EducationStatisticsProperFormat) == "V12"] <- "2009 [YR2009] - Graduates from ISCED 6 programmes in tertiary education, both sexes"
names(EducationStatisticsProperFormat)[names(EducationStatisticsProperFormat) == "V13"] <- "2009 [YR2009] - Population"
names(EducationStatisticsProperFormat)[names(EducationStatisticsProperFormat) == "V14"] <- "2009 [YR2009] - Graduates from tertiary education, both sexes"

#INFORMATION FOR 2010
#Honestly these are so long we really should change them
names(EducationStatisticsProperFormat)[names(EducationStatisticsProperFormat) == "V15"] <- "2010 [YR2010] - GDP per capita"
names(EducationStatisticsProperFormat)[names(EducationStatisticsProperFormat) == "V16"] <- "2010 [YR2010] - Primary completion rate, both sexes (%)"
names(EducationStatisticsProperFormat)[names(EducationStatisticsProperFormat) == "V17"] <- "2010 [YR2010] - Adjusted net enrolment rate, upper secondary, both sexes (%)"

#May want to remove the column that is Graduates from ISCED 6 programmes as not many countries have this filled in
names(EducationStatisticsProperFormat)[names(EducationStatisticsProperFormat) == "V18"] <- "2010 [YR2010] - Graduates from ISCED 6 programmes in tertiary education, both sexes"
names(EducationStatisticsProperFormat)[names(EducationStatisticsProperFormat) == "V19"] <- "2010 [YR2010] - Population"
names(EducationStatisticsProperFormat)[names(EducationStatisticsProperFormat) == "V20"] <- "2010 [YR2010] - Graduates from tertiary education, both sexes"

#INFORMATION FOR 2011
#Honestly these are so long we really should change them
names(EducationStatisticsProperFormat)[names(EducationStatisticsProperFormat) == "V21"] <- "2011 [YR2011] - GDP per capita"
names(EducationStatisticsProperFormat)[names(EducationStatisticsProperFormat) == "V22"] <- "2011 [YR2011] - Primary completion rate, both sexes (%)"
names(EducationStatisticsProperFormat)[names(EducationStatisticsProperFormat) == "V23"] <- "2011 [YR2011] - Adjusted net enrolment rate, upper secondary, both sexes (%)"

#May want to remove the column that is Graduates from ISCED 6 programmes as not many countries have this filled in
names(EducationStatisticsProperFormat)[names(EducationStatisticsProperFormat) == "V24"] <- "2011 [YR2011] - Graduates from ISCED 6 programmes in tertiary education, both sexes"
names(EducationStatisticsProperFormat)[names(EducationStatisticsProperFormat) == "V25"] <- "2011 [YR2011] - Population"
names(EducationStatisticsProperFormat)[names(EducationStatisticsProperFormat) == "V26"] <- "2011 [YR2011] - Graduates from tertiary education, both sexes"

#INFORMATION FOR 2012
#Honestly these are so long we really should change them
names(EducationStatisticsProperFormat)[names(EducationStatisticsProperFormat) == "V27"] <- "2012 [YR2012] - GDP per capita"
names(EducationStatisticsProperFormat)[names(EducationStatisticsProperFormat) == "V28"] <- "2012 [YR2012] - Primary completion rate, both sexes (%)"
names(EducationStatisticsProperFormat)[names(EducationStatisticsProperFormat) == "V29"] <- "2012 [YR2012] - Adjusted net enrolment rate, upper secondary, both sexes (%)"

#May want to remove the column that is Graduates from ISCED 6 programmes as not many countries have this filled in
names(EducationStatisticsProperFormat)[names(EducationStatisticsProperFormat) == "V30"] <- "2012 [YR2012] - Graduates from ISCED 6 programmes in tertiary education, both sexes"
names(EducationStatisticsProperFormat)[names(EducationStatisticsProperFormat) == "V31"] <- "2012 [YR2012] - Population"
names(EducationStatisticsProperFormat)[names(EducationStatisticsProperFormat) == "V32"] <- "2012 [YR2012] - Graduates from tertiary education, both sexes"

#INFORMATION FOR 2013
#Honestly these are so long we really should change them
names(EducationStatisticsProperFormat)[names(EducationStatisticsProperFormat) == "V33"] <- "2013 [YR2013] - GDP per capita"
names(EducationStatisticsProperFormat)[names(EducationStatisticsProperFormat) == "V34"] <- "2013 [YR2013] - Primary completion rate, both sexes (%)"
names(EducationStatisticsProperFormat)[names(EducationStatisticsProperFormat) == "V35"] <- "2013 [YR2013] - Adjusted net enrolment rate, upper secondary, both sexes (%)"

#May want to remove the column that is Graduates from ISCED 6 programmes as not many countries have this filled in
names(EducationStatisticsProperFormat)[names(EducationStatisticsProperFormat) == "V36"] <- "2013 [YR2013] - Graduates from ISCED 6 programmes in tertiary education, both sexes"
names(EducationStatisticsProperFormat)[names(EducationStatisticsProperFormat) == "V37"] <- "2013 [YR2013] - Population"
names(EducationStatisticsProperFormat)[names(EducationStatisticsProperFormat) == "V38"] <- "2013 [YR2013] - Graduates from tertiary education, both sexes"

#INFORMATION FOR 2014
#Honestly these are so long we really should change them
names(EducationStatisticsProperFormat)[names(EducationStatisticsProperFormat) == "V39"] <- "2014 [YR2014] - GDP per capita"
names(EducationStatisticsProperFormat)[names(EducationStatisticsProperFormat) == "V40"] <- "2014 [YR2014] - Primary completion rate, both sexes (%)"
names(EducationStatisticsProperFormat)[names(EducationStatisticsProperFormat) == "V41"] <- "2014 [YR2014] - Adjusted net enrolment rate, upper secondary, both sexes (%)"

#May want to remove the column that is Graduates from ISCED 6 programmes as not many countries have this filled in
names(EducationStatisticsProperFormat)[names(EducationStatisticsProperFormat) == "V42"] <- "2014 [YR2014] - Graduates from ISCED 6 programmes in tertiary education, both sexes"
names(EducationStatisticsProperFormat)[names(EducationStatisticsProperFormat) == "V43"] <- "2014 [YR2014] - Population"
names(EducationStatisticsProperFormat)[names(EducationStatisticsProperFormat) == "V44"] <- "2014 [YR2014] - Graduates from tertiary education, both sexes"

#INFORMATION FOR 2015
#Honestly these are so long we really should change them
names(EducationStatisticsProperFormat)[names(EducationStatisticsProperFormat) == "V45"] <- "2015 [YR2015] - GDP per capita"
names(EducationStatisticsProperFormat)[names(EducationStatisticsProperFormat) == "V46"] <- "2015 [YR2015] - Primary completion rate, both sexes (%)"
names(EducationStatisticsProperFormat)[names(EducationStatisticsProperFormat) == "V47"] <- "2015 [YR2015] - Adjusted net enrolment rate, upper secondary, both sexes (%)"

#May want to remove the column that is Graduates from ISCED 6 programmes as not many countries have this filled in
names(EducationStatisticsProperFormat)[names(EducationStatisticsProperFormat) == "V48"] <- "2015 [YR2015] - Graduates from ISCED 6 programmes in tertiary education, both sexes"
names(EducationStatisticsProperFormat)[names(EducationStatisticsProperFormat) == "V49"] <- "2015 [YR2015] - Population"
names(EducationStatisticsProperFormat)[names(EducationStatisticsProperFormat) == "V50"] <- "2015 [YR2015] - Graduates from tertiary education, both sexes"

#INFORMATION FOR 2016
#Honestly these are so long we really should change them
names(EducationStatisticsProperFormat)[names(EducationStatisticsProperFormat) == "V51"] <- "2016 [YR2016] - GDP per capita"
names(EducationStatisticsProperFormat)[names(EducationStatisticsProperFormat) == "V52"] <- "2016 [YR2016] - Primary completion rate, both sexes (%)"
names(EducationStatisticsProperFormat)[names(EducationStatisticsProperFormat) == "V53"] <- "2016 [YR2016] - Adjusted net enrolment rate, upper secondary, both sexes (%)"

#May want to remove the column that is Graduates from ISCED 6 programmes as not many countries have this filled in
names(EducationStatisticsProperFormat)[names(EducationStatisticsProperFormat) == "V54"] <- "2016 [YR2016] - Graduates from ISCED 6 programmes in tertiary education, both sexes"
names(EducationStatisticsProperFormat)[names(EducationStatisticsProperFormat) == "V55"] <- "2016 [YR2016] - Population"
names(EducationStatisticsProperFormat)[names(EducationStatisticsProperFormat) == "V56"] <- "2016 [YR2016] - Graduates from tertiary education, both sexes"

#INFORMATION FOR 2017
#Honestly these are so long we really should change them
names(EducationStatisticsProperFormat)[names(EducationStatisticsProperFormat) == "V57"] <- "2017 [YR2017] - GDP per capita"
names(EducationStatisticsProperFormat)[names(EducationStatisticsProperFormat) == "V58"] <- "2017 [YR2017] - Primary completion rate, both sexes (%)"
names(EducationStatisticsProperFormat)[names(EducationStatisticsProperFormat) == "V59"] <- "2017 [YR2017] - Adjusted net enrolment rate, upper secondary, both sexes (%)"

#May want to remove the column that is Graduates from ISCED 6 programmes as not many countries have this filled in
names(EducationStatisticsProperFormat)[names(EducationStatisticsProperFormat) == "V60"] <- "2017 [YR2017] - Graduates from ISCED 6 programmes in tertiary education, both sexes"
names(EducationStatisticsProperFormat)[names(EducationStatisticsProperFormat) == "V61"] <- "2017 [YR2017] - Population"
names(EducationStatisticsProperFormat)[names(EducationStatisticsProperFormat) == "V62"] <- "2017 [YR2017] - Graduates from tertiary education, both sexes"

#INFORMATION FOR 2018
#Honestly these are so long we really should change them
names(EducationStatisticsProperFormat)[names(EducationStatisticsProperFormat) == "V63"] <- "2018 [YR2018] - GDP per capita"
names(EducationStatisticsProperFormat)[names(EducationStatisticsProperFormat) == "V64"] <- "2018 [YR2018] - Primary completion rate, both sexes (%)"
names(EducationStatisticsProperFormat)[names(EducationStatisticsProperFormat) == "V65"] <- "2018 [YR2018] - Adjusted net enrolment rate, upper secondary, both sexes (%)"

#May want to remove the column that is Graduates from ISCED 6 programmes as not many countries have this filled in
names(EducationStatisticsProperFormat)[names(EducationStatisticsProperFormat) == "V66"] <- "2018 [YR2018] - Graduates from ISCED 6 programmes in tertiary education, both sexes"
names(EducationStatisticsProperFormat)[names(EducationStatisticsProperFormat) == "V67"] <- "2018 [YR2018] - Population"
names(EducationStatisticsProperFormat)[names(EducationStatisticsProperFormat) == "V68"] <- "2018 [YR2018] - Graduates from tertiary education, both sexes"

#have to do type conversion of field as it is of type integer before cleaning
#This is where we start cleaning the set by getting rid of misleading values


#EducationStatisticsProperFormat$`2008 [YR2008] - GDP per capita` <-as.numeric(EducationStatisticsProperFormat$`2008 [YR2008] - GDP per capita`)
#This line is making the columnds replace with a number but havent found out what that number means yet?

#------------------------------------------------------------------------------------------------------------------
#------------------------------------------------------------------------------------------------------------------
EducationStatisticsProperFormat$`2008 [YR2008] - GDP per capita` <- ifelse(test = EducationStatisticsProperFormat$`2008 [YR2008] - GDP per capita` == "..", yes = NA, no = EducationStatisticsProperFormat$`2008 [YR2008] - GDP per capita`)
EducationStatisticsProperFormat$`2008 [YR2008] - Primary completion rate, both sexes (%)` <- ifelse(test = EducationStatisticsProperFormat$`2008 [YR2008] - Primary completion rate, both sexes (%)` == "..", yes = NA, no = EducationStatisticsProperFormat$`2008 [YR2008] - Primary completion rate, both sexes (%)`)
EducationStatisticsProperFormat$`2008 [YR2008] - Adjusted net enrolment rate, upper secondary, both sexes (%)` <- ifelse(test = EducationStatisticsProperFormat$`2008 [YR2008] - Adjusted net enrolment rate, upper secondary, both sexes (%)` == "..",yes = NA, no = EducationStatisticsProperFormat$`2008 [YR2008] - Adjusted net enrolment rate, upper secondary, both sexes (%)`)
EducationStatisticsProperFormat$`2008 [YR2008] - Graduates from ISCED 6 programmes in tertiary education, both sexes` <- ifelse(test = EducationStatisticsProperFormat$`2008 [YR2008] - Graduates from ISCED 6 programmes in tertiary education, both sexes` == "..", yes = NA, no = EducationStatisticsProperFormat$`2008 [YR2008] - Graduates from ISCED 6 programmes in tertiary education, both sexes`)
EducationStatisticsProperFormat$`2008 [YR2008] - Population` <- ifelse(test = EducationStatisticsProperFormat$`2008 [YR2008] - Population` == "..", yes = NA, no = EducationStatisticsProperFormat$`2008 [YR2008] - Population` )
EducationStatisticsProperFormat$`2008 [YR2008] - Graduates from tertiary education, both sexes` <- ifelse(test = EducationStatisticsProperFormat$`2008 [YR2008] - Graduates from tertiary education, both sexes` == "..", yes = NA, no = EducationStatisticsProperFormat$`2008 [YR2008] - Graduates from tertiary education, both sexes`)

EducationStatisticsProperFormat$`2009 [YR2009] - GDP per capita` <- ifelse(test = EducationStatisticsProperFormat$`2009 [YR2009] - GDP per capita` == "..", yes = NA, no = EducationStatisticsProperFormat$`2009 [YR2009] - GDP per capita`)
EducationStatisticsProperFormat$`2009 [YR2009] - Primary completion rate, both sexes (%)` <- ifelse(test = EducationStatisticsProperFormat$`2009 [YR2009] - Primary completion rate, both sexes (%)` == "..", yes = NA, no = EducationStatisticsProperFormat$`2009 [YR2009] - Primary completion rate, both sexes (%)`)
EducationStatisticsProperFormat$`2009 [YR2009] - Adjusted net enrolment rate, upper secondary, both sexes (%)` <- ifelse(test = EducationStatisticsProperFormat$`2009 [YR2009] - Adjusted net enrolment rate, upper secondary, both sexes (%)` == "..",yes = NA, no = EducationStatisticsProperFormat$`2009 [YR2009] - Adjusted net enrolment rate, upper secondary, both sexes (%)`)
EducationStatisticsProperFormat$`2009 [YR2009] - Graduates from ISCED 6 programmes in tertiary education, both sexes` <- ifelse(test = EducationStatisticsProperFormat$`2009 [YR2009] - Graduates from ISCED 6 programmes in tertiary education, both sexes` == "..", yes = NA, no = EducationStatisticsProperFormat$`2009 [YR2009] - Graduates from ISCED 6 programmes in tertiary education, both sexes`)
EducationStatisticsProperFormat$`2009 [YR2009] - Population` <- ifelse(test = EducationStatisticsProperFormat$`2009 [YR2009] - Population` == "..", yes = NA, no = EducationStatisticsProperFormat$`2009 [YR2009] - Population` )
EducationStatisticsProperFormat$`2009 [YR2009] - Graduates from tertiary education, both sexes` <- ifelse(test = EducationStatisticsProperFormat$`2009 [YR2009] - Graduates from tertiary education, both sexes` == "..", yes = NA, no = EducationStatisticsProperFormat$`2009 [YR2009] - Graduates from tertiary education, both sexes`)

EducationStatisticsProperFormat$`2010 [YR2010] - GDP per capita` <- ifelse(test = EducationStatisticsProperFormat$`2010 [YR2010] - GDP per capita` == "..", yes = NA, no = EducationStatisticsProperFormat$`2010 [YR2010] - GDP per capita`)
EducationStatisticsProperFormat$`2010 [YR2010] - Primary completion rate, both sexes (%)` <- ifelse(test = EducationStatisticsProperFormat$`2010 [YR2010] - Primary completion rate, both sexes (%)` == "..", yes = NA, no = EducationStatisticsProperFormat$`2010 [YR2010] - Primary completion rate, both sexes (%)`)
EducationStatisticsProperFormat$`2010 [YR2010] - Adjusted net enrolment rate, upper secondary, both sexes (%)` <- ifelse(test = EducationStatisticsProperFormat$`2010 [YR2010] - Adjusted net enrolment rate, upper secondary, both sexes (%)` == "..",yes = NA, no = EducationStatisticsProperFormat$`2010 [YR2010] - Adjusted net enrolment rate, upper secondary, both sexes (%)`)
EducationStatisticsProperFormat$`2010 [YR2010] - Graduates from ISCED 6 programmes in tertiary education, both sexes` <- ifelse(test = EducationStatisticsProperFormat$`2010 [YR2010] - Graduates from ISCED 6 programmes in tertiary education, both sexes` == "..", yes = NA, no = EducationStatisticsProperFormat$`2010 [YR2010] - Graduates from ISCED 6 programmes in tertiary education, both sexes`)
EducationStatisticsProperFormat$`2010 [YR2010] - Population` <- ifelse(test = EducationStatisticsProperFormat$`2010 [YR2010] - Population` == "..", yes = NA, no = EducationStatisticsProperFormat$`2010 [YR2010] - Population` )
EducationStatisticsProperFormat$`2010 [YR2010] - Graduates from tertiary education, both sexes` <- ifelse(test = EducationStatisticsProperFormat$`2010 [YR2010] - Graduates from tertiary education, both sexes` == "..", yes = NA, no = EducationStatisticsProperFormat$`2010 [YR2010] - Graduates from tertiary education, both sexes`)

EducationStatisticsProperFormat$`2011 [YR2011] - GDP per capita` <- ifelse(test = EducationStatisticsProperFormat$`2011 [YR2011] - GDP per capita` == "..", yes = NA, no = EducationStatisticsProperFormat$`2011 [YR2011] - GDP per capita`)
EducationStatisticsProperFormat$`2011 [YR2011] - Primary completion rate, both sexes (%)` <- ifelse(test = EducationStatisticsProperFormat$`2011 [YR2011] - Primary completion rate, both sexes (%)` == "..", yes = NA, no = EducationStatisticsProperFormat$`2011 [YR2011] - Primary completion rate, both sexes (%)`)
EducationStatisticsProperFormat$`2011 [YR2011] - Adjusted net enrolment rate, upper secondary, both sexes (%)` <- ifelse(test = EducationStatisticsProperFormat$`2011 [YR2011] - Adjusted net enrolment rate, upper secondary, both sexes (%)` == "..",yes = NA, no = EducationStatisticsProperFormat$`2011 [YR2011] - Adjusted net enrolment rate, upper secondary, both sexes (%)`)
EducationStatisticsProperFormat$`2011 [YR2011] - Graduates from ISCED 6 programmes in tertiary education, both sexes` <- ifelse(test = EducationStatisticsProperFormat$`2011 [YR2011] - Graduates from ISCED 6 programmes in tertiary education, both sexes` == "..", yes = NA, no = EducationStatisticsProperFormat$`2011 [YR2011] - Graduates from ISCED 6 programmes in tertiary education, both sexes`)
EducationStatisticsProperFormat$`2011 [YR2011] - Population` <- ifelse(test = EducationStatisticsProperFormat$`2011 [YR2011] - Population` == "..", yes = NA, no = EducationStatisticsProperFormat$`2011 [YR2011] - Population` )
EducationStatisticsProperFormat$`2011 [YR2011] - Graduates from tertiary education, both sexes` <- ifelse(test = EducationStatisticsProperFormat$`2011 [YR2011] - Graduates from tertiary education, both sexes` == "..", yes = NA, no = EducationStatisticsProperFormat$`2011 [YR2011] - Graduates from tertiary education, both sexes`)

EducationStatisticsProperFormat$`2012 [YR2012] - GDP per capita` <- ifelse(test = EducationStatisticsProperFormat$`2012 [YR2012] - GDP per capita` == "..", yes = NA, no = EducationStatisticsProperFormat$`2012 [YR2012] - GDP per capita`)
EducationStatisticsProperFormat$`2012 [YR2012] - Primary completion rate, both sexes (%)` <- ifelse(test = EducationStatisticsProperFormat$`2012 [YR2012] - Primary completion rate, both sexes (%)` == "..", yes = NA, no = EducationStatisticsProperFormat$`2012 [YR2012] - Primary completion rate, both sexes (%)`)
EducationStatisticsProperFormat$`2012 [YR2012] - Adjusted net enrolment rate, upper secondary, both sexes (%)` <- ifelse(test = EducationStatisticsProperFormat$`2012 [YR2012] - Adjusted net enrolment rate, upper secondary, both sexes (%)` == "..",yes = NA, no = EducationStatisticsProperFormat$`2012 [YR2012] - Adjusted net enrolment rate, upper secondary, both sexes (%)`)
EducationStatisticsProperFormat$`2012 [YR2012] - Graduates from ISCED 6 programmes in tertiary education, both sexes` <- ifelse(test = EducationStatisticsProperFormat$`2012 [YR2012] - Graduates from ISCED 6 programmes in tertiary education, both sexes` == "..", yes = NA, no = EducationStatisticsProperFormat$`2012 [YR2012] - Graduates from ISCED 6 programmes in tertiary education, both sexes`)
EducationStatisticsProperFormat$`2012 [YR2012] - Population` <- ifelse(test = EducationStatisticsProperFormat$`2012 [YR2012] - Population` == "..", yes = NA, no = EducationStatisticsProperFormat$`2012 [YR2012] - Population` )
EducationStatisticsProperFormat$`2012 [YR2012] - Graduates from tertiary education, both sexes` <- ifelse(test = EducationStatisticsProperFormat$`2012 [YR2012] - Graduates from tertiary education, both sexes` == "..", yes = NA, no = EducationStatisticsProperFormat$`2012 [YR2012] - Graduates from tertiary education, both sexes`)

EducationStatisticsProperFormat$`2013 [YR2013] - GDP per capita` <- ifelse(test = EducationStatisticsProperFormat$`2013 [YR2013] - GDP per capita` == "..", yes = NA, no = EducationStatisticsProperFormat$`2013 [YR2013] - GDP per capita`)
EducationStatisticsProperFormat$`2013 [YR2013] - Primary completion rate, both sexes (%)` <- ifelse(test = EducationStatisticsProperFormat$`2013 [YR2013] - Primary completion rate, both sexes (%)` == "..", yes = NA, no = EducationStatisticsProperFormat$`2013 [YR2013] - Primary completion rate, both sexes (%)`)
EducationStatisticsProperFormat$`2013 [YR2013] - Adjusted net enrolment rate, upper secondary, both sexes (%)` <- ifelse(test = EducationStatisticsProperFormat$`2013 [YR2013] - Adjusted net enrolment rate, upper secondary, both sexes (%)` == "..",yes = NA, no = EducationStatisticsProperFormat$`2013 [YR2013] - Adjusted net enrolment rate, upper secondary, both sexes (%)`)
EducationStatisticsProperFormat$`2013 [YR2013] - Graduates from ISCED 6 programmes in tertiary education, both sexes` <- ifelse(test = EducationStatisticsProperFormat$`2013 [YR2013] - Graduates from ISCED 6 programmes in tertiary education, both sexes` == "..", yes = NA, no = EducationStatisticsProperFormat$`2013 [YR2013] - Graduates from ISCED 6 programmes in tertiary education, both sexes`)
EducationStatisticsProperFormat$`2013 [YR2013] - Population` <- ifelse(test = EducationStatisticsProperFormat$`2013 [YR2013] - Population` == "..", yes = NA, no = EducationStatisticsProperFormat$`2013 [YR2013] - Population` )
EducationStatisticsProperFormat$`2013 [YR2013] - Graduates from tertiary education, both sexes` <- ifelse(test = EducationStatisticsProperFormat$`2013 [YR2013] - Graduates from tertiary education, both sexes` == "..", yes = NA, no = EducationStatisticsProperFormat$`2013 [YR2013] - Graduates from tertiary education, both sexes`)

EducationStatisticsProperFormat$`2014 [YR2014] - GDP per capita` <- ifelse(test = EducationStatisticsProperFormat$`2014 [YR2014] - GDP per capita` == "..", yes = NA, no = EducationStatisticsProperFormat$`2014 [YR2014] - GDP per capita`)
EducationStatisticsProperFormat$`2014 [YR2014] - Primary completion rate, both sexes (%)` <- ifelse(test = EducationStatisticsProperFormat$`2014 [YR2014] - Primary completion rate, both sexes (%)` == "..", yes = NA, no = EducationStatisticsProperFormat$`2014 [YR2014] - Primary completion rate, both sexes (%)`)
EducationStatisticsProperFormat$`2014 [YR2014] - Adjusted net enrolment rate, upper secondary, both sexes (%)` <- ifelse(test = EducationStatisticsProperFormat$`2014 [YR2014] - Adjusted net enrolment rate, upper secondary, both sexes (%)` == "..",yes = NA, no = EducationStatisticsProperFormat$`2014 [YR2014] - Adjusted net enrolment rate, upper secondary, both sexes (%)`)
EducationStatisticsProperFormat$`2014 [YR2014] - Graduates from ISCED 6 programmes in tertiary education, both sexes` <- ifelse(test = EducationStatisticsProperFormat$`2014 [YR2014] - Graduates from ISCED 6 programmes in tertiary education, both sexes` == "..", yes = NA, no = EducationStatisticsProperFormat$`2014 [YR2014] - Graduates from ISCED 6 programmes in tertiary education, both sexes`)
EducationStatisticsProperFormat$`2014 [YR2014] - Population` <- ifelse(test = EducationStatisticsProperFormat$`2014 [YR2014] - Population` == "..", yes = NA, no = EducationStatisticsProperFormat$`2014 [YR2014] - Population` )
EducationStatisticsProperFormat$`2014 [YR2014] - Graduates from tertiary education, both sexes` <- ifelse(test = EducationStatisticsProperFormat$`2014 [YR2014] - Graduates from tertiary education, both sexes` == "..", yes = NA, no = EducationStatisticsProperFormat$`2014 [YR2014] - Graduates from tertiary education, both sexes`)

EducationStatisticsProperFormat$`2015 [YR2015] - GDP per capita` <- ifelse(test = EducationStatisticsProperFormat$`2015 [YR2015] - GDP per capita` == "..", yes = NA, no = EducationStatisticsProperFormat$`2015 [YR2015] - GDP per capita`)
EducationStatisticsProperFormat$`2015 [YR2015] - Primary completion rate, both sexes (%)` <- ifelse(test = EducationStatisticsProperFormat$`2015 [YR2015] - Primary completion rate, both sexes (%)` == "..", yes = NA, no = EducationStatisticsProperFormat$`2015 [YR2015] - Primary completion rate, both sexes (%)`)
EducationStatisticsProperFormat$`2015 [YR2015] - Adjusted net enrolment rate, upper secondary, both sexes (%)` <- ifelse(test = EducationStatisticsProperFormat$`2015 [YR2015] - Adjusted net enrolment rate, upper secondary, both sexes (%)` == "..",yes = NA, no = EducationStatisticsProperFormat$`2015 [YR2015] - Adjusted net enrolment rate, upper secondary, both sexes (%)`)
EducationStatisticsProperFormat$`2015 [YR2015] - Graduates from ISCED 6 programmes in tertiary education, both sexes` <- ifelse(test = EducationStatisticsProperFormat$`2015 [YR2015] - Graduates from ISCED 6 programmes in tertiary education, both sexes` == "..", yes = NA, no = EducationStatisticsProperFormat$`2015 [YR2015] - Graduates from ISCED 6 programmes in tertiary education, both sexes`)
EducationStatisticsProperFormat$`2015 [YR2015] - Population` <- ifelse(test = EducationStatisticsProperFormat$`2015 [YR2015] - Population` == "..", yes = NA, no = EducationStatisticsProperFormat$`2015 [YR2015] - Population` )
EducationStatisticsProperFormat$`2015 [YR2015] - Graduates from tertiary education, both sexes` <- ifelse(test = EducationStatisticsProperFormat$`2015 [YR2015] - Graduates from tertiary education, both sexes` == "..", yes = NA, no = EducationStatisticsProperFormat$`2015 [YR2015] - Graduates from tertiary education, both sexes`)

EducationStatisticsProperFormat$`2016 [YR2016] - GDP per capita` <- ifelse(test = EducationStatisticsProperFormat$`2016 [YR2016] - GDP per capita` == "..", yes = NA, no = EducationStatisticsProperFormat$`2016 [YR2016] - GDP per capita`)
EducationStatisticsProperFormat$`2016 [YR2016] - Primary completion rate, both sexes (%)` <- ifelse(test = EducationStatisticsProperFormat$`2016 [YR2016] - Primary completion rate, both sexes (%)` == "..", yes = NA, no = EducationStatisticsProperFormat$`2016 [YR2016] - Primary completion rate, both sexes (%)`)
EducationStatisticsProperFormat$`2016 [YR2016] - Adjusted net enrolment rate, upper secondary, both sexes (%)` <- ifelse(test = EducationStatisticsProperFormat$`2016 [YR2016] - Adjusted net enrolment rate, upper secondary, both sexes (%)` == "..",yes = NA, no = EducationStatisticsProperFormat$`2016 [YR2016] - Adjusted net enrolment rate, upper secondary, both sexes (%)`)
EducationStatisticsProperFormat$`2016 [YR2016] - Graduates from ISCED 6 programmes in tertiary education, both sexes` <- ifelse(test = EducationStatisticsProperFormat$`2016 [YR2016] - Graduates from ISCED 6 programmes in tertiary education, both sexes` == "..", yes = NA, no = EducationStatisticsProperFormat$`2016 [YR2016] - Graduates from ISCED 6 programmes in tertiary education, both sexes`)
EducationStatisticsProperFormat$`2016 [YR2016] - Population` <- ifelse(test = EducationStatisticsProperFormat$`2016 [YR2016] - Population` == "..", yes = NA, no = EducationStatisticsProperFormat$`2016 [YR2016] - Population` )
EducationStatisticsProperFormat$`2016 [YR2016] - Graduates from tertiary education, both sexes` <- ifelse(test = EducationStatisticsProperFormat$`2016 [YR2016] - Graduates from tertiary education, both sexes` == "..", yes = NA, no = EducationStatisticsProperFormat$`2016 [YR2016] - Graduates from tertiary education, both sexes`)

EducationStatisticsProperFormat$`2017 [YR2017] - GDP per capita` <- ifelse(test = EducationStatisticsProperFormat$`2017 [YR2017] - GDP per capita` == "..", yes = NA, no = EducationStatisticsProperFormat$`2017 [YR2017] - GDP per capita`)
EducationStatisticsProperFormat$`2017 [YR2017] - Primary completion rate, both sexes (%)` <- ifelse(test = EducationStatisticsProperFormat$`2017 [YR2017] - Primary completion rate, both sexes (%)` == "..", yes = NA, no = EducationStatisticsProperFormat$`2017 [YR2017] - Primary completion rate, both sexes (%)`)
EducationStatisticsProperFormat$`2017 [YR2017] - Adjusted net enrolment rate, upper secondary, both sexes (%)` <- ifelse(test = EducationStatisticsProperFormat$`2017 [YR2017] - Adjusted net enrolment rate, upper secondary, both sexes (%)` == "..",yes = NA, no = EducationStatisticsProperFormat$`2017 [YR2017] - Adjusted net enrolment rate, upper secondary, both sexes (%)`)
EducationStatisticsProperFormat$`2017 [YR2017] - Graduates from ISCED 6 programmes in tertiary education, both sexes` <- ifelse(test = EducationStatisticsProperFormat$`2017 [YR2017] - Graduates from ISCED 6 programmes in tertiary education, both sexes` == "..", yes = NA, no = EducationStatisticsProperFormat$`2017 [YR2017] - Graduates from ISCED 6 programmes in tertiary education, both sexes`)
EducationStatisticsProperFormat$`2017 [YR2017] - Population` <- ifelse(test = EducationStatisticsProperFormat$`2017 [YR2017] - Population` == "..", yes = NA, no = EducationStatisticsProperFormat$`2017 [YR2017] - Population` )
EducationStatisticsProperFormat$`2017 [YR2017] - Graduates from tertiary education, both sexes` <- ifelse(test = EducationStatisticsProperFormat$`2017 [YR2017] - Graduates from tertiary education, both sexes` == "..", yes = NA, no = EducationStatisticsProperFormat$`2017 [YR2017] - Graduates from tertiary education, both sexes`)

EducationStatisticsProperFormat$`2018 [YR2018] - GDP per capita` <- ifelse(test = EducationStatisticsProperFormat$`2018 [YR2018] - GDP per capita` == "..", yes = NA, no = EducationStatisticsProperFormat$`2018 [YR2018] - GDP per capita`)
EducationStatisticsProperFormat$`2018 [YR2018] - Primary completion rate, both sexes (%)` <- ifelse(test = EducationStatisticsProperFormat$`2018 [YR2018] - Primary completion rate, both sexes (%)` == "..", yes = NA, no = EducationStatisticsProperFormat$`2018 [YR2018] - Primary completion rate, both sexes (%)`)
EducationStatisticsProperFormat$`2018 [YR2018] - Adjusted net enrolment rate, upper secondary, both sexes (%)` <- ifelse(test = EducationStatisticsProperFormat$`2018 [YR2018] - Adjusted net enrolment rate, upper secondary, both sexes (%)` == "..",yes = NA, no = EducationStatisticsProperFormat$`2018 [YR2018] - Adjusted net enrolment rate, upper secondary, both sexes (%)`)
EducationStatisticsProperFormat$`2018 [YR2018] - Graduates from ISCED 6 programmes in tertiary education, both sexes` <- ifelse(test = EducationStatisticsProperFormat$`2018 [YR2018] - Graduates from ISCED 6 programmes in tertiary education, both sexes` == "..", yes = NA, no = EducationStatisticsProperFormat$`2018 [YR2018] - Graduates from ISCED 6 programmes in tertiary education, both sexes`)
EducationStatisticsProperFormat$`2018 [YR2018] - Population` <- ifelse(test = EducationStatisticsProperFormat$`2018 [YR2018] - Population` == "..", yes = NA, no = EducationStatisticsProperFormat$`2018 [YR2018] - Population` )
EducationStatisticsProperFormat$`2018 [YR2018] - Graduates from tertiary education, both sexes` <- ifelse(test = EducationStatisticsProperFormat$`2018 [YR2018] - Graduates from tertiary education, both sexes` == "..", yes = NA, no = EducationStatisticsProperFormat$`2018 [YR2018] - Graduates from tertiary education, both sexes`)



#There may be some dependecies that need to also be installed for tidyverse. Simply follow the error messages that are displayed in console

library(tidyverse)

#Must rename columns of EduStats from 2008.."some statistic".. to "some statistic".
#May have to rechange the column names BEFORE the merge of dataframes.

EducationStatistics <- as_tibble(EducationStatisticsProperFormat)
EduStats <- EducationStatistics %>% select(`2008 [YR2008] - GDP per capita`: `2008 [YR2008] - Graduates from tertiary education, both sexes`)


#now create new data frames to temporarily store the columns so that we may merge them to the new dataframe.
EduStats1 <- EducationStatistics %>% select(`2009 [YR2009] - GDP per capita`: `2009 [YR2009] - Graduates from tertiary education, both sexes`)
EduStats2 <- EducationStatistics %>% select(`2010 [YR2010] - GDP per capita`: `2010 [YR2010] - Graduates from tertiary education, both sexes`)
EduStats3 <- EducationStatistics %>% select(`2011 [YR2011] - GDP per capita`: `2011 [YR2011] - Graduates from tertiary education, both sexes`)
EduStats4 <- EducationStatistics %>% select(`2012 [YR2012] - GDP per capita`: `2012 [YR2012] - Graduates from tertiary education, both sexes`)
EduStats5 <- EducationStatistics %>% select(`2013 [YR2013] - GDP per capita`: `2013 [YR2013] - Graduates from tertiary education, both sexes`)
EduStats6 <- EducationStatistics %>% select(`2014 [YR2014] - GDP per capita`: `2014 [YR2014] - Graduates from tertiary education, both sexes`)
EduStats7 <- EducationStatistics %>% select(`2015 [YR2015] - GDP per capita`: `2015 [YR2015] - Graduates from tertiary education, both sexes`)
EduStats8 <- EducationStatistics %>% select(`2016 [YR2016] - GDP per capita`: `2016 [YR2016] - Graduates from tertiary education, both sexes`)
EduStats9 <- EducationStatistics %>% select(`2017 [YR2017] - GDP per capita`: `2017 [YR2017] - Graduates from tertiary education, both sexes`)
EduStats10 <- EducationStatistics %>% select(`2018 [YR2018] - GDP per capita`: `2018 [YR2018] - Graduates from tertiary education, both sexes`)
#These are the EduStats that are rewritten. We can merge these into the "original" EduStats. 
#NAME STANDARDIZATION
names(EduStats)[names(EduStats) == "2008 [YR2008] - GDP per capita"] <- "GDP per capita"
names(EduStats)[names(EduStats) == "2008 [YR2008] - Primary completion rate, both sexes (%)"] <- "Primary completion rate, both sexes (%)"
names(EduStats)[names(EduStats) == "2008 [YR2008] - Adjusted net enrolment rate, upper secondary, both sexes (%)"] <- "Adjusted net enrolment rate, upper secondary, both sexes (%)"
names(EduStats)[names(EduStats) == "2008 [YR2008] - Graduates from ISCED 6 programmes in tertiary education, both sexes"] <- "Graduates from ISCED 6 programmes in tertiary education, both sexes"
names(EduStats)[names(EduStats) == "2008 [YR2008] - Population"] <- "Population"
names(EduStats)[names(EduStats) == "2008 [YR2008] - Graduates from tertiary education, both sexes"] <- "Graduates from tertiary education, both sexes"

names(EduStats1)[names(EduStats1) == "2009 [YR2009] - GDP per capita"] <- "GDP per capita"
names(EduStats1)[names(EduStats1) == "2009 [YR2009] - Primary completion rate, both sexes (%)"] <- "Primary completion rate, both sexes (%)"
names(EduStats1)[names(EduStats1) == "2009 [YR2009] - Adjusted net enrolment rate, upper secondary, both sexes (%)"] <- "Adjusted net enrolment rate, upper secondary, both sexes (%)"
names(EduStats1)[names(EduStats1) == "2009 [YR2009] - Graduates from ISCED 6 programmes in tertiary education, both sexes"] <- "Graduates from ISCED 6 programmes in tertiary education, both sexes"
names(EduStats1)[names(EduStats1) == "2009 [YR2009] - Population"] <- "Population"
names(EduStats1)[names(EduStats1) == "2009 [YR2009] - Graduates from tertiary education, both sexes"] <- "Graduates from tertiary education, both sexes"

names(EduStats2)[names(EduStats2) == "2010 [YR2010] - GDP per capita"] <- "GDP per capita"
names(EduStats2)[names(EduStats2) == "2010 [YR2010] - Primary completion rate, both sexes (%)"] <- "Primary completion rate, both sexes (%)"
names(EduStats2)[names(EduStats2) == "2010 [YR2010] - Adjusted net enrolment rate, upper secondary, both sexes (%)"] <- "Adjusted net enrolment rate, upper secondary, both sexes (%)"
names(EduStats2)[names(EduStats2) == "2010 [YR2010] - Graduates from ISCED 6 programmes in tertiary education, both sexes"] <- "Graduates from ISCED 6 programmes in tertiary education, both sexes"
names(EduStats2)[names(EduStats2) == "2010 [YR2010] - Population"] <- "Population"
names(EduStats2)[names(EduStats2) == "2010 [YR2010] - Graduates from tertiary education, both sexes"] <- "Graduates from tertiary education, both sexes"

names(EduStats3)[names(EduStats3) == "2011 [YR2011] - GDP per capita"] <- "GDP per capita"
names(EduStats3)[names(EduStats3) == "2011 [YR2011] - Primary completion rate, both sexes (%)"] <- "Primary completion rate, both sexes (%)"
names(EduStats3)[names(EduStats3) == "2011 [YR2011] - Adjusted net enrolment rate, upper secondary, both sexes (%)"] <- "Adjusted net enrolment rate, upper secondary, both sexes (%)"
names(EduStats3)[names(EduStats3) == "2011 [YR2011] - Graduates from ISCED 6 programmes in tertiary education, both sexes"] <- "Graduates from ISCED 6 programmes in tertiary education, both sexes"
names(EduStats3)[names(EduStats3) == "2011 [YR2011] - Population"] <- "Population"
names(EduStats3)[names(EduStats3) == "2011 [YR2011] - Graduates from tertiary education, both sexes"] <- "Graduates from tertiary education, both sexes"

names(EduStats4)[names(EduStats4) == "2012 [YR2012] - GDP per capita"] <- "GDP per capita"
names(EduStats4)[names(EduStats4) == "2012 [YR2012] - Primary completion rate, both sexes (%)"] <- "Primary completion rate, both sexes (%)"
names(EduStats4)[names(EduStats4) == "2012 [YR2012] - Adjusted net enrolment rate, upper secondary, both sexes (%)"] <- "Adjusted net enrolment rate, upper secondary, both sexes (%)"
names(EduStats4)[names(EduStats4) == "2012 [YR2012] - Graduates from ISCED 6 programmes in tertiary education, both sexes"] <- "Graduates from ISCED 6 programmes in tertiary education, both sexes"
names(EduStats4)[names(EduStats4) == "2012 [YR2012] - Population"] <- "Population"
names(EduStats4)[names(EduStats4) == "2012 [YR2012] - Graduates from tertiary education, both sexes"] <- "Graduates from tertiary education, both sexes"

names(EduStats5)[names(EduStats5) == "2013 [YR2013] - GDP per capita"] <- "GDP per capita"
names(EduStats5)[names(EduStats5) == "2013 [YR2013] - Primary completion rate, both sexes (%)"] <- "Primary completion rate, both sexes (%)"
names(EduStats5)[names(EduStats5) == "2013 [YR2013] - Adjusted net enrolment rate, upper secondary, both sexes (%)"] <- "Adjusted net enrolment rate, upper secondary, both sexes (%)"
names(EduStats5)[names(EduStats5) == "2013 [YR2013] - Graduates from ISCED 6 programmes in tertiary education, both sexes"] <- "Graduates from ISCED 6 programmes in tertiary education, both sexes"
names(EduStats5)[names(EduStats5) == "2013 [YR2013] - Population"] <- "Population"
names(EduStats5)[names(EduStats5) == "2013 [YR2013] - Graduates from tertiary education, both sexes"] <- "Graduates from tertiary education, both sexes"

names(EduStats6)[names(EduStats6) == "2014 [YR2014] - GDP per capita"] <- "GDP per capita"
names(EduStats6)[names(EduStats6) == "2014 [YR2014] - Primary completion rate, both sexes (%)"] <- "Primary completion rate, both sexes (%)"
names(EduStats6)[names(EduStats6) == "2014 [YR2014] - Adjusted net enrolment rate, upper secondary, both sexes (%)"] <- "Adjusted net enrolment rate, upper secondary, both sexes (%)"
names(EduStats6)[names(EduStats6) == "2014 [YR2014] - Graduates from ISCED 6 programmes in tertiary education, both sexes"] <- "Graduates from ISCED 6 programmes in tertiary education, both sexes"
names(EduStats6)[names(EduStats6) == "2014 [YR2014] - Population"] <- "Population"
names(EduStats6)[names(EduStats6) == "2014 [YR2014] - Graduates from tertiary education, both sexes"] <- "Graduates from tertiary education, both sexes"

names(EduStats7)[names(EduStats7) == "2015 [YR2015] - GDP per capita"] <- "GDP per capita"
names(EduStats7)[names(EduStats7) == "2015 [YR2015] - Primary completion rate, both sexes (%)"] <- "Primary completion rate, both sexes (%)"
names(EduStats7)[names(EduStats7) == "2015 [YR2015] - Adjusted net enrolment rate, upper secondary, both sexes (%)"] <- "Adjusted net enrolment rate, upper secondary, both sexes (%)"
names(EduStats7)[names(EduStats7) == "2015 [YR2015] - Graduates from ISCED 6 programmes in tertiary education, both sexes"] <- "Graduates from ISCED 6 programmes in tertiary education, both sexes"
names(EduStats7)[names(EduStats7) == "2015 [YR2015] - Population"] <- "Population"
names(EduStats7)[names(EduStats7) == "2015 [YR2015] - Graduates from tertiary education, both sexes"] <- "Graduates from tertiary education, both sexes"

names(EduStats8)[names(EduStats8) == "2016 [YR2016] - GDP per capita"] <- "GDP per capita"
names(EduStats8)[names(EduStats8) == "2016 [YR2016] - Primary completion rate, both sexes (%)"] <- "Primary completion rate, both sexes (%)"
names(EduStats8)[names(EduStats8) == "2016 [YR2016] - Adjusted net enrolment rate, upper secondary, both sexes (%)"] <- "Adjusted net enrolment rate, upper secondary, both sexes (%)"
names(EduStats8)[names(EduStats8) == "2016 [YR2016] - Graduates from ISCED 6 programmes in tertiary education, both sexes"] <- "Graduates from ISCED 6 programmes in tertiary education, both sexes"
names(EduStats8)[names(EduStats8) == "2016 [YR2016] - Population"] <- "Population"
names(EduStats8)[names(EduStats8) == "2016 [YR2016] - Graduates from tertiary education, both sexes"] <- "Graduates from tertiary education, both sexes"

names(EduStats9)[names(EduStats9) == "2017 [YR2017] - GDP per capita"] <- "GDP per capita"
names(EduStats9)[names(EduStats9) == "2017 [YR2017] - Primary completion rate, both sexes (%)"] <- "Primary completion rate, both sexes (%)"
names(EduStats9)[names(EduStats9) == "2017 [YR2017] - Adjusted net enrolment rate, upper secondary, both sexes (%)"] <- "Adjusted net enrolment rate, upper secondary, both sexes (%)"
names(EduStats9)[names(EduStats9) == "2017 [YR2017] - Graduates from ISCED 6 programmes in tertiary education, both sexes"] <- "Graduates from ISCED 6 programmes in tertiary education, both sexes"
names(EduStats9)[names(EduStats9) == "2017 [YR2017] - Population"] <- "Population"
names(EduStats9)[names(EduStats9) == "2017 [YR2017] - Graduates from tertiary education, both sexes"] <- "Graduates from tertiary education, both sexes"

names(EduStats10)[names(EduStats10) == "2018 [YR2018] - GDP per capita"] <- "GDP per capita"
names(EduStats10)[names(EduStats10) == "2018 [YR2018] - Primary completion rate, both sexes (%)"] <- "Primary completion rate, both sexes (%)"
names(EduStats10)[names(EduStats10) == "2018 [YR2018] - Adjusted net enrolment rate, upper secondary, both sexes (%)"] <- "Adjusted net enrolment rate, upper secondary, both sexes (%)"
names(EduStats10)[names(EduStats10) == "2018 [YR2018] - Graduates from ISCED 6 programmes in tertiary education, both sexes"] <- "Graduates from ISCED 6 programmes in tertiary education, both sexes"
names(EduStats10)[names(EduStats10) == "2018 [YR2018] - Population"] <- "Population"
names(EduStats10)[names(EduStats10) == "2018 [YR2018] - Graduates from tertiary education, both sexes"] <- "Graduates from tertiary education, both sexes"



EduStats <- EduStats1 %>% add_row(EduStats)
EduStats <- EduStats2 %>% add_row(EduStats)
EduStats <- EduStats3 %>% add_row(EduStats)
EduStats <- EduStats4 %>% add_row(EduStats)
EduStats <- EduStats5 %>% add_row(EduStats)
EduStats <- EduStats6 %>% add_row(EduStats)
EduStats <- EduStats7 %>% add_row(EduStats)
EduStats <- EduStats8 %>% add_row(EduStats)
EduStats <- EduStats9 %>% add_row(EduStats)
EduStats <- EduStats10 %>% add_row(EduStats)

gCountries <- which(is.na(EduStats$`GDP per capita`)== TRUE)

EduStats<-EduStats[-gCountries,]

#Index for EduStats
n <- dim(EduStats)[1]
EduStats$Index <- c(1:n)

#Now we start the binning

#A way to see how we may want to bin GDP per capita
summary(as.numeric(EduStats$`GDP per capita`))

EduStats$`GDP per capita binned` <- cut(x = as.numeric(EduStats$`GDP per capita`), breaks = c(0,1915.8, 20396.3, 190000), right = FALSE, labels = c("Low", "Medium", "High"))
EduStats$Population_Binned <- cut(x = as.numeric(EduStats$Population), breaks = c(0,1193000,36250000,8594000000), right = FALSE, labels = c("Low", "Medium", "High"))
#Graphing information in EduStats to explore univariate and multivariate relationships
#We could re bin the populations as low medium and high as well

ggplot(EduStats, aes(`GDP per capita binned`)) + geom_bar()
ggplot(EduStats,aes(Population_Binned)) + geom_bar(aes(fill = `GDP per capita binned`))

  #The number of NA's are significant, may remove them from set, there are about 455 of them
#Need to make a graph with overlays

EduStats$`Primary completion rate, both sexes (%)`<-ifelse(as.numeric(EduStats$`Primary completion rate, both sexes (%)`) > 100, yes = 100, no = EduStats$`Primary completion rate, both sexes (%)`)


#transform(EduStats, Population = as.numeric(Population))




#CART


#Beginning Setup Phase
#Filling in these values is causing our models to overfit, may have to find a different metric to fill them in on
#or keep them as empty records
#x<-which(EduStats$Population_Binned == 'Low')
#y <- as.numeric(EduStats$`Primary completion rate, both sexes (%)`[x])
#EduStats$`Primary completion rate, both sexes (%)`[x] <- ifelse(is.na(EduStats$`Primary completion rate, both sexes (%)`[x]) == TRUE, yes = 86.89, no = EduStats$`Primary completion rate, both sexes (%)`[x])

#x<-which(EduStats$Population_Binned == 'Medium')
#y <- as.numeric(EduStats$`Primary completion rate, both sexes (%)`[x])
#EduStats$`Primary completion rate, both sexes (%)`[x] <- ifelse(is.na(EduStats$`Primary completion rate, both sexes (%)`[x]) == TRUE, yes = 80.68, no = EduStats$`Primary completion rate, both sexes (%)`[x])

#x<-which(EduStats$Population_Binned == 'High')
#y <- as.numeric(EduStats$`Primary completion rate, both sexes (%)`[x])
#EduStats$`Primary completion rate, both sexes (%)`[x] <- ifelse(is.na(EduStats$`Primary completion rate, both sexes (%)`[x]) == TRUE, yes = 87.04, no = EduStats$`Primary completion rate, both sexes (%)`[x])


#x<-which(EduStats$Population_Binned == 'Low')
#y <- as.numeric(EduStats$`Adjusted net enrolment rate, upper secondary, both sexes (%)`[x])
#EduStats$`Adjusted net enrolment rate, upper secondary, both sexes (%)`[x] <- ifelse(is.na(EduStats$`Adjusted net enrolment rate, upper secondary, both sexes (%)`[x]) == TRUE, yes = 30.687, no = EduStats$`Adjusted net enrolment rate, upper secondary, both sexes (%)`[x])

#x<-which(EduStats$Population_Binned == 'Medium')
#y <- as.numeric(EduStats$`Adjusted net enrolment rate, upper secondary, both sexes (%)`[x])
#EduStats$`Adjusted net enrolment rate, upper secondary, both sexes (%)`[x] <- ifelse(is.na(EduStats$`Adjusted net enrolment rate, upper secondary, both sexes (%)`[x]) == TRUE, yes = 24.314, no = EduStats$`Adjusted net enrolment rate, upper secondary, both sexes (%)`[x])

#x<-which(EduStats$Population_Binned == 'High')
#y <- as.numeric(EduStats$`Adjusted net enrolment rate, upper secondary, both sexes (%)`[x])
#EduStats$`Adjusted net enrolment rate, upper secondary, both sexes (%)`[x] <- ifelse(is.na(EduStats$`Adjusted net enrolment rate, upper secondary, both sexes (%)`[x]) == TRUE, yes = 42.880, no = EduStats$`Adjusted net enrolment rate, upper secondary, both sexes (%)`[x])

#x<-which(EduStats$Population_Binned == 'Low')
#y <- as.numeric(EduStats$`Graduates from ISCED 6 programmes in tertiary education, both sexes`[x])
#EduStats$`Graduates from ISCED 6 programmes in tertiary education, both sexes`[x] <- ifelse(is.na(EduStats$`Graduates from ISCED 6 programmes in tertiary education, both sexes`[x]) == TRUE, yes = 172, no = EduStats$`Graduates from ISCED 6 programmes in tertiary education, both sexes`[x])

#x<-which(EduStats$Population_Binned == 'Medium')
#y <- as.numeric(EduStats$`Graduates from ISCED 6 programmes in tertiary education, both sexes`[x])
#EduStats$`Graduates from ISCED 6 programmes in tertiary education, both sexes`[x] <- ifelse(is.na(EduStats$`Graduates from ISCED 6 programmes in tertiary education, both sexes`[x]) == TRUE, yes = 14200, no = EduStats$`Graduates from ISCED 6 programmes in tertiary education, both sexes`[x])

#x<-which(EduStats$Population_Binned == 'High')
#y <- as.numeric(EduStats$`Graduates from ISCED 6 programmes in tertiary education, both sexes`[x])
#EduStats$`Graduates from ISCED 6 programmes in tertiary education, both sexes`[x] <- ifelse(is.na(EduStats$`Graduates from ISCED 6 programmes in tertiary education, both sexes`[x]) == TRUE, yes = 178397, no = EduStats$`Graduates from ISCED 6 programmes in tertiary education, both sexes`[x])

#x<-which(EduStats$Population_Binned == 'Low')
#y <- as.numeric(EduStats$`Graduates from tertiary education, both sexes`[x])
#EduStats$`Graduates from tertiary education, both sexes`[x] <- ifelse(is.na(EduStats$`Graduates from tertiary education, both sexes`[x]) == TRUE, yes = 280, no = EduStats$`Graduates from tertiary education, both sexes`[x])

#x<-which(EduStats$Population_Binned == 'Medium')
#y <- as.numeric(EduStats$`Graduates from tertiary education, both sexes`[x])
#EduStats$`Graduates from tertiary education, both sexes`[x] <- ifelse(is.na(EduStats$`Graduates from tertiary education, both sexes`[x]) == TRUE, yes = 21328, no = EduStats$`Graduates from tertiary education, both sexes`[x])

#x<-which(EduStats$Population_Binned == 'High')
#y <- as.numeric(EduStats$`Graduates from tertiary education, both sexes`[x])
#EduStats$`Graduates from tertiary education, both sexes`[x] <- ifelse(is.na(EduStats$`Graduates from tertiary education, both sexes`[x]) == TRUE, yes = 374930, no = EduStats$`Graduates from tertiary education, both sexes`[x])

#binning primary completion both sexes
EduStats$`Primary completion rate, both sexes (%) binned` <- cut(x = as.numeric(EduStats$`Primary completion rate, both sexes (%)`), breaks = c(0,80.68,97.68,101), right = FALSE, labels = c("Low", "Medium", "High"))

#binning adjusted net enrolment rate, upper secondary, both sexes (%) binned
EduStats$`Adjusted net enrolment rate, upper secondary, both sexes (%) binned` <- cut(x = as.numeric(EduStats$`Adjusted net enrolment rate, upper secondary, both sexes (%)`), breaks = c(0,24.314,42.881,101), right = FALSE, labels = c("Low", "Medium", "High"))

#binning graduates from ISCED 6 programmes in tertiary education, both sexes [NOT A PERCENTAGE]
EduStats$`Graduates from ISCED 6 programmes in tertiary education, both sexes binned` <- cut(x = as.numeric(EduStats$`Graduates from ISCED 6 programmes in tertiary education, both sexes`), breaks = c(0,9151,178398,8000000), right = FALSE, labels = c("Low", "Medium", "High"))

#binning Graduates from tertiary education, both sexes [NOT A PERCENTAGE]
EduStats$`Graduates from tertiary education, both sexes binned` <- cut(x = as.numeric(EduStats$`Graduates from tertiary education, both sexes`), breaks = c(0,10255,344067,13000000), right = FALSE, labels = c("Low", "Medium", "High"))

#median value of EduStats$Gdp per capita is 6139.7 so we will use this to bin this statistic as above or below inclusive above
EduStats$`GDP per capita above or below median binned` <- cut(x = as.numeric(EduStats$`GDP per capita`), breaks = c(0,6139.7,189171), right = FALSE, labels = c("Below","Above"))


set.seed(8);
train_ind <- runif(n) <0.75
EduStats_train <-EduStats[train_ind,]
EduStats_test <-EduStats[!train_ind,]

#t test for population
t.test(as.numeric(EduStats_train$Population),as.numeric(EduStats_test$Population))

#summary to count member of each category
#gdp per capita binned
summary(EduStats_train$`GDP per capita binned`)
summary(EduStats_test$`GDP per capita binned`)
expected_gdp_per_capita_binned <- matrix(c(468,936,460,158,316,155), nrow = 2,byrow = TRUE)
observed_gdp_per_capita_binned <- matrix(c(478,932,454,148,320,161), nrow = 2,byrow = TRUE)
#now we validate the partitions.
chi.sq <-sum((observed_gdp_per_capita_binned - expected_gdp_per_capita_binned)^2 / expected_gdp_per_capita_binned)
#pvalue for gdp per capita binned
1-pchisq(chi.sq,3)
#it is high so the partition for gdp binned is valid

#summary to count member of each category
#gdp per capita binned
summary(EduStats_train$Population_Binned)
summary(EduStats_test$Population_Binned)

expected_population_binned <- matrix(c(426,956,488,144,322,165), nrow = 2,byrow = TRUE)
observed_population_binned <- matrix(c(438,963,471,132,315,182), nrow = 2,byrow = TRUE)
#now we validate the partitions.

chi.sq.population <-sum((observed_population_binned - expected_population_binned)^2 / expected_population_binned)
1-pchisq(chi.sq.population,3)
#the partition for population binned is valid

#will employ t test for other values as they are numeric
#t test for Primary completion rate, both sexes
t.test(as.numeric(EduStats_train$`Primary completion rate, both sexes (%)`),as.numeric(EduStats_test$`Primary completion rate, both sexes (%)`))
#t test for Adjusted net enrolment rate, upper secondary, both sexes
t.test(as.numeric(EduStats_train$`Adjusted net enrolment rate, upper secondary, both sexes (%)`),as.numeric(EduStats_test$`Adjusted net enrolment rate, upper secondary, both sexes (%)`))
#t  test for Graduates from ISCED 6 programmes in tertiary education, both sexes
t.test(as.numeric(EduStats_train$`Graduates from ISCED 6 programmes in tertiary education, both sexes`),as.numeric(EduStats_test$`Graduates from ISCED 6 programmes in tertiary education, both sexes`))                  
#t test for Graduates from tertiary educatio, both sexes
t.test(as.numeric(EduStats_train$`Graduates from tertiary education, both sexes`),as.numeric(EduStats_test$`Graduates from tertiary education, both sexes`))

#all columns pass validation test partition is good

#c5.0
#for linux ubuntu-18.04, dependency problems, switched to windows environment
#install.packages("PMCMRplus)
#C5.0 Algorithm
#install.packages("C50") 
library(C50)

c5 <- C5.0(as.formula(`GDP per capita above or below median binned` ~ Population_Binned + `Graduates from ISCED 6 programmes in tertiary education, both sexes binned` + `Primary completion rate, both sexes (%) binned` +`Adjusted net enrolment rate, upper secondary, both sexes (%) binned`), data = EduStats_train, control = C5.0Control(minCases = 50))

#predict test data using c5.0
c5PredictEduStats <- predict(object = c5, newdata = EduStats_test)

t_preds_c5 <- table(EduStats_test$`GDP per capita above or below median binned`, c5PredictEduStats)

#Naive Bayes Algorithm
#install.packages("e1071")
library(e1071)

nbEduStats <- naiveBayes(formula = `GDP per capita above or below median binned` ~ Population_Binned + `Graduates from ISCED 6 programmes in tertiary education, both sexes binned` + `Primary completion rate, both sexes (%) binned` +`Adjusted net enrolment rate, upper secondary, both sexes (%) binned`, data = EduStats_train)

nbPredictEduStats <- predict(object = nbEduStats, newdata = EduStats_test)

t_preds_nb <- table(EduStats_test$`GDP per capita above or below median binned`, nbPredictEduStats)

#CART Algorithm
#install.packages(c("rpart","rpart.plot"))
library(rpart); library(rpart.plot)

cartEduStats <- rpart(formula = `GDP per capita above or below median binned` ~ Population_Binned + `Graduates from ISCED 6 programmes in tertiary education, both sexes binned` +`Primary completion rate, both sexes (%) binned` +`Adjusted net enrolment rate, upper secondary, both sexes (%) binned`, data = EduStats_train)

cartPredictEduStats <- predict(object = cartEduStats, newdata = EduStats_test, type = "class")

t_preds_cart <- table(EduStats_test$`GDP per capita above or below median binned`, cartPredictEduStats)

c5Accuracy <- 100* sum(diag(t_preds_c5))/sum(t_preds_c5)
c5ErrorRate <- 100-c5Accuracy 

cartAccuracy <- 100* sum(diag(t_preds_cart))/sum(t_preds_cart)
cartErrorRate <- 100-cartAccuracy

nbAccuracy <- 100* sum(diag(t_preds_nb))/sum(t_preds_nb)
nbErrorRate <- 100-nbAccuracy

