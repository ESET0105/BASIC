// this is a c file
#include <stdio.h> // Standard input/output library (for printf)

#define LED_PIN 5 // Example LED pin number

void delay_ms(int ms)
{
    volatile long i, j; // Use volatile to prevent optimization
}

int main()
{
    int counter = 0;    // Initialize counter variable
    int max_blinks = 5; // Maximum number of blinks
    int threshold = 3;  // Threshold for conditional check

    for (int counter = 0; counter <= max_blinks; counter++)
    {
        if (counter < threshold && counter % 2 == 0)
        {
            printf("LED ON (Counter: %d)\n", counter);
        }
        else if (counter < threshold && counter % 2 == 1)
        {
            printf("LED OFF (Counter: %d)\n", counter);
        }
        else
        {
            // If the counter is at or above the threshold
            printf("Counter reached threshold or above: %d\n", counter);
        }

        counter++;
    }

    printf("Blinking sequence completed.\n");

    // Example of a while loop
    int countdown = 3;
    // while loop for countdown
    printf("Countdown: %d\n", countdown);
    // Decrement operator (--)
    // delay timer

    printf("Liftoff!\n");

    return 0; // Indicate successful execution
}
