#include <WProgram.h>

#include <IOShieldTemp.h>
#include <IOShieldOled.h>

int tensc = 0;
int onesc = 0;
int dot_tensc = 0;
int dot_onesc = 0;
int tensf = 0;
int onesf = 0;
int dot_tensf = 0;
int dot_onesf = 0;
int tempC = 0;
int tempF = 0;

void setup()
{
  IOShieldOled.begin();
  IOShieldOled.displayOn();
  IOShieldTemp.config(IOSHIELDTEMP_ONESHOT | IOSHIELDTEMP_RES12);
}

void loop()
{
  float tempf, tempc;

  // Get Temperature in Celsius.
  tempc = IOShieldTemp.getTemp();

  // Convert the result to Fahrenheit
  tempf = IOShieldTemp.convCtoF(tempc);

  // parse data for temperature in celsius
  tempC = tempc * 100;
  dot_onesc = tempC % 10;
  tempC = tempC / 10;
  dot_tensc = tempC % 10;
  tempC = tempC / 10;
  onesc = tempC % 10;
  tempC = tempC / 10;
  tensc = tempC % 10;

  // convert data to ASCII for temperature in celsius
  tensc = tensc + 48;
  onesc = onesc + 48;
  dot_tensc = dot_tensc + 48;
  dot_onesc = dot_onesc + 48;

  // parse data for temperature in Fahrenheit
  tempF = tempf * 100;
  dot_onesf = tempF % 10;
  tempF = tempF / 10;
  dot_tensf = tempF % 10;
  tempF = tempF / 10;
  onesf = tempF % 10;
  tempF = tempF / 10;
  tensf = tempF % 10;

  // convert data to ASCII for temperature in Fahrenheit
  tensf = tensf + 48;
  onesf = onesf + 48;
  dot_tensf = dot_tensf + 48;

  // Clear the virtual buffer
  IOShieldOled.clearBuffer();

  IOShieldOled.setCursor(0, 0);
  IOShieldOled.putString("Tempertaure is");
  IOShieldOled.setCursor(0, 2);
  IOShieldOled.putChar(tensc);
  IOShieldOled.setCursor(1, 2);
  IOShieldOled.putChar(onesc);
  IOShieldOled.setCursor(2, 2);
  IOShieldOled.putString(".");
  IOShieldOled.setCursor(3, 2);
  IOShieldOled.putChar(dot_tensc);
  IOShieldOled.setCursor(4, 2);
  IOShieldOled.putChar(dot_onesc);
  IOShieldOled.setCursor(6, 2);
  IOShieldOled.putString(" Degrees C");
  IOShieldOled.setCursor(0, 3);
  IOShieldOled.putChar(tensf);
  IOShieldOled.setCursor(1, 3);
  IOShieldOled.putChar(onesf);
  IOShieldOled.setCursor(2, 3);
  IOShieldOled.putString(".");
  IOShieldOled.setCursor(3, 3);
  IOShieldOled.putChar(dot_tensf);
  IOShieldOled.setCursor(4, 3);
  IOShieldOled.putChar(dot_onesf);
  IOShieldOled.setCursor(6, 3);
  IOShieldOled.putString(" Degrees F");
  
  delay(1000);
}
