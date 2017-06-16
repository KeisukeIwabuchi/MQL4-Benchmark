//+------------------------------------------------------------------+
//|                                                    Benchmark.mqh |
//|                                 Copyright 2017, Keisuke Iwabuchi |
//|                                        https://order-button.com/ |
//+------------------------------------------------------------------+
#property strict


#ifndef _LOAD_MODULE_BENCHMARK
#define _LOAD_MODULE_BENCHMARK


#define BenchmarkRun(function_name, roop) \
   if(roop > 0) { \
      Benchmark::roop_count = roop; \
   } \
   Benchmark::Start(); \
   for(int benchmark_roop = 0; benchmark_roop < Benchmark::roop_count; benchmark_roop++) { \
       function_name ; \
   } \
   Benchmark::End();


/** ベンチマーク用クラス */
class Benchmark
{
   private:
      static string benchmark_name;
      static uint  time;

   public:
      static int   roop_count;
      
      static void Start(const string name = "");
      static void End(void);
};


/** @var string benckmark_name ベンチマーク名 */
static string Benchmark::benchmark_name = "";


/** @var uint time ベンチマーク開始時間 */
static uint Benchmark::time = 0;


/** @var int roop_count ループ回数 */
static int Benchmark::roop_count = 10000;


/** 計測を開始する */
static void Benchmark::Start(const string name = "")
{
   Benchmark::benchmark_name = name;
   Print("*------------------ Benchmark Start ------------------*");
   Benchmark::time = GetTickCount();
}


/** 計測を終了して経過時間を出力する */
static void Benchmark::End(void)
{
   Print("Benchmark ", Benchmark::benchmark_name, " : ",
         (double)(GetTickCount() - Benchmark::time) / 1000, 
         "[sec]");
   Print("*------------------- Benchmark End -------------------*");
}


#endif 
