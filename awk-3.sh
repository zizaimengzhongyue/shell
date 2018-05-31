awk '{ans=($2+$3+$4)/3;if(ans>=80) print $0" : A";else if(ans<80 && ans>=60) print $0" : B";else if(ans<60 && ans>=50) print $0" : C"; else print$0" : FAIL";}'
