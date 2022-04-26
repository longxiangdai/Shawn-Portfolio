"Box_M" <- function(x,nv){
# The x is the data vector with the first n1 rows belonging to population 1
#  the (n1+1):n2 rows belonging to population 2, etc.
# nv = (n1,n2,...,ng)'
# The number of groups is the length of nv-vector.
# Box's M-test for equal covariance matrics
# Written by Ruey S. Tsay on April 18, 2008
Box.M=NULL
g=length(nv)
p=dim(x)[2]
S=array(0,dim=c(p,p,g))
Sp=matrix(0,p,p)
n=sum(nv)
deg2=n-g
M = 0
# tmp1 is the sum[(n_i-1)*ln(det(S_i))
# u1 is the sum[1/(n_i-1)]
tmp1=0
u1 = 0
idx=0
for (i in 1:g){
da=x[(idx+1):(idx+nv[i]),]
smtx=cov(da)
S[,,i]=smtx
Sp=(nv[i]-1)*smtx+Sp
tmp1=(nv[i]-1)*log(det(smtx))+tmp1
u1 = u1 + 1.0/(nv[i]-1)
#print("determinant")
#print(det(smtx))
idx=idx+nv[i]
}
Sp=Sp/deg2
M=deg2*log(det(Sp))-tmp1
u = (u1-(1.0/deg2))*(2*p^2+3*p-1)/(6*(p+1)*(g-1))
C = (1-u)*M
nu=p*(p+1)*(g-1)/2
pvalue=1-pchisq(C,nu)
Box.M=cbind(Box.M,c(C,pvalue))
row.names(Box.M)=c("Box.M-C","p.value")
print("Test result:")
print(Box.M)
Box_M <-list(Box.M=M, Test.Stat=C,p.value=pvalue)
}

