hold on

xMin = 0;
xMax = 310;
% yMin = 0.09;
% yMax = 0.13;
trueAns =  0.11597029453799788728018393090163;
yMin = -20;
yMax = 0;
X = 1:xMax;

TwoLvlMCX = [39.1719,39.1719,39.1719,39.1719,39.1719,...
             80.75,80.75,80.75,80.75,80.75,...
             249.5156,249.5156,249.5156,249.5156,249.5156,...
             ];
        
TwoLvlMCY = [
             0.13307777777777777777777777777778, 0.10614444444444444444444444444444, 0.11974444444444444444444444444444, 0.13778888888888888888888888888889, 0.12515555555555555555555555555556,...
             0.11765625, 0.13356875000000001385558334732195, 0.1061375, 0.14436874999999999014121954132861, 0.11755,...
             0.11306800000000000183675297193986, 0.12003600000000000380673270683474, 0.1095, 0.13316, 0.13202800000000000646416253857751,...
            ];

TwoLvlMCYMean = arrayfun(@(i) mean(TwoLvlMCY((5*i-4):(5*i))), 1:(length(TwoLvlMCY)/5));

OneLvlISX = [ 59.6406,59.6406,59.6406,59.6406,59.6406,...
             104.9219,104.9219,104.9219,104.9219,104.9219,...
             251.0469,251.0469,251.0469,251.0469,251.0469,...
            ];
        
OneLvlISY = [0.10975675107949868503087742510615, 0.10632173460535401798843224696611, 0.12236298752952427804085999696326, 0.11343430963929758414909798602821, 0.1129232583671020556659314593162,...
             0.11188865607885670194754368367285, 0.10346122996771789370740179947461, 0.11180365876180814455054246536747, 0.12190201767475696004172647235464, 0.11323465693726786351902546812198,...
             0.12018084252842264891825152517413, 0.10908290193115473265539350222753, 0.11726992910798203495481573099823, 0.12174351533360486254942145478708, 0.10988758802637700606741333331229,...
            ];

OneLvlISYMean = arrayfun(@(i) mean(OneLvlISY((5*i-4):(5*i))), 1:(length(OneLvlISY)/5));

TwoLvlISX = [91.4688,91.4688,91.4688,91.4688,91.4688,...
    132.0781,132.0781,132.0781,132.0781,132.0781,...
    294.125,294.125,294.125,294.125,294.125,...
            ];
        
TwoLvlISY = [0.12217370046171487085739926214956, 0.12385744469818130153448976216168, 0.11432202573784262800149491567936, 0.10057669653774432838577723714479, 0.12280924838456580561185660371848,...
0.12002853465376277231069224171733, 0.11083221472012441677357230673806, 0.11264603448027965537647787641617, 0.10449255885208433292099527989194, 0.12232677391535010102963099143381,...         
 0.11537972400540578987726547666171, 0.11348133681875245681869301961342, 0.10547442887806517120008464871717, 0.12286921001513896600787489887807, 0.11653226637045180358320806135453,...
];

TwoLvlISYMean = arrayfun(@(i) mean(TwoLvlISY((5*i-4):(5*i))), 1:(length(TwoLvlISY)/5));

OneLvlISEX = [32.1563,32.1563,32.1563,32.1563,32.1563,...
    69.1094,69.1094,69.1094,69.1094,69.1094,...
    134.4063,134.4063,134.4063,134.4063,134.4063,...
            ];
        
OneLvlISEY = [0.15980682025883269359312066626444, 0.1177212962186233169425975120248, 0.12406550694347674712592066725847, 0.1158139107759364738736707067801, 0.1065467622599366864788450470769,...
    0.1163995752260553462331671426, 0.1429629834322730941309487207036, 0.13805167929297709750180445098522, 0.1130732951588969692480191042705, 0.1008335145783956082743415549885,...
    0.12743335877494360586226207487925, 0.093686452740623676893605420445965, 0.14075586637391973576782788768469, 0.12047605595488779239854437719259, 0.1264428242954382386464828869066
             ];

OneLvlISEYMean = arrayfun(@(i) mean(OneLvlISEY((5*i-4):(5*i))), 1:(length(OneLvlISEY)/5));

% GISEX = [56.9063,56.9063,56.9063,56.9063,56.9063,...
%     107.4688,107.4688,107.4688,107.4688,107.4688,...
%     188.9844,188.9844,188.9844,188.9844,188.9844,...
%             ];
%         
% GISY = [0.0014886283719551642382161737998558, 0.0015220568952208641654716414493009, 0.002754604081017607460080132142366, 0.0076916543028507054768905248920419, 0.001137334048263946486428954685266,...
%     0.0017442101749054910765635018066178, 0.0027329984907256063553226965723297, 0.0023622062387602255073559831544117, 0.0019308347006530774195298683082456, 0.0054601549610090163375253347055605,...
%     0.0020557307695454741895690897734994, 0.0029305272119954381762618744744486, 0.012461166656706740285542878154956, 0.0025309660082034881808943360681496, 0.0051017993465097234359606481746141,...
%              ];
% 
% GISYMean = arrayfun(@(i) mean(GISY((5*i-4):(5*i))), 1:(length(GISY)/5));

s1 = scatter(TwoLvlMCX,log10(TwoLvlMCY),'r', 'filled');
s2 = scatter(OneLvlISX,log10(OneLvlISY),'g', 'filled');
s4 = scatter(OneLvlISEX,log10(OneLvlISEY),'black', 'filled');
s3 = scatter(TwoLvlISX,log10(TwoLvlISY),'b', 'filled');
% s5 = scatter(TwoLvlISX,log(GISY),'y', 'filled');
%alpha(s1,0.4);
%alpha(s2,0.4);
%alpha(s3,0.4);

%plot(unique(TwoLvlMCX),TwoLvlMCYMean,'r','LineWidth',3)
%plot(unique(OneLvlISX),OneLvlISYMean,'g','LineWidth',3)
%plot(unique(TwoLvlISX),TwoLvlISYMean,'b','LineWidth',3)
r1 = refline(0,log10(trueAns));
r1.Color = 'r';
r1.LineStyle = '--';

% legend('2LvlMC','1LvlISZ','1LvlISE','2LvlIS','GlassermanIS','True Ans','location','southeast');
legend('2LvlMC','1LvlISZ','1LvlISE','2LvlIS','True Ans','location','southeast');
xlabel('Runtime (Seconds)');
ylabel('log(P(L > l))');
axis([xMin,xMax,yMin,yMax]);

hold off