# Tests the code on first 10 stocks

stockVector = list()
BestPrediction = vector()

stockVector[[1]] = read.table("./input/A.csv", sep=",", header=TRUE)
stockVector[[2]] = read.table("./input/AA.csv", sep=",", header=TRUE)
stockVector[[3]] = read.table("./input/AAN.csv", sep=",", header=TRUE)
stockVector[[4]] = read.table("./input/AB.csv", sep=",", header=TRUE)
stockVector[[5]] = read.table("./input/ABC.csv", sep=",", header=TRUE)
stockVector[[6]] = read.table("./input/ABM.csv", sep=",", header=TRUE)
stockVector[[7]] = read.table("./input/ABT.csv", sep=",", header=TRUE)
stockVector[[8]] = read.table("./input/ABV.csv", sep=",", header=TRUE)
stockVector[[9]] = read.table("./input/ABX.csv", sep=",", header=TRUE)
stockVector[[10]] = read.table("./input/ACE.csv", sep=",", header=TRUE)

# Populate the Best Error Vector
  for(i in 1:length(stockVector))
{
    cat("\n*** predicting stock number: ",i) ;
   BestPrediction[i] = findBestPrediction(stockVector[[i]])
   
}
cat("\n\n!!! winning models:", BestPrediction);
