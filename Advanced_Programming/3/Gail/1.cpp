// Gail Rayla Emanuelle Garcia Parayno - 20202029

#include<iostream>
using namespace std;

enum class rna_base{ A = 'A', C = 'C', U = 'U' , G = 'G'};
int score_without_realigning(rna_base const *base1, size_t length1, rna_base const *base2, size_t length2){
    int score = 0;
    for(int i=0;i<min(length1, length2);i++){
        if((base1[i] == rna_base::A && base2[i] == rna_base::U) || 
           (base2[i] == rna_base::A && base1[i] == rna_base::U) ||
           (base2[i] == rna_base::C && base1[i] == rna_base::G) ||
           (base2[i] == rna_base::G && base1[i] == rna_base::C)){
            score++;
        }
        else{
            score--;
        }
    }
    return score;
}
int score_with_aligning(rna_base const *base1, size_t length1, size_t shmt1, rna_base const *base2, size_t length2, size_t shmt2){
    int score = 0;
    int res_length = shmt2 == 0? min(length2 - shmt1, length1) : min(length1 - shmt2, length2 );
    for(int i=0;i<res_length;i++){
        if((base1[i + shmt2] == rna_base::A && base2[i + shmt1] == rna_base::U) || 
            (base2[i + shmt1] == rna_base::A && base1[i + shmt2] == rna_base::U)||
            (base2[i + shmt1] == rna_base::C && base1[i + shmt2] == rna_base::G)||
            (base1[i + shmt2] == rna_base::C && base2[i + shmt1] == rna_base::G)){

            score++;
        }
        else{
            score--;
        }
    }
    return score;
}

int best_alignment(rna_base const *base1, size_t length1, rna_base const *base2, size_t length2, long& shiftamt){

    int best_score = score_without_realigning(base1, length1, base2, length2);;
    int best_alignment = 0;
    int left = length2;
    left = 0-left;
    int right = length1;
    for(int i=left;i<=right;i++){

        int temp ;
        if(i >= 0){
            temp = score_with_aligning(base1, length1, 0, base2, length2, i);
        }
        else{
            temp = score_with_aligning(base1, length1, -i, base2, length2, 0);
        }
        if(temp > best_score ||(temp == best_score && best_alignment > i)){
            best_score = temp;
            best_alignment = i;
        }
    }
    shiftamt = best_alignment;
    return best_score;

}



int main(){
    rna_base *base1, *base2;
    base1 = new rna_base[1000];
    base2 = new rna_base[1000];

    char byte;
    int index = 0;
    int selectbase = 1;
    int length1 = 0, length2=0;;
    while(cin>>byte){
        switch(byte){
            case 'A':
                selectbase == 1?base1[index++]= rna_base::A:base2[index++] = rna_base::A;
                break;
            case 'C':
                selectbase == 1?base1[index++]= rna_base::C:base2[index++] = rna_base::C;
                break;
            case 'U':
                selectbase == 1?base1[index++]= rna_base::U:base2[index++] = rna_base::U;
                break;;
            case 'G':
                selectbase == 1?base1[index++]= rna_base::G:base2[index++] = rna_base::G;
                break;
            case ' ':
                break;
            default:
                selectbase == 1?length1 = index: length2 = index;
                selectbase == 1?selectbase = 2:selectbase = 0;
                index=0;
                break;
        }
        if(selectbase == 0){
            break;
        }
    }

    if(selectbase == 1 or selectbase == 2){
        cout<<"Bad input\n";
        delete[] base1;
        delete[] base2;
        exit(1);
    }
    long best_alignment_value ;
    cout<<"Best score: " <<best_alignment(base1, length1, base2, length2, best_alignment_value)<<endl;
    cout<<"Best alignment: "<<best_alignment_value<<endl;
    
    if(best_alignment_value < 0){
        for(int i=0;i<-best_alignment_value;i++)
            cout<<"  ";
        for(int i=0;i<length1;i++)
            cout<<(char)base1[i]<<" ";
        cout<<endl;
        for(int i=0;i<length2;i++)
             cout<<(char)base2[i]<<" ";
        cout<<endl;
    
    
    }
    if(best_alignment_value >= 0){
        for(int i=0;i<length1;i++)
            cout<<(char)base1[i]<<" ";
        cout<<endl;
        for(int i=0;i<best_alignment_value;i++)
            cout<<"  ";
        for(int i=0;i<length2;i++)
             cout<<(char)base2[i]<<" ";
        cout<<endl;
        
    }
    
    delete[] base1;
    delete[] base2;
    return 0;

}

