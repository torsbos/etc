#include <stdio.h>
#include <unistd.h>

int sec, min, i;

void work(){

  for (min = 24; min > 0; min--) {
    for (sec = 59; sec > 0; sec--) {
      if (min < 10) {
        printf("0%d:", min);
      } else {
        printf("%d:", min);
      }
      if (sec < 10) {
        printf("0%d\n", sec);
      } else {
        printf("%d\n", sec);
      }
      printf("-----\nwork\n");
      sleep(1);
      printf("\e[1;1H\e[2J"); // clear screen, cursor top left
    }
  }
}

void shortbreak(){

  for (min = 4; min > 0; min--) {
    for (sec = 59; sec > 0; sec--) {
      if (min < 10) {
        printf("0%d:", min);
      } else {
        printf("%d:", min);
      }
      if (sec < 10) {
        printf("0%d\n", sec);
      } else {
        printf("%d\n", sec);
      }
      printf("-----\nbreak\n");
      sleep(1);
      printf("\e[1;1H\e[2J"); // clear screen, cursor top left
    }
  }
}

void obs(){
  int i;
  for (i = 0; i < 4; i++){
    printf("\e[1;1H\e[2J"); // clear screen, cursor top left
    printf("\e[?5h"); // invert colors
    printf("OBS!\n");
    usleep(500 * 1000);
    printf("\e[1;1H\e[2J"); // clear screen, cursor top left
    printf("\e[?5l"); // normal colors
    printf("OBS!\n");
    usleep(500 * 1000);
  }
}

int main(){
  printf("\e[1;1H\e[2J"); // clear screen, cursor top left
  while(1){
    work();
    obs();
    shortbreak();
    obs();
  }
  return 0;
}
