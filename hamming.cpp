#include <iostream>
#include <cstdint>
#include <cmath>
#include <set>

using namespace std;

uint wegner(uint input);

int main(){
	
	const int size = 7;
	int arr[(int)pow(2,size)];
	for (int i=0; i<pow(2,size); i++){
		arr[i] = i;
	}
	
	//base case
	set<int> x;
	x.insert(0);
	
	for (int i=1; i<pow(2,size); i++){
	
		set<int>::iterator it = x.begin();
		while(it!=x.end()){
			if (wegner(arr[i]^(*it))<3) break;
			it++;
		}
		//add to x
		if (it==x.end()){
			x.insert(arr[i]);
		}
	} 
	
	//cout << x.size() << endl;
	
	set<int>::iterator it = x.begin();
	while(it!=x.end()){
		cout << *it << endl;
		it++;
	}
	
	cout << x.size() << endl;
	
	return 0;
}

uint wegner(uint input)
        {
            uint count;
            for (count = 0; input!=0; count++)
            {
                input &= input - 1; // turn off the rightmost 1-bit
            }
            return count;
        }
