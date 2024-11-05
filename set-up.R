AnnualPay2020 <- fread("table32020revised/AnnualPay2020.csv")
HourlyPay2020 <- fread("table32020revised/HourlyPay2020.csv")
WeeklyPay2020 <- fread("table32020revised/WeeklyPay2020.csv")
HoursWorked2020 <- fread("table32020revised/HoursWorked2020.csv")

AnnualPay2021 <- fread("table32020revised/AnnualPay2021.csv")
HourlyPay2021 <- fread("table32020revised/HourlyPay2021.csv")
WeeklyPay2021 <- fread("table32020revised/WeeklyPay2021.csv")
HoursWorked2021 <- fread("table32020revised/HoursWorked2021.csv")

AnnualPay2022 <- fread("table32020revised/AnnualPay2022.csv")
HourlyPay2022 <- fread("table32020revised/HourlyPay2022.csv")
WeeklyPay2022 <- fread("table32020revised/WeeklyPay2022.csv")
HoursWorked2022 <- fread("table32020revised/HoursWorked2022.csv")

AnnualPay2023 <- fread("table32020revised/AnnualPay2023.csv")
HourlyPay2023 <- fread("table32020revised/HourlyPay2023.csv")
WeeklyPay2023 <- fread("table32020revised/WeeklyPay2023.csv")
HoursWorked2023 <- fread("table32020revised/HoursWorked2023.csv")

WeeklyPay2024 <- fread("table32020revised/WeeklyPay2024.csv")
HourlyPay2024 <- fread("table32020revised/HourlyPay2024.csv")
AnnualPay2024 <- fread("table32020revised/AnnualPay2024.csv")
HoursWorked2024 <- fread("table32020revised/HoursWorked2024.csv")

AnnualPay2020Regions <- AnnualPay2020[c(1, 35, 67, 102, 136, 168, 202, 236, 270, 304, 336, 369, 403),]
AnnualPay2021Regions <- AnnualPay2021[c(1, 36, 68, 103, 136, 169, 202, 235, 267, 301, 335, 368, 402),]
AnnualPay2022Regions <- AnnualPay2022[c(1, 37, 69, 102, 133, 165, 197, 231, 264, 297, 329, 360, 394),]
AnnualPay2023Regions <- AnnualPay2023[c(1, 37, 67, 100, 133, 164, 197, 230, 262, 296, 329, 362, 395),]
RegionsAnnual2024 <- AnnualPay2024[c(1, 37, 70, 105, 138, 172, 206, 239, 273, 308, 342, 373, 408),]

WeeklyPay2020Regions <- WeeklyPay2020[c(1, 36, 69, 104, 138, 172, 206, 241, 276, 311, 343, 376, 411),]
WeeklyPay2021Regions <- WeeklyPay2021[c(1, 36, 69, 104, 139, 174, 208, 243, 277, 312, 346, 379, 414),]
WeeklyPay2022Regions <- WeeklyPay2022[c(1, 37, 70, 105, 139, 174, 209, 244, 279,314,349,382, 417),]
WeeklyPay2023Regions <- WeeklyPay2023[c(1, 37, 70, 105, 138, 173, 207, 242, 277, 312, 347, 380, 415),]
RegionsWeekly2024 <- WeeklyPay2024[c(1, 37, 70, 105, 140, 175, 209, 243, 278,313, 347,381, 416),]

HourlyPay2020Regions <- HourlyPay2020[c(1, 36, 70, 105, 139,173, 207, 242, 277, 312,345, 379, 414),]
HourlyPay2021Regions <- HourlyPay2021[c(1, 36, 69, 104, 139, 174, 208, 243, 277, 312, 347, 380, 415),]
HourlyPay2022Regions <- HourlyPay2022[c(1, 37, 70, 105, 139, 174, 209, 244, 279, 314, 349, 382, 417),]
HourlyPay2023Regions <- HourlyPay2023[c(1, 37, 70, 105, 139, 174, 208, 243, 278, 313, 348,382, 417),]
RegionsHourly2024 <- HourlyPay2024[c(1, 37, 71, 106, 141, 176, 210, 244, 279, 314, 349, 383, 418),]

HoursWorked2020Regions <- HoursWorked2020[c(1, 36, 70, 105, 139, 173, 208, 243, 278, 313, 348, 382, 417),]
HoursWorked2021Regions <- HoursWorked2021[c(1, 37, 70, 105, 140, 175, 210, 245, 280, 315, 350, 383, 418),]
HoursWorked2022Regions <- HoursWorked2022[c(1, 37, 68, 103, 136, 170, 204, 239, 273, 308, 342, 375, 408),]
HoursWorked2023Regions <- HoursWorked2023[c(1, 37, 70, 105,139,174, 209,244, 279, 314,349, 382, 417),]
RegionsHoursWorked2024 <- HoursWorked2024[c(1, 37, 70, 105, 140, 175, 210, 245, 280, 315, 349, 383, 418 ),]


abc <- merge(AnnualPay2020Regions, AnnualPay2021Regions, by = c("Date", "Description", "Number of jobs","Median","Annual % change","Mean","Mean: Annual % change","10 percentile","20 percentile","25 percentile","30 percentile","40 percentile","50 percentile","60 percentile", "70 percentile","80 percentile","90 percentile"), all = TRUE)
def <- merge(AnnualPay2022Regions, AnnualPay2023Regions, by = c("Date", "Description", "Number of jobs","Median","Annual % change","Mean","Mean: Annual % change","10 percentile","20 percentile","25 percentile","30 percentile","40 percentile","50 percentile","60 percentile", "70 percentile","80 percentile","90 percentile"), all = TRUE)
RegionsAnnualPay <- merge(abc, def, by = c("Date", "Description", "Number of jobs","Median","Annual % change","Mean","Mean: Annual % change","10 percentile","20 percentile","25 percentile","30 percentile","40 percentile","50 percentile","60 percentile", "70 percentile","80 percentile","90 percentile"), all = TRUE)

RegionsAnnualPay <- merge(RegionsAnnualPay, RegionsAnnual2024, by = c("Date", "Description", "Number of jobs","Median","Annual % change","Mean","Mean: Annual % change","10 percentile","20 percentile","25 percentile","30 percentile","40 percentile","50 percentile","60 percentile", "70 percentile","80 percentile","90 percentile"), all = TRUE)

abc <- merge(WeeklyPay2020Regions, WeeklyPay2021Regions, by = c("Date", "Description", "Number of jobs","Median","Annual % change","Mean","Mean: Annual % change","10 percentile","20 percentile","25 percentile","30 percentile","40 percentile","50 percentile","60 percentile", "70 percentile","80 percentile","90 percentile"), all = TRUE)
def <- merge(WeeklyPay2022Regions, WeeklyPay2023Regions, by = c("Date", "Description", "Number of jobs","Median","Annual % change","Mean","Mean: Annual % change","10 percentile","20 percentile","25 percentile","30 percentile","40 percentile","50 percentile","60 percentile", "70 percentile","80 percentile","90 percentile"), all = TRUE)
RegionsWeeklyPay <- merge(abc, def, by = c("Date", "Description", "Number of jobs","Median","Annual % change","Mean","Mean: Annual % change","10 percentile","20 percentile","25 percentile","30 percentile","40 percentile","50 percentile","60 percentile", "70 percentile","80 percentile","90 percentile"), all = TRUE)

RegionsWeeklyPay <- merge(RegionsWeeklyPay, RegionsWeekly2024, by = c("Date", "Description", "Number of jobs","Median","Annual % change","Mean","Mean: Annual % change","10 percentile","20 percentile","25 percentile","30 percentile","40 percentile","50 percentile","60 percentile", "70 percentile","80 percentile","90 percentile"), all = TRUE)

abc <- merge(HourlyPay2020Regions, HourlyPay2021Regions, by = c("Date", "Description", "Number of jobs","Median","Annual % change","Mean","Mean: Annual % change","10 percentile","20 percentile","25 percentile","30 percentile","40 percentile","50 percentile","60 percentile", "70 percentile","80 percentile","90 percentile"), all = TRUE)
def <- merge(HourlyPay2022Regions, HourlyPay2023Regions, by = c("Date", "Description", "Number of jobs","Median","Annual % change","Mean","Mean: Annual % change","10 percentile","20 percentile","25 percentile","30 percentile","40 percentile","50 percentile","60 percentile", "70 percentile","80 percentile","90 percentile"), all = TRUE)
RegionsHourlyPay <- merge(abc, def, by = c("Date", "Description", "Number of jobs","Median","Annual % change","Mean","Mean: Annual % change","10 percentile","20 percentile","25 percentile","30 percentile","40 percentile","50 percentile","60 percentile", "70 percentile","80 percentile","90 percentile"), all = TRUE)

RegionsHourlyPay <- merge(RegionsHourlyPay, RegionsHourly2024, by = c("Date", "Description", "Number of jobs","Median","Annual % change","Mean","Mean: Annual % change","10 percentile","20 percentile","25 percentile","30 percentile","40 percentile","50 percentile","60 percentile", "70 percentile","80 percentile","90 percentile"), all = TRUE)

