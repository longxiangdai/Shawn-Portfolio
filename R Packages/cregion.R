"cregion" <- function(da,alpha=0.05,length=FALSE){
# The data matrix is "da".
# Written by Ruey S. Tsay for Bus 41912 class.
#
if(!is.matrix(da))da=as.matrix(da)
 nr = nrow(da)
 nc = ncol(da)
 cm=matrix(colMeans(da),1,nc)
 s=cov(da)
 simucr=matrix(0,nc,2)
 dg2=nr-nc
 cr=qf((1-alpha),nc,dg2)
 cr1=sqrt(nc*(nr-1)*cr/(nr-nc))
 se=sqrt(diag(s))/sqrt(nr)
 for (i in 1:nc){
 simucr[i,1]=cm[i]-cr1*se[i]
 simucr[i,2]=cm[i]+cr1*se[i]
}
 print("C.R. based on T^2")
 print(simucr)
 
 indvcr=matrix(0,nc,2)
 q=1-(alpha/2)
 cr=qt(q,(nr-1))
 for (i in 1:nc){
 indvcr[i,1]=cm[i]-cr*se[i]
 indvcr[i,2]=cm[i]+cr*se[i]
}
 print("CR based on individual t")
 print(indvcr)

 bonfcr=matrix(0,nc,2)
 q=1-(alpha/(2*nc))
 cr=qt(q,(nr-1))
 for (i in 1:nc){
 bonfcr[i,1]=cm[i]-cr*se[i]
 bonfcr[i,2]=cm[i]+cr*se[i]
}
 print("CR based on Bonferroni")
 print(bonfcr)

 asymcr=matrix(0,nc,2)
 cr=sqrt(qchisq((1-alpha),nc))
 for (i in 1:nc) {
 asymcr[i,1]=cm[i]-cr*se[i]
 asymcr[i,2]=cm[i]+cr*se[i]
}
 print("Asymp. simu. CR")
 print(asymcr)

 if(length){
  print("Lengths of confidence intervals:")
  leng=matrix(0,nc,4)
  leng[,1]=simucr[,2]-simucr[,1]
  leng[,2]=indvcr[,2]-indvcr[,1]
  leng[,3]=bonfcr[,2]-bonfcr[,1]
  leng[,4]=asymcr[,2]-asymcr[,1]
  colnames(leng) <- c("T^2","ind-t","Bonf","Asym")
  print(leng,digits=3)
  }
}
