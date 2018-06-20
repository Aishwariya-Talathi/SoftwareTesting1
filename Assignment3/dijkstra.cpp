#include <thread>
#include <iostream>
#include <chrono>
#include <mutex>
#include <condition_variable>
#include <random>

const int n = 10;
std::thread P[n];
int x[n];




void specialProcess()
{
  while(true)
  {
      std::this_thread::sleep_for(std::chrono::milliseconds(1));
      if (x[0] == x[n-1])
      {
          x[0] = (x[0] + 1) % n;
      }	
  }		
}

void process(int i) 
{
  while(true)
  {
    std::this_thread::sleep_for(std::chrono::milliseconds(1));
    if (x[i] != x[i-1])
    {
        x[i] = x[i-1];
    }
  }		
}


int main ()
{
    x[0] = 0;
    P[0] = std::thread(specialProcess);
    for (int i=1; i<n; i++)
    {
        x[i] = 0;
        P[i] = std::thread(process,i);
    }

    for (auto& p : P) p.join();

    return 0;
}
