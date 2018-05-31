awk '{aver=($2+$3+$4)/3;if(aver>=50) print $1" : Pass";else print $1" : Fail";}'
