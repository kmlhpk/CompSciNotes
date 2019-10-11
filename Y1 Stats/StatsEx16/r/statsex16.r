cross=c(23.5,12,21,22,19.125,21.5,21.125,20.375,18.250,21.625,23.25,21,22.125,23,12)
self=c(17.375,20.375,20,20,18.375,18.625,18.625,15.25,16.5,18,16.25,18,12.75,15.5,18)

diffs = cross-self
diffs_sum = sum(diffs)
diffs_sos = sum(diffs^2)
diffs_mean = mean(diffs)
diffs_sd = sd(diffs)
diffs_sd_manual = sqrt((diffs_sos - (15*(diffs_mean^2)))/(14))

diffs
diffs_sum
diffs_sos
diffs_mean
diffs_sd
diffs_sd_manual

boxplot(cross)
boxplot(self)
outlier_range_c = median(cross) - 1.5*IQR(cross)
outlier_range_c
outlier_range_s = median(self) - 1.5*IQR(self)
outlier_range_s
boxplot(diffs)

cross_o=c(23.5,21,22,19.125,21.5,21.125,20.375,18.250,21.625,23.25,21,22.125,23)
self_o=c(17.375,20,20,18.375,18.625,18.625,15.25,16.5,18,16.25,18,12.75,15.5)

diffs_o = cross_o-self_o
diffs_sum_o = sum(diffs_o)
diffs_sos_o = sum(diffs_o^2)
diffs_mean_o = mean(diffs_o)
diffs_sd_o = sd(diffs_o)
diffs_sd_manual_o = sqrt((diffs_sos_o - (13*(diffs_mean_o^2)))/(12))

diffs_o
diffs_sum_o
diffs_sos_o
diffs_mean_o
diffs_sd_o
diffs_sd_manual_o

