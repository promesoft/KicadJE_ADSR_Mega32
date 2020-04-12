/***************************************************
 Simple AVR sketch to blink an LED (or similar)
 connected to PB0 (Arduino pin D0)
 Note that the compiled sketch is significally
 smaller that the original Arduino blink sketch.
 A detailed explaination about debugging, port and
 pin definitions can be watched here:
 https://www.youtube.com/watch?v=plJf0r7IcWc
***************************************************/ 


#include <avr/io.h>
#include <util/delay.h>

#define D101row 0b00000100 // ADSR3G8
#define ADSR3G8 0b00000100
#define D102row 0b00000100 // ADSR2
#define ADSR2   0b00000100
#define D103row 0b00000100 // VU 0
#define VU0 0b00000100 //
#define D104row 0b00000100 // ADSR1
#define ADSR1   0b00000100

#define D105row 0b00001000 // VU 3
#define VU3 0b00001000
#define D106row 0b00001000 // ADSR2G8
#define ADSR2G8 0b00001000
#define D107row 0b00001000 // ADSR3
#define ADSR3   0b00001000 
#define D108row 0b00001000 // ADSR4G8
#define ADSR4G8 0b00001000 

#define D109row 0b00010000 // VU 1
#define VU1     0b00010000
#define D110row 0b00010000 // VU 4
#define VU4     0b00010000
#define D111row 0b00010000 // ADSR4
#define ADSR4   0b00010000 
#define D112row 0b00010000 // VU 5
#define VU5     0b00010000

#define D113row 0b00100000 // VU 2
#define VU2     0b00100000 
#define D114row 0b00100000 // VU 7
#define VU7     0b00100000 
#define D115row 0b00100000 // VU 6
#define VU6     0b00100000 
#define D116row 0b00100000 // ADSR1G8
#define ADSR1G8 0b00100000

char col_0_LED = 0x00;
char col_1_LED = 0x00;
char col_2_LED = 0x00;
char col_3_LED = 0x00;
int counter = 0, inc = 0;

