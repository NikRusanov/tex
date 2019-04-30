#include <stdio.h>
int main()
{
 
   int i,j,k;
    unsigned long acc=0;
    for(i=0;i<90000;i++)
        for(j=0;j<5000;j++)
            for(k=0;k<4;k++)
                    acc+=k;
        printf("acc = %lu\n",acc);
   return 0;
} 
