awk 'BEGIN{count=0;}{count++;if(count%2==0)print $0;else printf $0";"}'
