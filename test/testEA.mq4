//+------------------------------------------------------------------+
//|                                                       testEA.mq4 |
//|                                 Copyright 2017, Keisuke Iwabuchi |
//|                                        https://order-button.com/ |
//+------------------------------------------------------------------+
#property copyright "Copyright 2017, Keisuke Iwabuchi"
#property link      "https://order-button.com/"
#property version   "1.00"
#property strict


#include <mql4_modules\Benchmark\Benchmark.mqh>


int sum(int a, int b, int c)
{
   return(a + b + c);
}


int OnInit()
{
   BenchmarkRun(sum(1, 2, 3), 1000000);
   BenchmarkRun(((11 + 22 + 33) * 2 - 3) / 5, 1000000);
   
   return(INIT_SUCCEEDED);
}


void OnTick()
{

}
