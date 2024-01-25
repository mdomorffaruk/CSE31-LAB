#include<bits/stdc++.h>
using namespace std;

vector<char>ed[200];
char st,tmp[1000],ch,ara[10000];
int in=0,in1=0;
char ans[10000];

char dfs(char val){
    //cout<<val<<endl;
    if(val<'A'||val>'Z'){
        return val;
    }
    int i,x = (int) val;
    char tmpch;
    for(i=0;i<ed[x].size();i++){
       // cout<<ed[x][i]<<endl;
        if(i==0||ed[x][i-1]=='|'){
            tmpch = dfs(ed[x][i]);
            while(tmpch=='#'&&i<ed[x].size()){
                i++;
                cout<<
                if(i<ed[x].size()){
                    tmpch = dfs(ed[x][i]);
                }
            }
            if(in1!=0) ans[in1++] = ' ';
            ans[in1++] = tmpch;
        }
    }
}

int main(){
    int i,j,k,l,m,n,x;

    freopen("test.txt","r",stdin);

    cin>>n;

    for(i=1;i<=n;i++){
        scanf(" %[^\n]s",tmp);
        x = (int) tmp[0];
        ara[in++] = tmp[0];
        for(j=1;tmp[j];j++){
            if(tmp[j]==' '||tmp[j]=='-'||tmp[j]=='>') continue;
            ed[x].push_back(tmp[j]);
        }
    }
    dfs('S');
    ans[in1] = 0;
    cout<<in1<<" "<<ans<<endl;
    return 0;

    for(i=0;i<in;i++){
        in1=0;
        dfs(ara[i]);
        ans[in1] = 0;
        cout<<"FIRST ( "<<ara[i]<<" )  = "<<ans<<"\n\n";
    }
    return 0;
}
