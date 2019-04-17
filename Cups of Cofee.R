

cups_rm = list()

sims = 100000

for(i in 1:sims){

a = 0
b = 0

while(a<51&b<51){
  
  samp = sample(0:1,size=1,
         prob = c(.5,.5))
  
  if(samp==1){
    a = a+1
  } else{
    b=b+1
  }
  
}

cups_rm[i] = 50 - min(a,b) 

}

mean(unlist(cups_rm))

sum(unlist(cups_rm)==0)/sims


