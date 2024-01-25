#include<bits/stdc++.h>
#define P(X) cout<<X<<endl;
#define P2(X,Y) cout<<X<<" "<<Y<<endl;
using namespace std;
#define MX 10000

vector<char>vc[MX];
char str[MX][100];
bool mark[MX];
int poss[200];

bool isNon(char ch){
    if(ch=='+'||ch=='-'||ch=='*'||ch=='/'||ch=='^'||ch=='('||ch==')') return 1;
    if(ch>='a'&&ch<='z') return 1;
    if(ch=='#') return 1;
    return 0;
}

/*
5
E=TR
R=+TR|#
T=FY
Y=*FY|#
F=(E)|i
*/

void calc(int pos){
    if(mark[pos]) return;
    char ch;
    int i,j,mr,v,ln=strlen(str[pos]);
    //P2("ss:",str[pos][0]);
    for(i=2;i<ln;i++){
        ch = str[pos][i];
        //P(str[pos])
        if(isNon(ch)){
            vc[pos].push_back(ch);
            while(str[pos][i]!='|'&&i<ln){
                //P(str[pos][i])
                i++;
            }
            //P(i)
        }
        else{
            v = poss[ch];
            mr=0;
            calc(v);
            //P2(ch,i)
            for(j=0;j<vc[v].size();j++){
                if(vc[v][j]!='#') {
                    vc[pos].push_back(vc[v][j]);
                }
                else mr=1;
            }
            if(!mr) break;
        }
    }
    //P(pos)
    mark[pos] = 1;
}

void first(int n){
    int i,j;
    for(i=0;i<n;i++){
        //P(i)
        if(!mark[i])calc(i);
    }
}

bool mr[MX];

void print(int n){
    int i,j;
    char ch;
    for(i=0;i<n;i++){
        memset(mr,0,sizeof mr);
        cout<<str[i][0]<<" = { ";
        for(j=0;j<vc[i].size();j++){
            ch = vc[i][j];
            if(j+1!=vc[i].size()&&!mr[ch]) cout<<ch<<" , ";
            else if(!mr[i]) cout<<ch;
            mr[ch]=1;
        }
        cout<<" }\n";
    }
}

int main(){
    int i,j,k,l,m,n;
    freopen("14first.txt","r",stdin);
    cin>>n;
    for(i=0;i<n;i++){
        cin>>str[i];
        poss[str[i][0]] = i;
    }
    first(n);
    print(n);
    return 0;
}


