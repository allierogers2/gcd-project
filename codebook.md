DATA DICTIONARY - MEANS

Subject

Activity
    
All columns below contain the average of the named measurement. At the bottom of this
codebook is an excerpt from the UCI HAR codebook that describes how each of these variables were collected.

Time Body Acceleration Mean on Phone X Axis

Time Body Acceleration Mean on Phone Y Axis              

Time Body Acceleration Mean on Phone Z Axis              

Time Body Acceleration Std Dev on Phone X Axis           

Time Body Acceleration Std Dev on Phone Y Axis           

Time Body Acceleration Std Dev on Phone Z Axis           

Time Gravity Acceleration Mean on Phone X Axis           

Time Gravity Acceleration Mean on Phone Y Axis           

Time Gravity Acceleration Mean on Phone Z Axis           

Time Gravity Acceleration Std Dev on Phone X Axis        

Time Gravity Acceleration Std Dev on Phone Y Axis        

Time Gravity Acceleration Std Dev on Phone Z Axis        

Time Body Acceleration Jerk Mean on Phone X Axis         

Time Body Acceleration Jerk Mean on Phone Y Axis         

Time Body Acceleration Jerk Mean on Phone Z Axis         

Time Body Acceleration Jerk Std Dev on Phone X Axis      

Time Body Acceleration Jerk Std Dev on Phone Y Axis      

Time Body Acceleration Jerk Std Dev on Phone Z Axis      

Time Body Gyro Mean on Phone X Axis                      

Time Body Gyro Mean on Phone Y Axis                      

Time Body Gyro Mean on Phone Z Axis                      

Time Body Gyro Std Dev on Phone X Axis                   

Time Body Gyro Std Dev on Phone Y Axis                   

Time Body Gyro Std Dev on Phone Z Axis                   

Time Body Gyro Jerk Mean on Phone X Axis                 

Time Body Gyro Jerk Mean on Phone Y Axis                 

Time Body Gyro Jerk Mean on Phone Z Axis                 

Time Body Gyro Jerk Std Dev on Phone X Axis              

Time Body Gyro Jerk Std Dev on Phone Y Axis              

Time Body Gyro Jerk Std Dev on Phone Z Axis              

Time Body Acceleration Maginitude Mean                   

Time Body Acceleration Maginitude Std Dev                

Time Gravity Acceleration Maginitude Mean                

Time Gravity Acceleration Maginitude Std Dev             

Time Body Acceleration Jerk Maginitude Mean              

Time Body Acceleration Jerk Maginitude Std Dev           

Time Body Gyro Maginitude Mean                           

Time Body Gyro Maginitude Std Dev                        

Time Body Gyro Jerk Maginitude Mean                      

Time Body Gyro Jerk Maginitude Std Dev                   

FFT Body Acceleration Mean on Phone X Axis               

FFT Body Acceleration Mean on Phone Y Axis               

FFT Body Acceleration Mean on Phone Z Axis               

FFT Body Acceleration Std Dev on Phone X Axis            

FFT Body Acceleration Std Dev on Phone Y Axis            

FFT Body Acceleration Std Dev on Phone Z Axis            

FFT Body Acceleration Mean Frequency on Phone X Axis     

FFT Body Acceleration Mean Frequency on Phone Y Axis     

FFT Body Acceleration Mean Frequency on Phone Z Axis     

FFT Body Acceleration Jerk Mean on Phone X Axis          

FFT Body Acceleration Jerk Mean on Phone Y Axis          

FFT Body Acceleration Jerk Mean on Phone Z Axis          

FFT Body Acceleration Jerk Std Dev on Phone X Axis       

FFT Body Acceleration Jerk Std Dev on Phone Y Axis       

FFT Body Acceleration Jerk Std Dev on Phone Z Axis       

FFT Body Acceleration Jerk Mean Frequency on Phone X Axis

FFT Body Acceleration Jerk Mean Frequency on Phone Y Axis

FFT Body Acceleration Jerk Mean Frequency on Phone Z Axis

FFT Body Gyro Mean on Phone X Axis                       

FFT Body Gyro Mean on Phone Y Axis                       

FFT Body Gyro Mean on Phone Z Axis                       

FFT Body Gyro Std Dev on Phone X Axis                    

FFT Body Gyro Std Dev on Phone Y Axis                    

FFT Body Gyro Std Dev on Phone Z Axis                    

FFT Body Gyro Mean Frequency on Phone X Axis             

FFT Body Gyro Mean Frequency on Phone Y Axis             

FFT Body Gyro Mean Frequency on Phone Z Axis             

FFT Body Acceleration Maginitude Mean                    

FFT Body Acceleration Maginitude Std Dev                 

FFT Body Acceleration Maginitude Mean Frequency          

FFT BodyBody Acceleration Jerk Maginitude Mean           

FFT BodyBody Acceleration Jerk Maginitude Std Dev        

FFT BodyBody Acceleration Jerk Maginitude Mean Frequency 

FFT BodyBody Gyro Maginitude Mean                        

FFT BodyBody Gyro Maginitude Std Dev                     

FFT BodyBody Gyro Maginitude Mean Frequency              

FFT BodyBody Gyro Jerk Maginitude Mean                   

FFT BodyBody Gyro Jerk Maginitude Std Dev                

FFT BodyBody Gyro Jerk Maginitude Mean Frequency         

Angle Time Body Acceleration Mean Gravity                

Angle Time Body Acceleration Jerk Mean Gravity Mean      

Angle Time Body Gyro Mean Gravity Mean                   

Angle Time Body Gyro Jerk Mean Gravity Mean              

Angle on Phone X Axis Gravity Mean                       

Angle on Phone Y Axis Gravity Mean                       

Angle on Phone Z Axis Gravity Mean

UCI HAR Codebook -- Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean
