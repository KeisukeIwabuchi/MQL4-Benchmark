# MQL4-Benchmark
MQL4で実行速度を計測したい時に使うモジュール。


## Install
1. Benchmark.mqhをダウンロード
2. データフォルダを開き、/MQL4/Includes/mql4_modules/Benchmark/Benchmark.mqhとして保存


## Usage
1. Benchmark.mqhを読み込む
2. 処理の前にBenchmarkクラスのStartメソッドを実行
3. 処理の後にBenchmarkクラスのEndメソッドを実行
4. 操作履歴に実行にかかった時間が出力される

``` cpp
#include <Benchmark.mqh>

int OnInit()
{
   // 計測を開始
   Benchmark::Start("Sample");
   
   for(int i = 0; i < 1000000; i++) {
      // 何らかの処理
   }
   
   // 計測終了
   Benchmark::End();
   
   return(INIT_SUCCEEDED);
}
```

StartメソッドとEndメソッドを実行する代わりに、BechmarkRunを利用することも可能です。  
BechmarkRunの第一引数に計測したい処理を、第二引数に繰り返したい回数を指定します。

``` cpp
int sum(int a, int b, int c)
{
   return(a + b + c);
}

int OnInit()
{
　   // 関数sumを1,000,000回だけ実行にかかった時間を出力する
   BenchmarkRun(sum(100, 200, 300), 1000000); 
   
   return(INIT_SUCCEEDED);
}
```

