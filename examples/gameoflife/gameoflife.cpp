#include <WProgram.h>
#include <IOShieldOled.h>

#define WIDTH 64
#define HEIGHT 32


uint8_t neighbours[WIDTH][HEIGHT];
uint8_t cells[WIDTH][HEIGHT];

void count_neighbours()
{
  for(i = 0; i < WIDTH; i++) {
    for( j = 0; j < HEIGHT; j++) {
      int k, l;

      if( i > 0 && j > 0 ) {

        neighbours[i][j] = cells[i-1 % WIDTH][j-1 % HEIGHT] + \
                           cells[i][j-1 % HEIGHT] + cells[i+1][j-1 % HEIGHT] + \
                           cells[i-1 % WIDTH][j] + cells[i+1][j] + \
                           cells[i-1 % WIDTH][j+1 % HEIGHT] + cells[i][j+1 % HEIGHT]\
                           + cells[i+1 % WIDTH][j+1 % HEIGHT];
      }
    }
  }

       

void setup()
{
  IOShieldOled.begin();
  
  int i, j;

  for(i = 0; i < WIDTH; i++) {
    for(j = 0; j < HEIGHT; j++) {
      if(rand() % 1000 > 750) {
        cells[i][j] = 1;
      }
      else {
        cells[i][j] = 0;
      }
    }
  }

