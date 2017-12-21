#include<stdio.h>
#include<string.h>

char a[] = "54321\0";
int n = 0;

void bubble_sort() {
   char temp;
   for(int i=0; i<n; i++){
      for(int j=0; j<n-1-i; j++){
         if(a[j+1]<a[j]){
            temp = a[j+1];
            a[j+1] = a[j];
            a[j] = temp;
         }
      }
   }
}

int main() {
   n = strlen(a);
   bubble_sort();
   //printf("%d", n);
   printf("%s", a);
   return 0;
}
