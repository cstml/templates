#include <iostream>
#include <fstream>

// Logger for Kattis fast testing
#define debug true
#if debug //logger that depends on the state of debug above
#define cin in
#define cout out
  std::ifstream in ("in.in");
  std::ofstream out ("out.out");
#define endl std::endl
#else
  using namespace std;
#endif

int main()
{
#if debug
  printf("Debug mode on don't forget to turn it off \n");
  printf("Reading from in.in\n");
  printf("Writing to out.out\n");
#endif
  int a;
  cin>>a;
  cout<<a<<endl;
  return 0;
}
