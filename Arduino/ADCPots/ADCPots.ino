/*
 * https://forum.arduino.cc/index.php?topic=44789.0
 */

volatile long adcbin;
volatile long cnt;


void setup()
{
 Serial.begin(115200);     //begin Serial comm

 adcbin = 0;    //accumulation bin
 cnt = 0;    //count variable

 ADMUX |= (1 << REFS0); // Set ADC reference to AVCC

 ADCSRA |= (1 << ADEN);  // Enable ADC
 ADCSRA |= (1 << ADATE); // Enable auto-triggering
 ADCSRA |= (1 << ADIE);  // Enable ADC Interrupt

 sei();                 // Enable Global Interrupts

 ADCSRA |= (1 << ADSC);  // Start A2D Conversions
}

void loop()
{
 delay(1000);        //Every second:

// ADCSRA &= ~(1 << ADSC);    //Stop ADC
// ADCSRA &= ~(1(ADCSRA,ADIE);    //Disable ADC interrupts

 Serial.print(adcbin,DEC);    //Print the sum of ADC values
 Serial.print("/");
 Serial.print(cnt,DEC);    //divided by the number of samples
 cnt = adcbin / cnt;        
 Serial.println(cnt,DEC);    //Gives you the average sample's ADC value

 cnt = 0;            //Re-initialize
 adcbin = 0;

// ADCSRA |= (1 << ADIE);    //Re-enable ADC interrupts and A2D conversions
// ADCSRA |= (1 << ADSC);
}

ISR(ADC_vect)            //ADC interrupt
{
 uint8_t high,low;
 int aval;

 low = ADCL;            //Make certain to read ADCL first, it locks the values
 high = ADCH;            //and ADCH releases them.

 aval = (high << 8) | low;

 /* for further brevity at cost of clarity

     aval = ADCL | (ADCH << 8);

 also seems to work        */

   adcbin = adcbin + aval;    //accumulate the ADC values
   cnt++;            //iterate the counter

}
