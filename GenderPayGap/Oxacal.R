results <- oaxaca(formula = BasePay ~ Age + Education + Dept +Seniority + PerfEval | Gender ,data = Glassdoor_Gender_Pay_Gap, R = 1000)
results$n
results$y
results$twofold$overal
columns <- c("group.weight", "coef(unexplained A)", "coef(unexplained B)")
variables<-c("Age","Seniority","PerfEval")
results$twofold$variables[[5]][variables,columns]
plot(results, decomposition = "twofold", group.weight = -1)
