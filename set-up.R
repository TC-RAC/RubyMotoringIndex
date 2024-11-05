AnnualPay2020 <- fread("~/Documents/Documents - Ruby's MacBook Air/RAC Work/MotoringIndex/table32020revised/Work Region Occupation SOC10 (2) Table 3.7a   Annual pay - Gross 2020.csv")
HoursWorked2020 <- fread("~/Documents/Documents - Ruby's MacBook Air/RAC Work/MotoringIndex/table32020revised/Work Region Occupation SOC10 (2) Table 3.9a   Paid hours worked - Total 2020.csv")
HourlyPay2020 <- fread("~/Documents/Documents - Ruby's MacBook Air/RAC Work/MotoringIndex/table32020revised/Work Region Occupation SOC10 (2) Table 3.5a   Hourly pay - Gross 2020.csv")
WeeklyPay2020 <- fread("~/Documents/Documents - Ruby's MacBook Air/RAC Work/MotoringIndex/table32020revised/Work Region Occupation SOC10 (2) Table 3.1a   Weekly pay - Gross 2020.csv")

setnames(WeeklyPay2020, c("V1", "V3", "V4", "V5", "V6", "V7", "V8", "V9", "V10", "V11", "V12", "V13", "V14", "V15", "V16", "V17"), c("Description", "Number of jobs","Median","Annual % change","Mean","Mean: Annual % change","10 percentile","20 percentile","25 percentile","30 percentile","40 percentile","50 percentile","60 percentile", "70 percentile","80 percentile","90 percentile"))
WeeklyPay2020 <- WeeklyPay2020[, c("V2", "V18", "V19", "V20", "V21", "V22", "V23", "V24", "V25") := NULL]

HoursWorked2020 <- HoursWorked2020[, c("V2", "V18", "V19", "V20", "V21", "V22", "V23", "V24", "V25") := NULL]

AnnualPay2020 <- AnnualPay2020[, c("V2", "V18", "V19", "V20", "V21", "V22", "V23", "V24", "V25") := NULL]

HourlyPay2020 <- HourlyPay2020[, c("V2", "V18", "V19", "V20", "V21", "V22", "V23", "V24", "V25") := NULL]

setnames(HoursWorked2020, c("V1", "V3", "V4", "V5", "V6", "V7", "V8", "V9", "V10", "V11", "V12", "V13", "V14", "V15", "V16", "V17"), c("Description", "Number of jobs","Median","Annual % change","Mean","Mean: Annual % change","10 percentile","20 percentile","25 percentile","30 percentile","40 percentile","50 percentile","60 percentile", "70 percentile","80 percentile","90 percentile"))
setnames(AnnualPay2020, c("V1", "V3", "V4", "V5", "V6", "V7", "V8", "V9", "V10", "V11", "V12", "V13", "V14", "V15", "V16", "V17"), c("Description", "Number of jobs","Median","Annual % change","Mean","Mean: Annual % change","10 percentile","20 percentile","25 percentile","30 percentile","40 percentile","50 percentile","60 percentile", "70 percentile","80 percentile","90 percentile"))
setnames(HourlyPay2020, c("V1", "V3", "V4", "V5", "V6", "V7", "V8", "V9", "V10", "V11", "V12", "V13", "V14", "V15", "V16", "V17"), c("Description", "Number of jobs","Median","Annual % change","Mean","Mean: Annual % change","10 percentile","20 percentile","25 percentile","30 percentile","40 percentile","50 percentile","60 percentile", "70 percentile","80 percentile","90 percentile"))

HourlyPay2020 <- HourlyPay2020[6:426]
AnnualPay2020 <- AnnualPay2020[6:426]
HoursWorked2020 <- HoursWorked2020[6:426]
WeeklyPay2020 <- WeeklyPay2020[6:426]

HourlyPay2020 <- HourlyPay2020[, Date := "2020-01-01"]
AnnualPay2020 <- AnnualPay2020[, Date := "2020-01-01"]
HoursWorked2020 <- HoursWorked2020[, Date := "2020-01-01"]
WeeklyPay2020 <- WeeklyPay2020[, Date := "2020-01-01"]

AnnualPay2021 <- fread("Work Region Occupation SOC20 (2) Table 3.7a   Annual pay - Gross 2021.csv")
HoursWorked2021 <- fread("Work Region Occupation SOC20 (2) Table 3.9a   Paid hours worked - Total 2021.csv")
HourlyPay2021 <- fread("Work Region Occupation SOC20 (2) Table 3.5a   Hourly pay - Gross 2021.csv")
WeeklyPay2021 <- fread("Work Region Occupation SOC20 (2) Table 3.1a   Weekly pay - Gross 2021.csv")

HourlyPay2021 <- HourlyPay2021[, Date := "2021-01-01"]
AnnualPay2021 <- AnnualPay2021[, Date := "2021-01-01"]
HoursWorked2021 <- HoursWorked2021[, Date := "2021-01-01"]
WeeklyPay2021 <- WeeklyPay2021[, Date := "2021-01-01"]

HourlyPay2021 <- HourlyPay2021[6:438]
AnnualPay2021 <- AnnualPay2021[6:438]
WeeklyPay2021 <- WeeklyPay2021[6:438]
HoursWorked2021 <- HoursWorked2021[6:438]

setnames(WeeklyPay2021, c("V1", "V3", "V4", "V5", "V6", "V7", "V8", "V9", "V10", "V11", "V12", "V13", "V14", "V15", "V16", "V17"), c("Description", "Number of jobs","Median","Annual % change","Mean","Mean: Annual % change","10 percentile","20 percentile","25 percentile","30 percentile","40 percentile","50 percentile","60 percentile", "70 percentile","80 percentile","90 percentile"))
WeeklyPay2021 <- WeeklyPay2021[, c("V2", "V18", "V19", "V20", "V21", "V22", "V23", "V24", "V25") := NULL]
HoursWorked2021 <- HoursWorked2021[, c("V2", "V18", "V19", "V20", "V21", "V22", "V23", "V24", "V25") := NULL]
AnnualPay2021 <- AnnualPay2021[, c("V2", "V18", "V19", "V20", "V21", "V22", "V23", "V24", "V25") := NULL]
HourlyPay2021 <- HourlyPay2021[, c("V2", "V18", "V19", "V20", "V21", "V22", "V23", "V24", "V25") := NULL]
setnames(HoursWorked2021, c("V1", "V3", "V4", "V5", "V6", "V7", "V8", "V9", "V10", "V11", "V12", "V13", "V14", "V15", "V16", "V17"), c("Description", "Number of jobs","Median","Annual % change","Mean","Mean: Annual % change","10 percentile","20 percentile","25 percentile","30 percentile","40 percentile","50 percentile","60 percentile", "70 percentile","80 percentile","90 percentile"))
setnames(AnnualPay2021, c("V1", "V3", "V4", "V5", "V6", "V7", "V8", "V9", "V10", "V11", "V12", "V13", "V14", "V15", "V16", "V17"), c("Description", "Number of jobs","Median","Annual % change","Mean","Mean: Annual % change","10 percentile","20 percentile","25 percentile","30 percentile","40 percentile","50 percentile","60 percentile", "70 percentile","80 percentile","90 percentile"))
setnames(HourlyPay2021, c("V1", "V3", "V4", "V5", "V6", "V7", "V8", "V9", "V10", "V11", "V12", "V13", "V14", "V15", "V16", "V17"), c("Description", "Number of jobs","Median","Annual % change","Mean","Mean: Annual % change","10 percentile","20 percentile","25 percentile","30 percentile","40 percentile","50 percentile","60 percentile", "70 percentile","80 percentile","90 percentile"))

AnnualPay2022 <- fread("Work Region Occupation SOC20 (2) Table 3.7a   Annual pay - Gross 2022.csv")
HourlyPay2022 <- fread("Work Region Occupation SOC20 (2) Table 3.5a   Hourly pay - Gross 2022.csv")
WeeklyPay2022 <- fread("Work Region Occupation SOC20 (2) Table 3.1a   Weekly pay - Gross 2022.csv")
HoursWorked2022 <- fread("Work Region Occupation SOC20 (2) Table 3.9a   Paid hours worked - Total 2022.csv")

HourlyPay2022 <- HourlyPay2022[, Date := "2022-01-01"]
AnnualPay2022 <- AnnualPay2022[, Date := "2022-01-01"]
WeeklyPay2022 <- WeeklyPay2022[, Date := "2022-01-01"]
HoursWorked2022 <- HoursWorked2022[, Date := "2022-01-01"]

HourlyPay2022 <- HourlyPay2022[6:438]
AnnualPay2022 <- AnnualPay2022[6:438]
WeeklyPay2022 <- WeeklyPay2022[6:438]
HoursWorked2022 <- HoursWorked2022[6:438]

setnames(WeeklyPay2022, c("V1", "V3", "V4", "V5", "V6", "V7", "V8", "V9", "V10", "V11", "V12", "V13", "V14", "V15", "V16", "V17"), c("Description", "Number of jobs","Median","Annual % change","Mean","Mean: Annual % change","10 percentile","20 percentile","25 percentile","30 percentile","40 percentile","50 percentile","60 percentile", "70 percentile","80 percentile","90 percentile"))
WeeklyPay2022 <- WeeklyPay2022[, c("V2", "V18", "V19", "V20", "V21", "V22", "V23", "V24", "V25") := NULL]
HoursWorked2022 <- HoursWorked2022[, c("V2", "V18", "V19", "V20", "V21", "V22", "V23", "V24", "V25") := NULL]
AnnualPay2022 <- AnnualPay2022[, c("V2", "V18", "V19", "V20", "V21", "V22", "V23", "V24", "V25") := NULL]
HourlyPay2022 <- HourlyPay2022[, c("V2", "V18", "V19", "V20", "V21", "V22", "V23", "V24", "V25") := NULL]
setnames(HoursWorked2022, c("V1", "V3", "V4", "V5", "V6", "V7", "V8", "V9", "V10", "V11", "V12", "V13", "V14", "V15", "V16", "V17"), c("Description", "Number of jobs","Median","Annual % change","Mean","Mean: Annual % change","10 percentile","20 percentile","25 percentile","30 percentile","40 percentile","50 percentile","60 percentile", "70 percentile","80 percentile","90 percentile"))
setnames(AnnualPay2022, c("V1", "V3", "V4", "V5", "V6", "V7", "V8", "V9", "V10", "V11", "V12", "V13", "V14", "V15", "V16", "V17"), c("Description", "Number of jobs","Median","Annual % change","Mean","Mean: Annual % change","10 percentile","20 percentile","25 percentile","30 percentile","40 percentile","50 percentile","60 percentile", "70 percentile","80 percentile","90 percentile"))
setnames(HourlyPay2022, c("V1", "V3", "V4", "V5", "V6", "V7", "V8", "V9", "V10", "V11", "V12", "V13", "V14", "V15", "V16", "V17"), c("Description", "Number of jobs","Median","Annual % change","Mean","Mean: Annual % change","10 percentile","20 percentile","25 percentile","30 percentile","40 percentile","50 percentile","60 percentile", "70 percentile","80 percentile","90 percentile"))

AnnualPay2023 <- fread("Work Region Occupation SOC20 (2) Table 3.7a   Annual pay - Gross 2023.csv")
HourlyPay2023 <- fread("Work Region Occupation SOC20 (2) Table 3.5a   Hourly pay - Gross 2023.csv")
WeeklyPay2023 <- fread("Work Region Occupation SOC20 (2) Table 3.1a   Weekly pay - Gross 2023.csv")
HoursWorked2023 <- fread("Work Region Occupation SOC20 (2) Table 3.9a   Paid hours worked - Total 2023.csv")

HourlyPay2023 <- HourlyPay2023[, Date := "2023-01-01"]
AnnualPay2023 <- AnnualPay2023[, Date := "2023-01-01"]
WeeklyPay2023 <- WeeklyPay2023[, Date := "2023-01-01"]
HoursWorked2023 <- HoursWorked2023[, Date := "2023-01-01"]

HourlyPay2023 <- HourlyPay2023[6:438]
AnnualPay2023 <- AnnualPay2023[6:438]
WeeklyPay2023 <- WeeklyPay2023[6:438]
HoursWorked2023 <- HoursWorked2023[6:438]

setnames(WeeklyPay2023, c("V1", "V3", "V4", "V5", "V6", "V7", "V8", "V9", "V10", "V11", "V12", "V13", "V14", "V15", "V16", "V17"), c("Description", "Number of jobs","Median","Annual % change","Mean","Mean: Annual % change","10 percentile","20 percentile","25 percentile","30 percentile","40 percentile","50 percentile","60 percentile", "70 percentile","80 percentile","90 percentile"))
WeeklyPay2023 <- WeeklyPay2023[, c("V2", "V18", "V19", "V20", "V21", "V22", "V23", "V24", "V25") := NULL]
HoursWorked2023 <- HoursWorked2023[, c("V2", "V18", "V19", "V20", "V21", "V22", "V23", "V24", "V25") := NULL]
AnnualPay2023 <- AnnualPay2023[, c("V2", "V18", "V19", "V20", "V21", "V22", "V23", "V24", "V25") := NULL]
HourlyPay2023 <- HourlyPay2023[, c("V2", "V18", "V19", "V20", "V21", "V22", "V23", "V24", "V25") := NULL]
setnames(HoursWorked2023, c("V1", "V3", "V4", "V5", "V6", "V7", "V8", "V9", "V10", "V11", "V12", "V13", "V14", "V15", "V16", "V17"), c("Description", "Number of jobs","Median","Annual % change","Mean","Mean: Annual % change","10 percentile","20 percentile","25 percentile","30 percentile","40 percentile","50 percentile","60 percentile", "70 percentile","80 percentile","90 percentile"))
setnames(AnnualPay2023, c("V1", "V3", "V4", "V5", "V6", "V7", "V8", "V9", "V10", "V11", "V12", "V13", "V14", "V15", "V16", "V17"), c("Description", "Number of jobs","Median","Annual % change","Mean","Mean: Annual % change","10 percentile","20 percentile","25 percentile","30 percentile","40 percentile","50 percentile","60 percentile", "70 percentile","80 percentile","90 percentile"))
setnames(HourlyPay2023, c("V1", "V3", "V4", "V5", "V6", "V7", "V8", "V9", "V10", "V11", "V12", "V13", "V14", "V15", "V16", "V17"), c("Description", "Number of jobs","Median","Annual % change","Mean","Mean: Annual % change","10 percentile","20 percentile","25 percentile","30 percentile","40 percentile","50 percentile","60 percentile", "70 percentile","80 percentile","90 percentile"))

AnnualPay2020Regions <- AnnualPay2020[c(1, 36, 71, 106, 141, 176, 211, 246, 281, 316, 351, 386, 421),]
AnnualPay2021Regions <- AnnualPay2021[c(1, 37, 73, 109, 145, 181, 217, 253, 289, 325, 361, 397, 433),]
AnnualPay2022Regions <- AnnualPay2022[c(1, 37, 73, 109, 145, 181, 217, 253, 289, 325, 361, 397, 433),]
AnnualPay2023Regions <- AnnualPay2023[c(1, 37, 73, 109, 145, 181, 217, 253, 289, 325, 361, 397, 433),]

WeeklyPay2020Regions <- WeeklyPay2020[c(1, 36, 71, 106, 141, 176, 211, 246, 281, 316, 351, 386, 421),]
WeeklyPay2021Regions <- WeeklyPay2021[c(1, 37, 73, 109, 145, 181, 217, 253, 289, 325, 361, 397, 433),]
WeeklyPay2022Regions <- WeeklyPay2022[c(1, 37, 73, 109, 145, 181, 217, 253, 289, 325, 361, 397, 433),]
WeeklyPay2023Regions <- WeeklyPay2023[c(1, 37, 73, 109, 145, 181, 217, 253, 289, 325, 361, 397, 433),]

HourlyPay2020Regions <- HourlyPay2020[c(1, 36, 71, 106, 141, 176, 211, 246, 281, 316, 351, 386, 421),]
HourlyPay2021Regions <- HourlyPay2021[c(1, 37, 73, 109, 145, 181, 217, 253, 289, 325, 361, 397, 433),]
HourlyPay2022Regions <- HourlyPay2022[c(1, 37, 73, 109, 145, 181, 217, 253, 289, 325, 361, 397, 433),]
HourlyPay2023Regions <- HourlyPay2023[c(1, 37, 73, 109, 145, 181, 217, 253, 289, 325, 361, 397, 433),]

HoursWorked2020Regions <- HoursWorked2020[c(1, 36, 71, 106, 141, 176, 211, 246, 281, 316, 351, 386, 421),]
HoursWorked2021Regions <- HoursWorked2021[c(1, 37, 73, 109, 145, 181, 217, 253, 289, 325, 361, 397, 433),]
HoursWorked2022Regions <- HoursWorked2022[c(1, 37, 73, 109, 145, 181, 217, 253, 289, 325, 361, 397, 433),]
HoursWorked2023Regions <- HoursWorked2023[c(1, 37, 73, 109, 145, 181, 217, 253, 289, 325, 361, 397, 433),]

WeeklyPay2024 <- fread("PROV - Work Region Occupation SOC20 (2) Table 3.1a   Weekly pay - Gross 2024.csv")
HourlyPay2024 <- fread("PROV - Work Region Occupation SOC20 (2) Table 3.5a   Hourly pay - Gross 2024.csv")
AnnualPay2024 <- fread("PROV - Work Region Occupation SOC20 (2) Table 3.7a   Annual pay - Gross 2024.csv")
HoursWorked2024 <- fread("PROV - Work Region Occupation SOC20 (2) Table 3.9a   Paid hours worked - Total 2024.csv")

#WeeklyPay2024 <- setnames(WeeklyPay2024, c("Description", "Number of jobs (thousands)", "Median", "Median annual % change", "Mean", "Mean annual % change", "10 percentile", "20 percentile", "25 percentile", "30 percentile", "40 percentile", "50 percentile", "60 percentile", "70 percentile", "80 percentile", "90 percentile", "Date"), c("Description", "Number of jobs","Median","Annual % change","Mean","Mean: Annual % change","10 percentile","20 percentile","25 percentile","30 percentile","40 percentile","50 percentile","60 percentile", "70 percentile","80 percentile","90 percentile", "Date"))
#HourlyPay2024 <- setnames(HourlyPay2024, c("Description", "Number of jobs (thousands)", "Median", "Median annual % change", "Mean", "Mean annual % change", "10 percentile", "20 percentile", "25 percentile", "30 percentile", "40 percentile", "50 percentile", "60 percentile", "70 percentile", "80 percentile", "90 percentile", "Date"), c("Description", "Number of jobs","Median","Annual % change","Mean","Mean: Annual % change","10 percentile","20 percentile","25 percentile","30 percentile","40 percentile","50 percentile","60 percentile", "70 percentile","80 percentile","90 percentile", "Date"))
#AnnualPay2024 <- setnames(AnnualPay2024, c("Description", "Number of jobs (thousands)", "Median", "Median annual % change", "Mean", "Mean annual % change", "10 percentile", "20 percentile", "25 percentile", "30 percentile", "40 percentile", "50 percentile", "60 percentile", "70 percentile", "80 percentile", "90 percentile", "Date"), c("Description", "Number of jobs","Median","Annual % change","Mean","Mean: Annual % change","10 percentile","20 percentile","25 percentile","30 percentile","40 percentile","50 percentile","60 percentile", "70 percentile","80 percentile","90 percentile", "Date"))
#HoursWorked2024 <- setnames(HoursWorked2024, c("Description", "Number of jobs (thousands)", "Median", "Median annual % change", "Mean", "Mean annual % change", "10 percentile", "20 percentile", "25 percentile", "30 percentile", "40 percentile", "50 percentile", "60 percentile", "70 percentile", "80 percentile", "90 percentile", "Date"), c("Description", "Number of jobs","Median","Annual % change","Mean","Mean: Annual % change","10 percentile","20 percentile","25 percentile","30 percentile","40 percentile","50 percentile","60 percentile", "70 percentile","80 percentile","90 percentile", "Date"))

#fwrite(HourlyPay2024, "PROV - Work Region Occupation SOC20 (2) Table 3.5a   Hourly pay - Gross 2024.csv")
#fwrite(WeeklyPay2024, "PROV - Work Region Occupation SOC20 (2) Table 3.1a   Weekly pay - Gross 2024.csv")
#fwrite(HoursWorked2024, "PROV - Work Region Occupation SOC20 (2) Table 3.9a   Paid hours worked - Total 2024.csv")
#fwrite(AnnualPay2024, "PROV - Work Region Occupation SOC20 (2) Table 3.7a   Annual pay - Gross 2024.csv")

RegionsAnnual2024 <- AnnualPay2024[c(1, 37, 73, 109, 145, 181, 217, 253, 289, 325, 361, 397, 433),]
RegionsHoursWorked2024 <- HoursWorked2024[c(1, 37, 73, 109, 145, 181, 217, 253, 289, 325, 361, 397, 433),]
RegionsHourly2024 <- HourlyPay2024[c(1, 37, 73, 109, 145, 181, 217, 253, 289, 325, 361, 397, 433),]
RegionsWeekly2024 <- WeeklyPay2024[c(1, 37, 73, 109, 145, 181, 217, 253, 289, 325, 361, 397, 433),]

abc <- merge(AnnualPay2020Regions, AnnualPay2021Regions, by = c("Date", "Description", "Number of jobs","Median","Annual % change","Mean","Mean: Annual % change","10 percentile","20 percentile","25 percentile","30 percentile","40 percentile","50 percentile","60 percentile", "70 percentile","80 percentile","90 percentile"), all = TRUE)
def <- merge(AnnualPay2022Regions, AnnualPay2023Regions, by = c("Date", "Description", "Number of jobs","Median","Annual % change","Mean","Mean: Annual % change","10 percentile","20 percentile","25 percentile","30 percentile","40 percentile","50 percentile","60 percentile", "70 percentile","80 percentile","90 percentile"), all = TRUE)
RegionsAnnualPay <- merge(abc, def, by = c("Date", "Description", "Number of jobs","Median","Annual % change","Mean","Mean: Annual % change","10 percentile","20 percentile","25 percentile","30 percentile","40 percentile","50 percentile","60 percentile", "70 percentile","80 percentile","90 percentile"), all = TRUE)
RegionsAnnual2024[, Date:= as.Date(Date)]
RegionsAnnualPay[, Date:= as.Date(Date)]
RegionsAnnual2024[, `Mean: Annual % change`:= as.character(`Mean: Annual % change`)]
RegionsAnnual2024[, `Annual % change`:= as.character(`Annual % change`)]
RegionsAnnualPay <- merge(RegionsAnnualPay, RegionsAnnual2024, by = c("Date", "Description", "Number of jobs","Median","Annual % change","Mean","Mean: Annual % change","10 percentile","20 percentile","25 percentile","30 percentile","40 percentile","50 percentile","60 percentile", "70 percentile","80 percentile","90 percentile"), all = TRUE)

abc <- merge(WeeklyPay2020Regions, WeeklyPay2021Regions, by = c("Date", "Description", "Number of jobs","Median","Annual % change","Mean","Mean: Annual % change","10 percentile","20 percentile","25 percentile","30 percentile","40 percentile","50 percentile","60 percentile", "70 percentile","80 percentile","90 percentile"), all = TRUE)
def <- merge(WeeklyPay2022Regions, WeeklyPay2023Regions, by = c("Date", "Description", "Number of jobs","Median","Annual % change","Mean","Mean: Annual % change","10 percentile","20 percentile","25 percentile","30 percentile","40 percentile","50 percentile","60 percentile", "70 percentile","80 percentile","90 percentile"), all = TRUE)
RegionsWeeklyPay <- merge(abc, def, by = c("Date", "Description", "Number of jobs","Median","Annual % change","Mean","Mean: Annual % change","10 percentile","20 percentile","25 percentile","30 percentile","40 percentile","50 percentile","60 percentile", "70 percentile","80 percentile","90 percentile"), all = TRUE)
RegionsWeekly2024[, Date:= as.Date(Date)]
RegionsWeeklyPay[, Date:= as.Date(Date)]
RegionsWeekly2024[, `Mean: Annual % change`:= as.character(`Mean: Annual % change`)]
RegionsWeekly2024[, `Annual % change`:= as.character(`Annual % change`)]
RegionsWeeklyPay <- merge(RegionsWeeklyPay, RegionsWeekly2024, by = c("Date", "Description", "Number of jobs","Median","Annual % change","Mean","Mean: Annual % change","10 percentile","20 percentile","25 percentile","30 percentile","40 percentile","50 percentile","60 percentile", "70 percentile","80 percentile","90 percentile"), all = TRUE)