int main(void)
{       

  /************************************************ 
   A few different ways to set a pin as output and 
   ignore the rest of the pins. Pick your favorite!
  *************************************************/
//  DDRB |= 0x0F; // XXXXXXXX | 00000001 = XXXXXXX1
//  DDRB |= 0b00000011;
//  PORTB = 0x00;
//  DDRC |= 0xFF; // XXXXXXXX | 00000001 = XXXXXXX1
//  DDRC |= 0b11111100;
//  PORTC = 0x00;
  //DDRB |= _BV(PB0); // Set PB0 as output, ignore the rest
  //DDRB |= (1 << PB0); // Shift the number '1' left 'PB0' times (PB0 = 1)

  DDRB |= (1 << PB0);
  DDRB |= (1 << PB1);

  DDRC |= (1 << PB2);
  DDRC |= (1 << PB3);
  DDRC |= (1 << PB4);
  DDRC |= (1 << PB5);
  DDRC |= (1 << PB6);
  DDRC |= (1 << PB7);

  /************************************************ 
   A few different ways to set a pin as input and 
   ignore the rest of the pins.
  *************************************************/
  //DDRB &= ~0x01; //00000001 -> 11111110 & XXXXXXXX = XXXXXXX0
  //DDRB &= ~_BV(PB0); 
  //DDRB &= ~(1 << PB0);

  DDRA &= ~(1 << PA0); //Left bottom+0 input pot
  DDRA &= ~(1 << PA1); //Left bottom+1 input pot  

/*
  ADCSRA |= (1 << ADPS2) | (1 << ADPS1) | (1 << ADPS0); // Set ADC prescaler to 128 - 125KHz sample rate @ 16MHz

  ADMUX |= (1 << REFS0); // Set ADC reference to AVCC
  ADMUX |= (1 << ADLAR); // Left adjust ADC result to allow easy 8 bit reading

  // No MUX values needed to be changed to use ADC0

//  ADCSRA |= (1 << ADFR);  // Set ADC to Free-Running Mode
  ADCSRA |= (1 << ADEN);  // Enable ADC

  ADCSRA |= (1 << ADIE);  // Enable ADC Interrupt
  sei();  // Enable Global Interrupts

  ADCSRA |= (1 << ADSC);  // Start A2D Conversions

*/
  // Infinite loop
  while(1)
  {
    /*********************************************** 
     A few different ways to set a pin high and 
     ignore the rest of the pins. 
    ************************************************/
    //PORTB |= 0x01;  // XXXXXXXX | 00000001 = XXXXXXX1
    //PORTB |= _BV(PB0);
    //PORTB |= (1 << PB0);
    //SetPinHigh(&PORTB, 0); 
    
    /*********************************************** 
     A few different ways to set a pin low and 
     ignore the rest of the pins.
    ************************************************/
    //PORTB &= ~0x01;  // 00000001 -> 11111110 & XXXXXXXX = XXXXXXX0
    //PORTB &= ~_BV(PB0);
    //PORTB &= ~(1 << PB0);
    //SetPinLow(&PORTB, 0);

    counter++;
    counter=counter+inc;
    if (counter >= 100) {
      col_2_LED |= VU0;
      col_3_LED |= ADSR1;
      if (counter >= 200) {
        col_0_LED |= VU1;
        col_3_LED &= ~ADSR1;
        col_3_LED |= ADSR1G8;
        if (counter >= 300) {
          col_0_LED |= VU2;
          col_3_LED &= ~ADSR1G8;
          col_1_LED |= ADSR2;
          if (counter >= 400) {
            col_0_LED |= VU3;
            col_1_LED &= ~ADSR2;
            col_1_LED |= ADSR2G8; 
            if (counter >= 500) {
              col_1_LED |= VU4; 
              col_1_LED &= ~ADSR2G8;
              col_2_LED |= ADSR3; 
              if (counter >= 600) {
                col_3_LED |= VU5; 
                col_2_LED &= ~ADSR3; 
                col_0_LED |= ADSR3G8; 
                if (counter >= 700) {
                  col_2_LED |= VU6; 
                  col_0_LED &= ~ADSR3G8; 
                  col_2_LED |= ADSR4; 
                  if (counter >= 800) {
                    col_1_LED |= VU7; 
                    col_2_LED &= ~ADSR4; 
                    col_3_LED |= ADSR4G8; 
                    if (counter >= 850) {
                      counter = 0;
                      col_0_LED = 0x00;
                      col_1_LED = 0x00;
                      col_2_LED = 0x00;
                      col_3_LED = 0x00;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    for (int column = 0; column < 4; column++) {
      _delay_ms(1);
      if (column == 0) {
        SetPinLow(&PORTC, 6); //D22
        PORTC |= col_0_LED;
      }
      else SetPinHigh(&PORTC, 6);
      if (column == 1) {
        SetPinLow(&PORTC, 7); //D23
        PORTC |= col_1_LED;
      }
      else SetPinHigh(&PORTC, 7);
      if (column == 2) {
        SetPinLow(&PORTB, 1); //D1
        PORTC |= col_2_LED;
      }
      else SetPinHigh(&PORTB, 1);
      if (column == 3) {
        SetPinLow(&PORTB, 0); //D0
        PORTC |= col_3_LED;
      }
      else SetPinHigh(&PORTB, 0);

      _delay_ms(1);
      PORTC = 0x00;
    }
  }
  return 0;
}

ISR(ADC_vect)
{
  inc = ADCH >> 4;
}

// Method to set a pin HIGH
void SetPinHigh(volatile byte *port, byte pin)
{
  *port |= (1 << pin); // The number '1' are shifted left 'pin' times
}

// Method to set pin LOW
void SetPinLow(volatile byte *port, byte pin)
{
  *port &= ~(1 << pin); // The number '1' are shifted left 'pin' times
}
