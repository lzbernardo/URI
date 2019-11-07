#include<stdio.h>
int main(){
    int n, sum=0, counter=0;
    while(1){
        scanf("%d", &n);
        if(n<0) break;
        sum+=n;
        counter++;
    }
    printf("%.2f\n", (float)sum/counter);
    return 0;
}