abc <- merge(HoursWorked2020Regions, HoursWorked2021Regions, by = c("Date", "Description", "Number of jobs","Median","Annual % change","Mean","Mean: Annual % change","10 percentile","20 percentile","25 percentile","30 percentile","40 percentile","50 percentile","60 percentile", "70 percentile","80 percentile","90 percentile"), all = TRUE)
def <- merge(HoursWorked2022Regions, HoursWorked2023Regions, by = c("Date", "Description", "Number of jobs","Median","Annual % change","Mean","Mean: Annual % change","10 percentile","20 percentile","25 percentile","30 percentile","40 percentile","50 percentile","60 percentile", "70 percentile","80 percentile","90 percentile"), all = TRUE)
RegionsHoursWorked <- merge(abc, def, by = c("Date", "Description", "Number of jobs","Median","Annual % change","Mean","Mean: Annual % change","10 percentile","20 percentile","25 percentile","30 percentile","40 percentile","50 percentile","60 percentile", "70 percentile","80 percentile","90 percentile"), all = TRUE)

RegionsHoursWorked <- merge(RegionsHoursWorked, RegionsHoursWorked2024, by = c("Date", "Description", "Number of jobs","Median","Annual % change","Mean","Mean: Annual % change","10 percentile","20 percentile","25 percentile","30 percentile","40 percentile","50 percentile","60 percentile", "70 percentile","80 percentile","90 percentile"), all = TRUE)

fwrite(RegionsAnnualPay, "~/Documents/Documents - Ruby's MacBook Air/RAC Work/MotoringIndex/table32020revised/AnnualPaybyRegion.csv")
fwrite(RegionsWeeklyPay, "~/Documents/Documents - Ruby's MacBook Air/RAC Work/MotoringIndex/table32020revised/WeeklyPaybyRegion.csv")
fwrite(RegionsHourlyPay, "~/Documents/Documents - Ruby's MacBook Air/RAC Work/MotoringIndex/table32020revised/HourlyPaybyRegion.csv")
fwrite(RegionsHoursWorked, "~/Documents/Documents - Ruby's MacBook Air/RAC Work/MotoringIndex/table32020revised/HoursWorkedbyRegion.csv")




NorthEastAnnual <- AnnualPay[37:72]
NorthWestAnnual <- AnnualPay[73:108]
YorkshireAnnual <- AnnualPay[109:144]
EastMidAnnual <- AnnualPay[145:180]
WestMidAnnual <- AnnualPay[181:216]
EastAnnual <- AnnualPay[217:252]
LondonAnnual <- AnnualPay[253:288]
SouthEastAnnual <- AnnualPay[289:324]
SouthWestAnnual <- AnnualPay[325:360]
WalesAnnual <- AnnualPay[361:396]
ScotlandAnnual <- AnnualPay[397:432]
NorthernIrelandAnnual<- AnnualPay[433:433]

NorthEastHourly <- HourlyPay[37:72]
NorthWestHourly <- HourlyPay[73:108]
YorkshireHourly <- HourlyPay[109:144]
EastMidHourly <- HourlyPay[145:180]
WestMidHourly <- HourlyPay[181:216]
EastHourly <- HourlyPay[217:252]
LondonHourly <- HourlyPay[253:288]
SouthEastHourly <- HourlyPay[289:324]
SouthWestHourly <- HourlyPay[325:360]
WalesHourly <- HourlyPay[361:396]
ScotlandHourly <- HourlyPay[397:432]
NorthernIrelandHourly <- HourlyPay[433:433]

NorthEastWeekly <- WeeklyPay[37:72]
NorthWestWeekly <- WeeklyPay[73:108]
YorkshireWeekly <- WeeklyPay[109:144]
EastMidWeekly <- WeeklyPay[145:180]
WestMidWeekly <- WeeklyPay[181:216]
EastWeekly <- WeeklyPay[217:252]
LondonWeekly <- WeeklyPay[253:288]
SouthEastWeekly<- WeeklyPay[289:324]
SouthWestWeekly <- WeeklyPay[325:360]
WalesWeekly <- WeeklyPay[361:396]
ScotlandWeekly <- WeeklyPay[397:432]
NorthernIrelandWeekly <- WeeklyPay[433:433]

NorthEastHoursWorked <- HoursWorked[37:72]
NorthWestHoursWorked <- HoursWorked[73:108]
YorkshireHoursWorked <- HoursWorked[109:144]
EastMidHoursWorked <- HoursWorked[145:180]
WestMidHoursWorked <- HoursWorked[181:216]
EastHoursWorked <- HoursWorked[217:252]
LondonHoursWorked <- HoursWorked[253:288]
SouthEastHoursWorked <- HoursWorked[289:324]
SouthWestHoursWorked <- HoursWorked[325:360]
WalesHoursWorked <- HoursWorked[361:396]
ScotlandHoursWorked <- HoursWorked[397:432]
NorthernIrelandHoursWorked <- HoursWorked[433:433]