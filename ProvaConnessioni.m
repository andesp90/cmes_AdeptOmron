% PROVA INVIO INFORMAZIONI A ACE

con = tcpip('127.0.0.1',4001,'NetworkRole', 'client')

fopen(con)

startheader =[11 121 13 ] %+cmd
stopheader = [21 221 23]
cmd = 1;
subcmd = 0;

% payload = zeros(1,13,'int32');

payload(1) = 2         % numero di pezzi per ogni pallet
payload(2)= 1           % numero di pallet
payload(3) = 1          % numero di cicli che il robot deve fare

payload(4) = 20     % inclinazione dei pallet rispetto la y del frame della base del robot

payload(5) = 10          % distanza tra i pezzi sul singolo pallet (lungo l'asse y del frame definito sul primo pezzo del pallet)
payload(6) = 100     % distanza tra i pallet (lungo l'asse x del frame definito sul primo pezzo del pallet)

payload(7) = 100          % altezza dell'approach sul singolo pezzo

payload(8) = 300    % punto iniziale, asse X
payload(9) = 300    % punto iniziale, asse Y
payload(10) = 0      % punto iniziale, asse Z

payload(11) = 400         % punto di rilascio, asse X
payload(12) = -400        % punto di rilascio, asse Y
payload(13) = 50    % punto di rilascio, asse Z


% PL = typecast(payload,'uint8')
PL = zeros(1,13*8,'uint8')
for i=1:13
    PL((i-1)*8+1:(i-1)*8+8)= fliplr(typecast(payload(i),'uint8'))
end
data = [uint8(startheader) uint8([cmd subcmd]) PL uint8(stopheader)]



% data = fliplr(data)

fwrite(con,data)
% typecast(fliplr(),'uint8')
%% 3
data(4)=2;
fwrite(con,data)
%%



% payload = [nz np  ]


%%


fread(con,1)