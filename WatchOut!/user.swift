//
//  user.swift
//  WatchOut!
//
//  Created by Derek Wu on 2017/4/9.
//  Copyright © 2017年 Xintong Wu. All rights reserved.
//

import Foundation
import CoreLocation
//import SwiftCSV

//var user_info = [[String]]()
//var locationManager: CLLocationManager = CLLocationManager()
//
//class user{

let user_info = [
["A2268910,3430,309355,90229,CALIFORNIA,34.228206,-119.056086"],
["A2269021,32770,1034447,862039,CALIFORNIA,35.651368,-117.684289"],
["A2269234,102062,3087546,2684822,CALIFORNIA,33.973963,-118.372967"],
["A2298485,375,226229,9865,CALIFORNIA,37.692803,-122.084945"],
["A2298673,704593,21323534,18534838,CALIFORNIA,34.263166,-118.401551"],
["A2298689,34236,1078046,900614,CALIFORNIA,32.752206,-117.230068"],
["A2298928,40960,1292979,1077483,CALIFORNIA,33.83835,-117.96747"],
["A2298965,250,31074,3288,CALIFORNIA,38.445181,-122.70751"],
["A2298985,250,577082,3288,CALIFORNIA,38.448052,-122.735544"],
["A2298994,4880,194136,128372,CALIFORNIA,40.581813,-122.384395"],
["A2299394,161000,4887750,4235223,CALIFORNIA,37.45397,-122.185926"],
["A2299638,100320,4649801,2638991,CALIFORNIA,36.852363,-119.771926"],
["A2299778,7540,620092,198345,CALIFORNIA,37.994654,-122.102082"],
["A2299780,65665,2072839,1727366,CALIFORNIA,38.765842,-121.27153"],
["A2300033,58575,1771987,1540858,CALIFORNIA,37.759618,-122.425353"],
["A2301061,37765,1142451,993436,CALIFORNIA,33.993466,-118.11281"],
["A2301645,2262705,68478103,59522107,CALIFORNIA,37.93994,-122.06342"],
["A2301760,26585,839205,699338,CALIFORNIA,38.481074,-120.849087"],
["A2301774,20775,628477,546502,CALIFORNIA,37.752001,-122.160581"],
["A2301878,42595,1344591,1120493,CALIFORNIA,37.27867,-121.9394"],
["A2302009,329995,10416912,8680760,CALIFORNIA,37.695682,-121.737953"],
["A2303419,35390,1495086,930960,CALIFORNIA,37.482417,-122.207384"],
["A2303500,62770,1898892,1651211,CALIFORNIA,37.860993,-122.251463"],
["A2303518,37300,1142451,981204,CALIFORNIA,36.912567,-121.76123"],
["A2303569,16725,1041707,439963,CALIFORNIA,37.7918198,-122.3999724"],
["A2303698,250,94898,3288,CALIFORNIA,37.672829,-121.86697"],
["A2304752,52525,1588965,1381709,CALIFORNIA,37.67429,-121.76146"],
["A2304753,18320,554209,481921,CALIFORNIA,37.67429,-121.76132"],
["A2304882,20205,959436,531507,CALIFORNIA,36.3304,-119.2692"],
["A2305096,10360,566625,272527,CALIFORNIA,37.728642,-122.404361"],
["A2305150,77781,2376446,2046087,CALIFORNIA,37.747885,-122.41276"],
["A2305209,11350,358284,298570,CALIFORNIA,35.612201,-118.481763"],
["A2305221,59135,1866707,1555589,CALIFORNIA,36.664292,-121.6567"],
["A2307747,250,214063,3288,CALIFORNIA,37.746461,-122.39713"],
["A2308456,56020,1768377,1473647,CALIFORNIA,37.972867,-122.532647"],
["A2340941,250,18907,3288,CALIFORNIA,33.598768,-117.639254"],
["A2340976,4150,469755,109169,CALIFORNIA,36.97453,-122.02732"],
["A2341146,9995,315511,262926,CALIFORNIA,37.300957,-121.870277"],
["A2341430,47180,1427270,1241104,CALIFORNIA,34.108041,-118.059296"],
["A2239410,26910,849465,707887,CALIFORNIA,33.659435,-118.001459"],
["A2268474,78375,2474054,2061712,CALIFORNIA,33.85155,-117.85278"],
["A2268795,369040,11164048,9707868,CALIFORNIA,33.853972,-118.394169"],
["A2290485,375,44391,9865,CALIFORNIA,37.307484,-120.485718"],
["A2291615,1708809,51709330,44951482,CALIFORNIA,33.661128,-117.632724"],
["A2291617,13915,480408,366044,CALIFORNIA,33.755071,-117.872794"],
["A2292318,94250,2975178,2479315,CALIFORNIA,34.033424,-117.312435"],
["A2292388,250,105387,3288,CALIFORNIA,32.874664,-117.206503"],
["A2293193,250,239889,6576,CALIFORNIA,37.8443,-122.290477"],
["A2293240,92795,2807197,2441040,CALIFORNIA,37.761333,-122.436485"],
["A2293276,16315,515014,429178,CALIFORNIA,37.34288,-121.91453"],
["A2293302,4145,616343,109037,CALIFORNIA,38.25968,-122.067263"],
["A2294001,214695,6654292,5647709,CALIFORNIA,33.723488,-118.049066"],
["A2294003,3080,298702,81022,CALIFORNIA,33.14259,-117.20175"],
["A2294554,375,77931,9865,CALIFORNIA,37.7853289,-122.4074714"],
["A2294708,35640,1896380,937536,CALIFORNIA,37.897327,-122.537724"],
["A2294720,60785,1918793,1598994,CALIFORNIA,37.307588,-121.874698"],
["A2294728,112620,3428867,2962552,CALIFORNIA,37.827354,-122.261515"],
["A2295630,219160,6930350,5765164,CALIFORNIA,34.420672,-117.383149"],
["A2295763,375,403957,9865,CALIFORNIA,37.31885,-122.031091"],
["A2296341,20935,1227754,550711,CALIFORNIA,33.138428,-117.22182"],
["A2296391,84625,2671347,2226123,CALIFORNIA,33.954758,-117.244422"],
["A2296464,35395,2166672,931091,CALIFORNIA,37.764801,-122.243209"],
["A2296494,7925,994949,208473,CALIFORNIA,36.32699,-119.27339"],
["A2296744,73170,2213509,1924790,CALIFORNIA,37.762119,-122.395198"],
["A2296747,68600,2075259,1804573,CALIFORNIA,37.7708446,-122.4230562"],
["A2297423,12215,635481,321325,CALIFORNIA,34.059369,-118.237479"],
["A2297476,250,38637,3288,CALIFORNIA,33.755496,-117.95447"],
["A2297806,250,345592,6576,CALIFORNIA,35.373828,-119.012083"],
["A2297995,3695,288837,97200,CALIFORNIA,33.15666,-117.35039"],
["A2298024,1806914,54662038,47532207,CALIFORNIA,32.783163,-117.107645"],
["A2298104,100285,3033781,2638070,CALIFORNIA,33.929718,-117.960899"],
["A2340533,117290,3548209,3085399,CALIFORNIA,37.7972438,-122.421052"],
["A2340534,21880,1971746,575569,CALIFORNIA,34.00058,-117.68378"],
["A2340651,56380,1779741,1483117,CALIFORNIA,38.657378,-121.185657"],
["A2237412,19700,701048,518223,CALIFORNIA,34.24278,-117.285273"],
["A2237598,68705,2092805,1807335,CALIFORNIA,32.750795,-117.146925"],
["A2237642,1250,147970,32882,CALIFORNIA,33.884,-117.561261"],
["A2237730,39435,1195997,1037367,CALIFORNIA,33.729089,-117.825787"],
["A2238058,203750,6181610,5359793,CALIFORNIA,33.668966,-117.993999"],
["A2238091,250,257862,3288,CALIFORNIA,33.918259,-117.24491"],
["A2238141,51470,2375802,1353956,CALIFORNIA,33.731201,-117.846057"],
["A2238247,100140,3029394,2634256,CALIFORNIA,33.472481,-117.701217"],
["A2238249,72490,2199140,1906903,CALIFORNIA,33.73997,-116.95772"],
["A2238250,86145,2612830,2266107,CALIFORNIA,33.774003,-118.140121"],
["A2238363,73095,2211240,1922818,CALIFORNIA,33.993907,-117.422568"],
["A2238368,28175,889397,741164,CALIFORNIA,33.767794,-117.851931"],
["A2238371,250,26141,3288,CALIFORNIA,33.788488,-118.320843"],
["A2238385,250,88124,3288,CALIFORNIA,34.0657382,-118.4105388"],
["A2238492,123975,3750441,3261253,CALIFORNIA,33.793181,-118.121868"],
["A2238605,3750,162602,98646,CALIFORNIA,33.575582,-117.182072"],
["A2238932,250,191059,6576,CALIFORNIA,33.828373,-117.798772"],
["A2239016,983973,29795783,25884123,CALIFORNIA,33.732279,-117.832611"],
["A2239033,166630,5114637,4383324,CALIFORNIA,33.756803,-117.953347"],
["A2239038,250,2076075,6576,CALIFORNIA,33.67332,-117.88336"],
["A2239085,17625,825671,463639,CALIFORNIA,33.870631,-117.931719"],
["A2239088,18980,599139,499283,CALIFORNIA,33.980251,-117.690984"],
["A2239296,300,26306,7892,CALIFORNIA,33.679659,-117.887269"],
["A2239401,28510,907706,749976,CALIFORNIA,33.205771,-117.24585"],
["A2267769,76000,2299121,1999236,CALIFORNIA,34.195968,-118.422871"],
["A2267789,76020,2299726,1999762,CALIFORNIA,34.094653,-118.32365"],
["A2267803,110355,3483563,2902969,CALIFORNIA,34.201607,-118.418659"],
["A2267812,250,15783,6313,CALIFORNIA,33.817011,-118.385896"],
["A2268183,250,59517,3288,CALIFORNIA,34.155346,-118.479739"],
["A2281776,278935,8491319,7337589,CALIFORNIA,32.71969,-117.00206"],
["A2282178,40650,1558943,1069328,CALIFORNIA,35.370244,-119.016783"],
["A2282693,173495,5248500,4563913,CALIFORNIA,34.026389,-118.396174"],
["A2282698,250,331617,3288,CALIFORNIA,33.91926,-118.41623"],
["A2282800,27685,887661,728274,CALIFORNIA,37.33573,-121.903547"],
["A2282840,250,18578,3288,CALIFORNIA,37.79979,-122.43745"],
["A2283081,129636,3921698,3410173,CALIFORNIA,32.579771,-117.128478"],
["A2283313,26145,1280037,687763,CALIFORNIA,34.149383,-118.118694"],
["A2283639,78330,2369607,2060528,CALIFORNIA,34.056113,-118.393572"],
["A2283730,26415,833839,694866,CALIFORNIA,34.04859,-118.35454"],
["A2284022,250,119198,3288,CALIFORNIA,37.79992,-122.2714"],
["A2284298,910,372062,23938,CALIFORNIA,37.666653,-121.860686"],
["A2284391,304650,9216148,8014041,CALIFORNIA,37.773321,-122.401517"],
["A2284500,52920,1670519,1392099,CALIFORNIA,39.703668,-121.791159"],
["A2284690,112570,3553484,2961236,CALIFORNIA,34.163051,-118.284729"],
["A2284695,25575,807323,672769,CALIFORNIA,34.08124,-118.38523"],
["A2285034,16135,604374,424443,CALIFORNIA,40.28703,-121.24731"],
["A2285038,188920,5736761,4969679,CALIFORNIA,38.935366,-119.94291"],
["A2285099,250,470346,1315,CALIFORNIA,38.08311,-121.2875"],
["A2285108,90045,2724005,2368700,CALIFORNIA,37.767306,-122.447539"],
["A2285150,35860,1257414,943324,CALIFORNIA,36.975254,-122.018805"],
["A2285313,50135,1582605,1318838,CALIFORNIA,37.76953,-122.20933"],
["A2285372,14605,461034,384195,CALIFORNIA,37.858754,-122.484378"],
["A2285495,10710,338081,281734,CALIFORNIA,37.327302,-121.896467"],
["A2285527,250,65107,3288,CALIFORNIA,37.98303,-122.32844"],
["A2286502,259745,7857700,6832782,CALIFORNIA,34.06947,-118.38339"],
["A2286623,128620,3977026,3383443,CALIFORNIA,34.067782,-118.386411"],
["A2286882,950895,28766088,25013989,CALIFORNIA,35.249689,-120.631432"],
["A2287104,51990,1572780,1367635,CALIFORNIA,32.752491,-117.106543"],
["A2287123,3000,317050,78917,CALIFORNIA,33.9175,-117.24637"],
["A2287211,29345,2403226,771942,CALIFORNIA,34.004293,-117.349212"],
["A2287241,3110,271607,81811,CALIFORNIA,33.78085,-116.46938"],
["A2287619,30105,1590576,791934,CALIFORNIA,37.56706,-122.32444"],
["A2287672,21120,666692,555577,CALIFORNIA,37.797798,-122.427963"],
["A2287889,16200,1412223,426153,CALIFORNIA,36.728608,-119.798029"],
["A2288172,250,206763,1315,CALIFORNIA,32.843881,-116.880699"],
["A2288202,7220,646726,189927,CALIFORNIA,33.158303,-117.351425"],
["A2288262,44175,1336364,1162056,CALIFORNIA,37.939528,-122.346696"],
["A2288267,60330,1904430,1587025,CALIFORNIA,37.73512,-122.42462"],
["A2288286,1128825,34164938,29694568,CALIFORNIA,37.54182,-121.97875"],
["A2288328,39890,1259203,1049336,CALIFORNIA,37.403963,-121.903896"],
["A2288606,36860,1163555,969629,CALIFORNIA,37.96767,-122.51544"],
["A2288629,4835,152626,127188,CALIFORNIA,39.44126,-123.804193"],
["A2288938,32940,1039813,866511,CALIFORNIA,37.729924,-122.13921"],
["A2289584,34025,1074063,895053,CALIFORNIA,38.690853,-121.447829"],
["A2339975,20290,871213,533743,CALIFORNIA,38.95677,-122.64764"],
["A2340149,257500,7789785,6773726,CALIFORNIA,37.7953772,-122.4206415"],
["A2340291,139085,4390479,3658733,CALIFORNIA,36.985755,-121.965616"],
["A2267204,250,65929,3288,CALIFORNIA,34.169428,-118.57651"],
["A2267219,75330,2278852,1981611,CALIFORNIA,34.150494,-118.2421"],
["A2267368,55370,2970049,1456548,CALIFORNIA,33.987398,-117.870499"],
["A2267409,37440,1132620,984887,CALIFORNIA,33.845606,-118.39007"],
["A2267415,250,12824,3288,CALIFORNIA,34.062243,-118.095527"],
["A2267572,23900,754448,628707,CALIFORNIA,33.5828,-117.65891"],
["A2277925,66565,2013697,1751041,CALIFORNIA,37.783779,-122.470599"],
["A2277930,35595,1115679,936353,CALIFORNIA,37.92615,-122.345366"],
["A2277980,440355,13358347,11583861,CALIFORNIA,38.641101,-121.32697"],
["A2278026,37090,1122030,975678,CALIFORNIA,36.684806,-119.736293"],
["A2278070,250,41103,3288,CALIFORNIA,39.235527,-121.053506"],
["A2278365,21750,686580,572150,CALIFORNIA,37.47624,-122.20895"],
["A2278501,104680,3201980,2753684,CALIFORNIA,32.7112,-117.142963"],
["A2278900,330940,10030823,8705619,CALIFORNIA,34.168137,-118.520763"],
["A2278942,56630,1728425,1489694,CALIFORNIA,33.802294,-118.063404"],
["A2278962,87990,2708728,2314641,CALIFORNIA,34.136216,-118.26159"],
["A2278992,41435,1307974,1089978,CALIFORNIA,33.965338,-118.210331"],
["A2279072,16260,513277,427731,CALIFORNIA,32.67781,-117.0991"],
["A2279073,31325,965933,824027,CALIFORNIA,32.752287,-117.163477"],
["A2279083,2985,230044,78523,CALIFORNIA,32.851916,-116.93238"],
["A2279286,125125,3785230,3291505,CALIFORNIA,34.104602,-118.145605"],
["A2279724,53470,1617553,1406568,CALIFORNIA,37.859528,-122.256128"],
["A2279836,85560,3093390,2250718,CALIFORNIA,38.67893,-121.256203"],
["A2280025,1257665,38051814,33083799,CALIFORNIA,34.279734,-118.472462"],
["A2280411,250,158821,3288,CALIFORNIA,33.734476,-116.234119"],
["A2280692,375,270620,9865,CALIFORNIA,37.89567,-122.051858"],
["A2281215,37380,3137945,983308,CALIFORNIA,32.882907,-117.226339"],
["A2281341,512796,16187365,13489470,CALIFORNIA,33.991734,-118.139004"],
["A2281449,375,577279,9865,CALIFORNIA,34.106172,-118.037007"],
["A2281639,628205,19020386,16525393,CALIFORNIA,38.280517,-122.035415"],
["A2281680,87540,2655636,2302804,CALIFORNIA,37.654474,-122.417669"],
["A2339504,110395,3339625,2904021,CALIFORNIA,34.141169,-118.230542"],
["A2263352,77400,2443276,2036064,CALIFORNIA,34.269683,-118.703274"],
["A2263480,467705,14148821,12303323,CALIFORNIA,34.319018,-118.444433"],
["A2263567,154120,4679165,4054239,CALIFORNIA,34.074788,-118.385132"],
["A2263571,48800,1476278,1283720,CALIFORNIA,34.007867,-118.488406"],
["A2263603,3170,307974,83389,CALIFORNIA,34.09058,-118.36324"],
["A2263674,3155,518881,82995,CALIFORNIA,33.63269,-117.93588"],
["A2263742,250,20716,3288,CALIFORNIA,33.873536,-118.396328"],
["A2263761,47740,1444211,1255836,CALIFORNIA,33.878751,-118.361715"],
["A2264028,259175,7840456,6817788,CALIFORNIA,34.173189,-118.380609"],
["A2264087,56590,1711938,1488641,CALIFORNIA,33.88053,-118.296706"],
["A2264167,33705,1026588,886635,CALIFORNIA,34.259048,-118.31606"],
["A2264247,219491,6670520,5773883,CALIFORNIA,34.096887,-118.29579"],
["A2264309,250,23346,3288,CALIFORNIA,34.164538,-118.62616"],
["A2264368,250,26141,3288,CALIFORNIA,34.03046,-117.80948"],
["A2264571,36640,1108418,963842,CALIFORNIA,34.08392,-118.288863"],
["A2264796,70578,2135086,1856597,CALIFORNIA,33.999117,-118.434742"],
["A2264891,127545,3858439,3355165,CALIFORNIA,34.050774,-118.368543"],
["A2264979,653095,19757164,17180142,CALIFORNIA,34.09313,-118.33397"],
["A2265044,250,161780,3288,CALIFORNIA,34.205589,-118.420759"],
["A2265457,80925,2451438,2128791,CALIFORNIA,33.856384,-118.388061"],
["A2265753,51225,1567638,1347511,CALIFORNIA,34.190383,-118.45191"],
["A2265877,72035,2273920,1894933,CALIFORNIA,33.742311,-118.036882"],
["A2265936,52840,1598494,1389995,CALIFORNIA,33.943292,-118.329123"],
["A2265958,19600,625024,515592,CALIFORNIA,34.031601,-118.44504"],
["A2265995,60170,1820238,1582816,CALIFORNIA,33.896961,-118.154672"],
["A2266017,13035,866708,342895,CALIFORNIA,33.90046,-118.3117"],
["A2266027,250,159097,6576,CALIFORNIA,34.03989,-117.6068"],
["A2266220,47790,1445724,1257151,CALIFORNIA,34.067252,-118.267235"],
["A2266310,68665,2112482,1806283,CALIFORNIA,34.03026,-118.496073"],
["A2266513,860,56229,22623,CALIFORNIA,34.13822,-118.15012"],
["A2266706,135970,4292149,3576790,CALIFORNIA,34.018139,-118.489267"],
["A2266835,69770,2202421,1835351,CALIFORNIA,33.99499,-117.882158"],
["A2277446,55275,1679417,1454049,CALIFORNIA,32.742596,-117.102955"],
["A2277562,250,31074,3288,CALIFORNIA,36.75839,-119.80079"],
["A2277687,7500,338423,197293,CALIFORNIA,34.322995,-118.465632"],
["A2277694,133240,4045092,3504976,CALIFORNIA,34.150121,-118.361844"],
["A2334465,29005,915597,762998,CALIFORNIA,39.92813,-122.18826"],
["A2334579,375,122486,9865,CALIFORNIA,37.129785,-121.661859"],
["A2334705,129985,4103221,3419351,CALIFORNIA,37.357914,-122.033007"],
["A2335316,7175,226492,188744,CALIFORNIA,32.7097627,-117.1492415"],
["A2335487,13668,425303,359539,CALIFORNIA,35.389833,-118.879568"],
["A2335780,25000,1033618,657643,CALIFORNIA,33.73406,-117.84598"],
["A2336234,250,72604,3288,CALIFORNIA,37.306891,-121.879194"],
["A2337246,3000,217022,78917,CALIFORNIA,32.906,-117.24323"],
["A2337357,55475,1751173,1459311,CALIFORNIA,36.98121,-121.95526"],
["A2337500,73615,2323796,1936496,CALIFORNIA,33.864527,-118.39704"],
["A2338395,14200,514146,373541,CALIFORNIA,33.81495,-116.51134"],
["A2338523,2725,194169,71683,CALIFORNIA,37.373112,-121.990278"],
["A2338584,1765,567612,46430,CALIFORNIA,34.06329547,-118.3758746"],
["A2338649,625,53434,16441,CALIFORNIA,37.66579,-122.12109"],
["A2338845,3450,108906,90755,CALIFORNIA,34.166547,-118.351837"],
["A2339012,15265,769771,401557,CALIFORNIA,38.898053,-121.071041"],
["A2339028,45815,1385977,1205197,CALIFORNIA,34.030446,-117.906738"],
["A2339209,250,689539,6576,CALIFORNIA,33.673407,-117.668319"],
["A2339311,250,117554,3288,CALIFORNIA,33.834806,-118.315842"],
["A2261163,42635,2511638,1121545,CALIFORNIA,33.89186,-118.164615"],
["A2261318,51930,1570965,1366057,CALIFORNIA,34.023445,-118.162472"],
["A2261434,250,46364,3288,CALIFORNIA,34.2571,-118.996418"],
["A2261513,95435,2887061,2510488,CALIFORNIA,34.031891,-118.494296"],
["A2261543,250,87467,3288,CALIFORNIA,33.776284,-118.379424"],
["A2261672,151625,4586898,3988607,CALIFORNIA,33.959067,-118.407249"],
["A2261706,117155,3544125,3081848,CALIFORNIA,34.031627,-118.493204"],
["A2262100,2590,283905,68132,CALIFORNIA,34.04869,-118.24038"],
["A2262203,63725,1927783,1676333,CALIFORNIA,33.874055,-118.375804"],
["A2262239,26565,803634,698812,CALIFORNIA,34.030532,-118.362664"],
["A2262285,40455,1223828,1064198,CALIFORNIA,33.938285,-118.208958"],
["A2262458,93395,2825347,2456824,CALIFORNIA,33.865249,-118.350585"],
["A2262510,250,96180,3288,CALIFORNIA,33.628442,-117.909642"],
["A2262626,109410,3309827,2878110,CALIFORNIA,33.825666,-118.313883"],
["A2262688,18235,575622,479685,CALIFORNIA,33.902185,-118.341442"],
["A2262911,130160,4007731,3423954,CALIFORNIA,34.021832,-118.496488"],
["A2263003,7500,328822,197293,CALIFORNIA,34.301427,-118.703176"],
["A2276797,250,29101,3288,CALIFORNIA,39.9338,-120.899935"],
["A2277233,134115,4233592,3527993,CALIFORNIA,34.168257,-118.358816"],
["A2277270,1717740,52030470,45186409,CALIFORNIA,34.070531,-117.781014"],
["A2277289,78455,2376111,2063816,CALIFORNIA,34.025416,-118.502522"],
["A2323859,130420,4519114,3430794,CALIFORNIA,37.687493,-122.464805"],
["A2324176,52100,2203763,1370529,CALIFORNIA,34.022105,-117.809877"],
["A2324308,36490,1126543,959896,CALIFORNIA,32.830496,-117.277251"],
["A2426183,250,41103,3288,CALIFORNIA,32.59513,-117.08496"],
["A2426289,250,60372,3288,CALIFORNIA,33.803517,-117.98522"],
["A2426302,31250,986465,822054,CALIFORNIA,33.13836,-117.13899"],
["A2426381,64300,1945177,1691459,CALIFORNIA,34.001899,-118.478196"],
["A2426936,15105,476818,397348,CALIFORNIA,34.024422,-118.34677"],
["A2427158,2830,776743,74445,CALIFORNIA,34.17077,-118.8376"],
["A2427466,17355,547843,456536,CALIFORNIA,37.444035,-121.917148"],
["A2427699,14785,466716,388930,CALIFORNIA,33.643128,-117.925336"],
["A2427963,17695,552243,465480,CALIFORNIA,38.937344,-121.075951"],
["A2427992,720769,21804405,18960353,CALIFORNIA,34.067696,-118.453903"],
["A2428151,250,12002,3288,CALIFORNIA,37.981683,-121.25526"],
["A2428200,250,8878,3288,CALIFORNIA,34.142266,-118.070229"],
["A2428774,250,122519,3288,CALIFORNIA,33.556209,-117.675006"],
["A2428815,55125,2507594,1450104,CALIFORNIA,33.04616,-116.86175"],
["A2428880,14545,467979,382617,CALIFORNIA,38.619591,-121.417798"]]
