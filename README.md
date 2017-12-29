# MQL4-Benchmark
Module for measuring execution speed.


## Install
1. Download Benchmark.mqh
2. Save the file to /MQL4/Include/mql4_modules/Benchmark/Benchmark.mqh


## Usage
1. Include Benchmark.mqh.
2. Execute the **Start** method before the processing you want to measure.
3. Execute the **End** method after the processing you want to measure.
4. Elapsed time is output to the Experts tab.

``` cpp
#include <Benchmark.mqh>

int OnInit()
{
   // Start measurement.
   Benchmark::Start("Sample");
   
   for(int i = 0; i < 1000000; i++) {
      // Some processing.
   }
   
   // End measurement.
   Benchmark::End();
   
   return(INIT_SUCCEEDED);
}
```

Instead of running the Start and End methods, you can also use BenchmarkRun.  
``` cpp
int sum(int a, int b, int c)
{
   return(a + b + c);
}

int OnInit()
{
   // Output the time taken to execute the function sum one million times.
   BenchmarkRun(sum(100, 200, 300), 1000000); 
   
   return(INIT_SUCCEEDED);
}
```

