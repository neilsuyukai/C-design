#include <iostream>
#include <string>
using namespace std;
int main()
{
    string twoBit;
    cin>>twoBit;
    int sum=0,n=1,total=0,tmp;
    int i=twoBit.length()-1;
    while(i>=0)
    {
        int num=twoBit.at(i)-'0';
        sum=sum+num*n;
        n=n*2;
        i--;
    }
    int base=1;
    while(sum>0)
    {
        tmp=sum%8;
        total=total+tmp*base;
        base=base*10;
        sum=sum/8;
    } 
    cout<<total;
    cout<<endl;
}
