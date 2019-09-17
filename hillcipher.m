%% 
%% 
%% 
%Encryption method: The origial message reads 'CLASSIFIED' which is
%encoded as 'LUCUIYILRQ' by using Hill Cipher encrytption as shown below
%The steps for the same are 1) Key definition 2) message in letters
%3)converted to ASCII 4)Hill Cipher modulo conversion 
 
%Encryption%
P= [2 3; 1 4]
m= 'CONFIDENTIAL'
m_vec= double(m)
m_hc= m_vec-65
M= reshape(m_hc,2,6)
E=P*M
E=mod(E,26)
n= reshape(E,1,12)
ascii=n+65
cipher_text= char(ascii)

%% %Decryption%
D=inv(P)
y=26/5;     
D(1,1)+y    % D(1,1) is the 1,1 entry of D.Run this once, saw it was an integer between 0 and 26 so done
D(1,1)=ans  % here I'm reassigning the 1,1 entry of D to be the above answer
D(1,2) + y + y + y % Re-run it several times, adding another "a" each time until you get integer between 0 and 26
D(1,2)=ans % reassigning the 1,2 entry of D to be the previous answer
D(2,1)+y
D(2,1)=ans
D(2,2)+y+y+y
D(2,2)=ans
x=double(cipher_text);
x=x-65;    % convert to numbers from 0 to 25
E2=reshape(x,2,6)
c=D*E2
c=mod(c,26)
c=reshape(c,1,12)
c=c+65;
plain_text=char(c)




