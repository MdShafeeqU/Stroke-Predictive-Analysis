#Reading the dataset.
df = read.csv("/Users/ganesh/Documents/Documents/Development/R Studio/CMPE 266/Stroke_Predictive_Analysis/preprocessed_data.csv", stringsAsFactors = FALSE)

#Structure of dataset.
str(df)

#Selecting the individuals that have encountered a stroke.
stroke_set <- subset(df, stroke == '1')

#Gender - Stroke Distribution
    gender_stroke <- table(stroke_set$gender)
    #Adding labels of x-axis.
    gen_stk_lables <- c("Female", "Male")
    #Plotting the bar plot.
    barplot(gender_stroke, names.arg = gen_stk_lables, xlab = "Gender", ylab = "Stroke Count", col = 'cadetblue3', border = 'darkcyan', main = "Gender - Stroke Distribution")
  
  
#Age - Stroke Distribution
    age_stroke <- table(stroke_set$age)
    #Creating a histogram from the 'age_stroke' table.
    hist(age_stroke, main = "Age Distribution", xlab = "Age", ylab = "Density", xlim = c(0 , 80), col = 'cadetblue3', border = 'darkcyan', freq = FALSE)
    #Displaying distribution curve.
    lines(density(age_stroke))
    
    #Box Plot representation.
    boxplot(age_stroke, ylab = "Age", main = "Stroke Occurances by Age", col = 'cadetblue3', border = 'black')
    
    
#Hypertension - Stroke Distribution
    hypertension_stroke <- table(stroke_set$hypertension)
    hyp_stk_lable <- c("No", "Yes")
    barplot(hypertension_stroke, names.arg = hyp_stk_lable, xlab = "Hypertension", ylab = "Stroke Count", col = 'cadetblue3', border = 'darkcyan', main = "Hypertension - Stroke Distribution")


#Heart Disease - Stroke Distribution
    heart_stroke <- table(stroke_set$heart_disease)
    hrt_stk_lables <- c("No", "Yes")
    barplot(heart_stroke, names.arg = hrt_stk_lables, main = "Heart Disease - Stroke Distribution", xlab = "Heart Disease", ylab = "Stroke Count", col = 'cadetblue3', border = 'darkcyan')
    

#Work Type - Stroke Distribution
    work_stroke <- table(stroke_set$work_type)
    wrk_stk_lables <- c("Govt. Job", "Private", "Self-Employed","Children")
    barplot(work_stroke, names.arg = wrk_stk_lables, main = "Work Type - Stroke Distribution", xlab = "Work Type", ylab = "Stroke Count", col = 'cadetblue3', border = 'darkcyan')
    

#Residence Type - Stroke Distribution
    residence_stroke <- table(stroke_set$Residence_type)
    res_stk_lables <- c("Rural", "Urban")
    barplot(residence_stroke, names.arg = res_stk_lables, main = "Residence Type - Stroke Distribution", xlab = "Residence Type", ylab = "Stroke Count", col = 'cadetblue3', border = 'darkcyan')

    
#Smoking Status - Stroke Distribution
    smoke_stroke <- table(stroke_set$smoking_status)
    smk_stk_lables <- c("Formerly Smoked", "Never Smoked", "Smokes", "Unknown")
    barplot(smoke_stroke, names.arg = smk_stk_lables, main = "Smoking Status - Stroke Distribution", xlab = "Smoking Status", ylab = "Stroke Count", col = 'cadetblue3', border = 'darkcyan')
    
    