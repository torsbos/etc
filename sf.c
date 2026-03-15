#include <stdio.h>
#include <time.h>
#include <unistd.h>
#include <string.h>

void thetime(){
  time_t now = time(NULL);         // Get current time
  struct tm *t = localtime(&now);  // Convert to local time structure

  if (t->tm_hour < 10) {  
    printf("0%d:", t->tm_hour);
  } else {
    printf("%d:", t->tm_hour);
  }

  if (t->tm_min < 10) {  
    printf("0%d:", t->tm_min);
  } else {
    printf("%d:", t->tm_min);
  }

  if (t->tm_sec < 10) {  
    printf("0%d\n", t->tm_sec);
  } else {
    printf("%d\n", t->tm_sec);
  }
}

void catbattery(){
  FILE *fptr;
  fptr = fopen("/sys/class/power_supply/BAT0/capacity", "r");
  char data[4];
  fgets(data, 4, fptr);
  data[strcspn(data, "\n")] = 0; // remove newline char from data
  if (data[0] != '\0') {
    printf("%s", data);
    printf("%%\n");
  }
}

int main(){
  FILE *fptr;
  printf("\e[1;1H\e[2J"); // clear screen, cursor top left

  while(1){
    thetime();
    catbattery();
    sleep(2);
    printf("\e[1;1H\e[2J"); // clear screen, cursor top left
  }
  fclose(fptr); 
  return 0;
}
