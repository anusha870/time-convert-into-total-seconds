#include <iostream>
#include <iomanip>
/* run this program using the console pauser or add your own getch, system("pause") or input loop */
using namespace std;
class time {
	private :
		int seconds;
		int hh,mm,ss;
		public :
			void gettime(void);
			void convertintoseconds(void);
			void displaytime(void);
};
void time::gettime(void){
	cout<<"enter time:"<<endl;
	cout<<"hours?";           cin>>hh;
	cout<<"minutes?";         cin>>mm;
	cout<<"seconds?";         cin>>ss;
}
void time::convertintoseconds(void){
	seconds = hh*3600 + mm*60 +ss;
}
void time::displaytime(void){
	cout<<"the time is ="<< setw(2) <<setfill('0')<<hh<<":"
	                    <<setw(2) <<setfill('0')<<mm<<":"
	                    <<setw(2) <<setfill('0')<<ss<<endl;
	cout<<"time in total seconds :" << seconds;                  
}
int main(){
	time T;
	T.gettime();
	T.convertintoseconds();
	T.displaytime();
	return 0;
}