HourlyPay2020Regions <- HourlyPay2020Regions[, "50 percentile":= as.character("50 percentile")]
HourlyPay2021Regions <- HourlyPay2021Regions[, "50 percentile":= as.character("50 percentile")]
abc <- merge(HourlyPay2020Regions, HourlyPay2021Regions, by = c("Date", "Description", "Number of jobs","Median","Annual % change","Mean","Mean: Annual % change","10 percentile","20 percentile","25 percentile","30 percentile","40 percentile","50 percentile","60 percentile", "70 percentile","80 percentile","90 percentile"), all = TRUE)
def <- merge(HourlyPay2022Regions, HourlyPay2023Regions, by = c("Date", "Description", "Number of jobs","Median","Annual % change","Mean","Mean: Annual % change","10 percentile","20 percentile","25 percentile","30 percentile","40 percentile","50 percentile","60 percentile", "70 percentile","80 percentile","90 percentile"), all = TRUE)
RegionsHourlyPay <- merge(abc, def, by = c("Date", "Description", "Number of jobs","Median","Annual % change","Mean","Mean: Annual % change","10 percentile","20 percentile","25 percentile","30 percentile","40 percentile","50 percentile","60 percentile", "70 percentile","80 percentile","90 percentile"), all = TRUE)
RegionsHourly2024[, Date:= as.Date(Date)]
RegionsHourlyPay[, Date:= as.Date(Date)]
RegionsHourly2024[, `Mean: Annual % change`:= as.character(`Mean: Annual % change`)]
RegionsHourly2024[, `Annual % change`:= as.character(`Annual % change`)]
RegionsHourly2024[,Median := as.character(Median)]
RegionsHourlyPay <- merge(RegionsHourlyPay, RegionsHourly2024, by = c("Date", "Description", "Number of jobs","Median","Annual % change","Mean","Mean: Annual % change","10 percentile","20 percentile","25 percentile","30 percentile","40 percentile","50 percentile","60 percentile", "70 percentile","80 percentile","90 percentile"), all = TRUE)

abc <- merge(HoursWorked2020Regions, HoursWorked2021Regions, by = c("Date", "Description", "Number of jobs","Median","Annual % change","Mean","Mean: Annual % change","10 percentile","20 percentile","25 percentile","30 percentile","40 percentile","50 percentile","60 percentile", "70 percentile","80 percentile","90 percentile"), all = TRUE)
def <- merge(HoursWorked2022Regions, HoursWorked2023Regions, by = c("Date", "Description", "Number of jobs","Median","Annual % change","Mean","Mean: Annual % change","10 percentile","20 percentile","25 percentile","30 percentile","40 percentile","50 percentile","60 percentile", "70 percentile","80 percentile","90 percentile"), all = TRUE)
RegionsHoursWorked <- merge(abc, def, by = c("Date", "Description", "Number of jobs","Median","Annual % change","Mean","Mean: Annual % change","10 percentile","20 percentile","25 percentile","30 percentile","40 percentile","50 percentile","60 percentile", "70 percentile","80 percentile","90 percentile"), all = TRUE)
RegionsHoursWorked2024[, Date:= as.Date(Date)]
RegionsHoursWorked[, Date:= as.Date(Date)]
RegionsHoursWorked2024[, `Mean: Annual % change`:= as.character(`Mean: Annual % change`)]
RegionsHoursWorked2024[, `Annual % change`:= as.character(`Annual % change`)]
RegionsHoursWorked2024[, Mean:= as.character(Mean)]
RegionsHoursWorked <- merge(RegionsHoursWorked, RegionsHoursWorked2024, by = c("Date", "Description", "Number of jobs","Median","Annual % change","Mean","Mean: Annual % change","10 percentile","20 percentile","25 percentile","30 percentile","40 percentile","50 percentile","60 percentile", "70 percentile","80 percentile","90 percentile"), all = TRUE)

fwrite(RegionsAnnualPay, "~/Documents/Documents - Ruby's MacBook Air/RAC Work/MotoringIndex/AnnualPaybyRegion.csv")
fwrite(RegionsWeeklyPay, "~/Documents/Documents - Ruby's MacBook Air/RAC Work/MotoringIndex/WeeklyPaybyRegion.csv")
fwrite(RegionsHourlyPay, "~/Documents/Documents - Ruby's MacBook Air/RAC Work/MotoringIndex/HourlyPaybyRegion.csv")
fwrite(RegionsHoursWorked, "~/Documents/Documents - Ruby's MacBook Air/RAC Work/MotoringIndex/HoursWorkedbyRegion.csv")




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