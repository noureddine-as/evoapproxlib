/***
* This code is a part of ApproxLib library (ehw.fit.vutbr.cz/approxlib) distributed under a XXXX public license.
* When used, please cite the following article(s): V. Mrazek, Z. Vasicek, L. Sekanina, H. Jiang and J. Han, "Scalable Construction of Approximate Multipliers With Formally Guaranteed Worst Case Error" in IEEE Transactions on Very Large Scale Integration (VLSI) Systems, vol. 26, no. 11, pp. 2572-2576, Nov. 2018. doi: 10.1109/TVLSI.2018.2856362 
* This file is pareto optimal sub-set with respect to the pwr and mre parameters
***/

module mult8_cgp14ep_ep65536_wc16384_2_csamcsa (
    A,
    B,
    O
);

input [7:0] A;
input [7:0] B;
output [15:0] O;

wire sig_225,sig_267,sig_268,sig_299,sig_300,sig_302,sig_328,sig_331;

assign sig_225 = B[7] & A[6]; //1 
assign sig_267 = B[6] & A[7]; //2 
assign sig_268 = B[7] & A[7]; //3 
assign sig_299 = sig_225 | sig_267; //4 
assign sig_300 = sig_225 & sig_267; //5 
assign sig_302 = sig_299 | sig_268; //6 
assign sig_328 = sig_268 ^ sig_300; //7 
assign sig_331 = sig_328 ^ sig_302; //8 

assign O[15] = sig_268;
assign O[14] = sig_331;
assign O[13] = 1'b0;
assign O[12] = 1'b0;
assign O[11] = 1'b0;
assign O[10] = 1'b0;
assign O[9] = 1'b0;
assign O[8] = 1'b0;
assign O[7] = 1'b0;
assign O[6] = 1'b0;
assign O[5] = 1'b0;
assign O[4] = 1'b0;
assign O[3] = 1'b0;
assign O[2] = 1'b0;
assign O[1] = 1'b0;
assign O[0] = 1'b0;

endmodule

module mult8_cgp14ep_ep65536_wc1508_rcam (
    A,
    B,
    O
);

input [7:0] A;
input [7:0] B;
output [15:0] O;

wire sig_72,sig_108,sig_117,sig_118,sig_151,sig_152,sig_154,sig_162,sig_163,sig_187,sig_191,sig_192,sig_193,sig_194,sig_195,sig_196,sig_197,sig_198,sig_199,sig_200;
wire sig_205,sig_206,sig_207,sig_208,sig_209,sig_231,sig_232,sig_233,sig_234,sig_235,sig_236,sig_237,sig_238,sig_239,sig_240,sig_241,sig_242,sig_243,sig_244,sig_245;
wire sig_249,sig_250,sig_251,sig_252,sig_253,sig_262,sig_266,sig_270,sig_271,sig_272,sig_273,sig_274,sig_275,sig_276,sig_277,sig_278,sig_279,sig_280,sig_281,sig_282;
wire sig_283,sig_284,sig_285,sig_286,sig_287,sig_288,sig_289,sig_290,sig_292,sig_293,sig_294,sig_295,sig_296,sig_297,sig_298,sig_300,sig_301,sig_305,sig_306,sig_307;
wire sig_308,sig_309,sig_310,sig_311,sig_312,sig_313,sig_314,sig_315,sig_316,sig_317,sig_318,sig_319,sig_320,sig_321,sig_322,sig_323,sig_324,sig_325,sig_326,sig_327;
wire sig_328,sig_329,sig_330,sig_331,sig_332,sig_333,sig_334,sig_335;

assign sig_72 = B[6] & A[2]; //1 
assign sig_108 = B[7] & sig_72; //2 
assign sig_117 = B[6] & A[3]; //3 
assign sig_118 = B[7] & A[3]; //4 
assign sig_151 = sig_108 | sig_118; //5 
assign sig_152 = sig_118 & B[6]; //6 
assign sig_154 = sig_151 ^ sig_117; //7 
assign sig_162 = B[6] & A[4]; //8 
assign sig_163 = B[7] & A[4]; //9 
assign sig_187 = A[4] & B[5]; //10 
assign sig_191 = sig_154 ^ sig_162; //11 
assign sig_192 = sig_154 & sig_162; //12 
assign sig_193 = sig_191 & sig_187; //13 
assign sig_194 = sig_191 ^ sig_187; //14 
assign sig_195 = sig_192 | sig_193; //15 
assign sig_196 = sig_152 ^ sig_163; //16 
assign sig_197 = sig_152 & sig_163; //17 
assign sig_198 = B[7] & sig_195; //18 
assign sig_199 = sig_196 ^ sig_195; //19 
assign sig_200 = sig_197 | sig_198; //20 
assign sig_205 = B[4] & A[5]; //21 
assign sig_206 = B[5] & A[5]; //22 
assign sig_207 = B[6] & A[5]; //23 
assign sig_208 = B[7] & A[5]; //24 
assign sig_209 = A[2] & sig_118; //25 
assign sig_231 = sig_194 ^ sig_206; //26 
assign sig_232 = sig_194 & sig_206; //27 
assign sig_233 = sig_231 & sig_205; //28 
assign sig_234 = sig_231 ^ sig_205; //29 
assign sig_235 = sig_232 | sig_233; //30 
assign sig_236 = sig_199 ^ sig_207; //31 
assign sig_237 = sig_199 & sig_207; //32 
assign sig_238 = sig_236 & sig_235; //33 
assign sig_239 = sig_236 ^ sig_235; //34 
assign sig_240 = sig_237 | sig_238; //35 
assign sig_241 = sig_200 ^ sig_208; //36 
assign sig_242 = sig_200 & A[5]; //37 
assign sig_243 = sig_208 & sig_240; //38 
assign sig_244 = sig_241 ^ sig_240; //39 
assign sig_245 = sig_242 | sig_243; //40 
assign sig_249 = B[3] & A[6]; //41 
assign sig_250 = B[4] & A[6]; //42 
assign sig_251 = B[5] & A[6]; //43 
assign sig_252 = B[6] & A[6]; //44 
assign sig_253 = B[7] & A[6]; //45 
assign sig_262 = A[2] & B[2]; //46 
assign sig_266 = sig_209 | sig_249; //47 
assign sig_270 = sig_249 & sig_262; //48 
assign sig_271 = sig_234 ^ sig_250; //49 
assign sig_272 = sig_234 & sig_250; //50 
assign sig_273 = sig_271 & sig_270; //51 
assign sig_274 = sig_271 ^ sig_270; //52 
assign sig_275 = sig_272 | sig_273; //53 
assign sig_276 = sig_239 ^ sig_251; //54 
assign sig_277 = sig_239 & sig_251; //55 
assign sig_278 = sig_276 & sig_275; //56 
assign sig_279 = sig_276 ^ sig_275; //57 
assign sig_280 = sig_277 | sig_278; //58 
assign sig_281 = sig_244 ^ sig_252; //59 
assign sig_282 = sig_244 & sig_252; //60 
assign sig_283 = sig_281 & sig_280; //61 
assign sig_284 = sig_281 ^ sig_280; //62 
assign sig_285 = sig_282 | sig_283; //63 
assign sig_286 = sig_245 ^ sig_253; //64 
assign sig_287 = sig_245 & sig_253; //65 
assign sig_288 = sig_253 & sig_285; //66 
assign sig_289 = sig_286 ^ sig_285; //67 
assign sig_290 = sig_287 | sig_288; //68 
assign sig_292 = B[1] & A[7]; //69 
assign sig_293 = B[2] & A[7]; //70 
assign sig_294 = B[3] & A[7]; //71 
assign sig_295 = B[4] & A[7]; //72 
assign sig_296 = B[5] & A[7]; //73 
assign sig_297 = B[6] & A[7]; //74 
assign sig_298 = B[7] & A[7]; //75 
assign sig_300 = B[7] & A[1]; //76 
assign sig_301 = sig_253 ^ sig_270; //77 
assign sig_305 = sig_292 | sig_300; //78 
assign sig_306 = sig_266 ^ sig_293; //79 
assign sig_307 = sig_266 & sig_293; //80 
assign sig_308 = sig_306 & sig_305; //81 
assign sig_309 = sig_306 ^ sig_305; //82 
assign sig_310 = sig_307 | sig_308; //83 
assign sig_311 = sig_274 ^ sig_294; //84 
assign sig_312 = sig_274 & sig_294; //85 
assign sig_313 = sig_311 & sig_310; //86 
assign sig_314 = sig_311 ^ sig_310; //87 
assign sig_315 = sig_312 | sig_313; //88 
assign sig_316 = sig_279 ^ sig_295; //89 
assign sig_317 = sig_279 & sig_295; //90 
assign sig_318 = sig_316 & sig_315; //91 
assign sig_319 = sig_316 ^ sig_315; //92 
assign sig_320 = sig_317 | sig_318; //93 
assign sig_321 = sig_284 ^ sig_296; //94 
assign sig_322 = sig_284 & sig_296; //95 
assign sig_323 = sig_321 & sig_320; //96 
assign sig_324 = sig_321 ^ sig_320; //97 
assign sig_325 = sig_322 | sig_323; //98 
assign sig_326 = sig_289 ^ sig_297; //99 
assign sig_327 = sig_289 & sig_297; //100 
assign sig_328 = sig_326 & sig_325; //101 
assign sig_329 = sig_326 ^ sig_325; //102 
assign sig_330 = sig_327 | sig_328; //103 
assign sig_331 = sig_290 ^ sig_298; //104 
assign sig_332 = sig_290 & A[7]; //105 
assign sig_333 = sig_298 & sig_330; //106 
assign sig_334 = sig_331 ^ sig_330; //107 
assign sig_335 = sig_332 | sig_333; //108 

assign O[15] = sig_335;
assign O[14] = sig_334;
assign O[13] = sig_329;
assign O[12] = sig_324;
assign O[11] = sig_319;
assign O[10] = sig_314;
assign O[9] = sig_309;
assign O[8] = sig_301;
assign O[7] = sig_292;
assign O[6] = sig_206;
assign O[5] = sig_309;
assign O[4] = 1'b0;
assign O[3] = sig_198;
assign O[2] = sig_250;
assign O[1] = sig_152;
assign O[0] = sig_290;

endmodule

// Library = cgp-evoapproxlib
// Circuit = mul8_364.v
// Area   (45) = 618.000000
// Delay  (45) = 1.420000
// Power  (45) = 0.390700
// MAE = 0.000000
// MSE = 0.000000
// MRE = 0.000000 %
// WCE = 0
// WCRE = 0.000000 %
// EP = 0.000000 %

module mul8_364(A, B, O);
  input [7:0] A;
  input [7:0] B;
  output [15:0] O;
  wire [2031:0] N;

  assign N[0] = A[0];
  assign N[1] = A[0];
  assign N[2] = A[1];
  assign N[3] = A[1];
  assign N[4] = A[2];
  assign N[5] = A[2];
  assign N[6] = A[3];
  assign N[7] = A[3];
  assign N[8] = A[4];
  assign N[9] = A[4];
  assign N[10] = A[5];
  assign N[11] = A[5];
  assign N[12] = A[6];
  assign N[13] = A[6];
  assign N[14] = A[7];
  assign N[15] = A[7];
  assign N[16] = B[0];
  assign N[17] = B[0];
  assign N[18] = B[1];
  assign N[19] = B[1];
  assign N[20] = B[2];
  assign N[21] = B[2];
  assign N[22] = B[3];
  assign N[23] = B[3];
  assign N[24] = B[4];
  assign N[25] = B[4];
  assign N[26] = B[5];
  assign N[27] = B[5];
  assign N[28] = B[6];
  assign N[29] = B[6];
  assign N[30] = B[7];
  assign N[31] = B[7];

  AND2X1 n32(.A(N[0]), .B(N[16]), .Y(N[32]));
  AND2X1 n48(.A(N[2]), .B(N[16]), .Y(N[48]));
  AND2X1 n64(.A(N[4]), .B(N[16]), .Y(N[64]));
  AND2X1 n82(.A(N[6]), .B(N[16]), .Y(N[82]));
  AND2X1 n98(.A(N[8]), .B(N[16]), .Y(N[98]));
  AND2X1 n114(.A(N[10]), .B(N[16]), .Y(N[114]));
  AND2X1 n132(.A(N[12]), .B(N[16]), .Y(N[132]));
  AND2X1 n148(.A(N[14]), .B(N[16]), .Y(N[148]));
  assign N[149] = N[148];
  AND2X1 n164(.A(N[0]), .B(N[18]), .Y(N[164]));
  BUFX2 n166(.A(N[149]), .Y(N[166]));
  assign N[167] = N[166];
  AND2X1 n182(.A(N[2]), .B(N[18]), .Y(N[182]));
  AND2X1 n198(.A(N[4]), .B(N[18]), .Y(N[198]));
  AND2X1 n214(.A(N[6]), .B(N[18]), .Y(N[214]));
  AND2X1 n232(.A(N[8]), .B(N[18]), .Y(N[232]));
  AND2X1 n248(.A(N[10]), .B(N[18]), .Y(N[248]));
  AND2X1 n264(.A(N[12]), .B(N[18]), .Y(N[264]));
  AND2X1 n282(.A(N[14]), .B(N[18]), .Y(N[282]));
  HAX1 n298(.A(N[48]), .B(N[164]), .YS(N[298]), .YC(N[299]));
  HAX1 n314(.A(N[64]), .B(N[182]), .YS(N[314]), .YC(N[315]));
  HAX1 n332(.A(N[82]), .B(N[198]), .YS(N[332]), .YC(N[333]));
  HAX1 n348(.A(N[98]), .B(N[214]), .YS(N[348]), .YC(N[349]));
  HAX1 n364(.A(N[114]), .B(N[232]), .YS(N[364]), .YC(N[365]));
  HAX1 n382(.A(N[132]), .B(N[248]), .YS(N[382]), .YC(N[383]));
  HAX1 n398(.A(N[167]), .B(N[264]), .YS(N[398]), .YC(N[399]));
  AND2X1 n414(.A(N[0]), .B(N[20]), .Y(N[414]));
  AND2X1 n432(.A(N[2]), .B(N[20]), .Y(N[432]));
  AND2X1 n448(.A(N[4]), .B(N[20]), .Y(N[448]));
  AND2X1 n464(.A(N[6]), .B(N[20]), .Y(N[464]));
  AND2X1 n482(.A(N[8]), .B(N[20]), .Y(N[482]));
  AND2X1 n498(.A(N[10]), .B(N[20]), .Y(N[498]));
  AND2X1 n514(.A(N[12]), .B(N[20]), .Y(N[514]));
  AND2X1 n532(.A(N[14]), .B(N[20]), .Y(N[532]));
  FAX1 n548(.A(N[314]), .B(N[414]), .C(N[299]), .YS(N[548]), .YC(N[549]));
  FAX1 n564(.A(N[332]), .B(N[432]), .C(N[315]), .YS(N[564]), .YC(N[565]));
  FAX1 n582(.A(N[348]), .B(N[448]), .C(N[333]), .YS(N[582]), .YC(N[583]));
  FAX1 n598(.A(N[364]), .B(N[464]), .C(N[349]), .YS(N[598]), .YC(N[599]));
  FAX1 n614(.A(N[382]), .B(N[482]), .C(N[365]), .YS(N[614]), .YC(N[615]));
  FAX1 n632(.A(N[398]), .B(N[498]), .C(N[383]), .YS(N[632]), .YC(N[633]));
  FAX1 n648(.A(N[282]), .B(N[514]), .C(N[399]), .YS(N[648]), .YC(N[649]));
  AND2X1 n664(.A(N[0]), .B(N[22]), .Y(N[664]));
  AND2X1 n682(.A(N[2]), .B(N[22]), .Y(N[682]));
  AND2X1 n698(.A(N[4]), .B(N[22]), .Y(N[698]));
  AND2X1 n714(.A(N[6]), .B(N[22]), .Y(N[714]));
  AND2X1 n732(.A(N[8]), .B(N[22]), .Y(N[732]));
  AND2X1 n748(.A(N[10]), .B(N[22]), .Y(N[748]));
  AND2X1 n764(.A(N[12]), .B(N[22]), .Y(N[764]));
  AND2X1 n782(.A(N[14]), .B(N[22]), .Y(N[782]));
  FAX1 n798(.A(N[564]), .B(N[664]), .C(N[549]), .YS(N[798]), .YC(N[799]));
  FAX1 n814(.A(N[582]), .B(N[682]), .C(N[565]), .YS(N[814]), .YC(N[815]));
  FAX1 n832(.A(N[598]), .B(N[698]), .C(N[583]), .YS(N[832]), .YC(N[833]));
  FAX1 n848(.A(N[614]), .B(N[714]), .C(N[599]), .YS(N[848]), .YC(N[849]));
  FAX1 n864(.A(N[632]), .B(N[732]), .C(N[615]), .YS(N[864]), .YC(N[865]));
  FAX1 n882(.A(N[648]), .B(N[748]), .C(N[633]), .YS(N[882]), .YC(N[883]));
  FAX1 n898(.A(N[532]), .B(N[764]), .C(N[649]), .YS(N[898]), .YC(N[899]));
  AND2X1 n914(.A(N[0]), .B(N[24]), .Y(N[914]));
  AND2X1 n932(.A(N[2]), .B(N[24]), .Y(N[932]));
  AND2X1 n948(.A(N[4]), .B(N[24]), .Y(N[948]));
  AND2X1 n964(.A(N[6]), .B(N[24]), .Y(N[964]));
  AND2X1 n982(.A(N[8]), .B(N[24]), .Y(N[982]));
  AND2X1 n998(.A(N[10]), .B(N[24]), .Y(N[998]));
  AND2X1 n1014(.A(N[12]), .B(N[24]), .Y(N[1014]));
  AND2X1 n1032(.A(N[14]), .B(N[24]), .Y(N[1032]));
  FAX1 n1048(.A(N[814]), .B(N[914]), .C(N[799]), .YS(N[1048]), .YC(N[1049]));
  FAX1 n1064(.A(N[832]), .B(N[932]), .C(N[815]), .YS(N[1064]), .YC(N[1065]));
  FAX1 n1082(.A(N[848]), .B(N[948]), .C(N[833]), .YS(N[1082]), .YC(N[1083]));
  FAX1 n1098(.A(N[864]), .B(N[964]), .C(N[849]), .YS(N[1098]), .YC(N[1099]));
  FAX1 n1114(.A(N[882]), .B(N[982]), .C(N[865]), .YS(N[1114]), .YC(N[1115]));
  FAX1 n1132(.A(N[898]), .B(N[998]), .C(N[883]), .YS(N[1132]), .YC(N[1133]));
  FAX1 n1148(.A(N[782]), .B(N[1014]), .C(N[899]), .YS(N[1148]), .YC(N[1149]));
  AND2X1 n1164(.A(N[0]), .B(N[26]), .Y(N[1164]));
  AND2X1 n1182(.A(N[2]), .B(N[26]), .Y(N[1182]));
  AND2X1 n1198(.A(N[4]), .B(N[26]), .Y(N[1198]));
  AND2X1 n1214(.A(N[6]), .B(N[26]), .Y(N[1214]));
  AND2X1 n1232(.A(N[8]), .B(N[26]), .Y(N[1232]));
  AND2X1 n1248(.A(N[10]), .B(N[26]), .Y(N[1248]));
  AND2X1 n1264(.A(N[12]), .B(N[26]), .Y(N[1264]));
  AND2X1 n1282(.A(N[14]), .B(N[26]), .Y(N[1282]));
  FAX1 n1298(.A(N[1064]), .B(N[1164]), .C(N[1049]), .YS(N[1298]), .YC(N[1299]));
  FAX1 n1314(.A(N[1082]), .B(N[1182]), .C(N[1065]), .YS(N[1314]), .YC(N[1315]));
  FAX1 n1332(.A(N[1098]), .B(N[1198]), .C(N[1083]), .YS(N[1332]), .YC(N[1333]));
  FAX1 n1348(.A(N[1114]), .B(N[1214]), .C(N[1099]), .YS(N[1348]), .YC(N[1349]));
  FAX1 n1364(.A(N[1132]), .B(N[1232]), .C(N[1115]), .YS(N[1364]), .YC(N[1365]));
  FAX1 n1382(.A(N[1148]), .B(N[1248]), .C(N[1133]), .YS(N[1382]), .YC(N[1383]));
  FAX1 n1398(.A(N[1032]), .B(N[1264]), .C(N[1149]), .YS(N[1398]), .YC(N[1399]));
  AND2X1 n1414(.A(N[0]), .B(N[28]), .Y(N[1414]));
  AND2X1 n1432(.A(N[2]), .B(N[28]), .Y(N[1432]));
  AND2X1 n1448(.A(N[4]), .B(N[28]), .Y(N[1448]));
  AND2X1 n1464(.A(N[6]), .B(N[28]), .Y(N[1464]));
  AND2X1 n1482(.A(N[8]), .B(N[28]), .Y(N[1482]));
  AND2X1 n1498(.A(N[10]), .B(N[28]), .Y(N[1498]));
  AND2X1 n1514(.A(N[12]), .B(N[28]), .Y(N[1514]));
  AND2X1 n1532(.A(N[14]), .B(N[28]), .Y(N[1532]));
  FAX1 n1548(.A(N[1314]), .B(N[1414]), .C(N[1299]), .YS(N[1548]), .YC(N[1549]));
  FAX1 n1564(.A(N[1332]), .B(N[1432]), .C(N[1315]), .YS(N[1564]), .YC(N[1565]));
  FAX1 n1582(.A(N[1348]), .B(N[1448]), .C(N[1333]), .YS(N[1582]), .YC(N[1583]));
  FAX1 n1598(.A(N[1364]), .B(N[1464]), .C(N[1349]), .YS(N[1598]), .YC(N[1599]));
  FAX1 n1614(.A(N[1382]), .B(N[1482]), .C(N[1365]), .YS(N[1614]), .YC(N[1615]));
  FAX1 n1632(.A(N[1398]), .B(N[1498]), .C(N[1383]), .YS(N[1632]), .YC(N[1633]));
  FAX1 n1648(.A(N[1282]), .B(N[1514]), .C(N[1399]), .YS(N[1648]), .YC(N[1649]));
  AND2X1 n1664(.A(N[0]), .B(N[30]), .Y(N[1664]));
  AND2X1 n1682(.A(N[2]), .B(N[30]), .Y(N[1682]));
  AND2X1 n1698(.A(N[4]), .B(N[30]), .Y(N[1698]));
  AND2X1 n1714(.A(N[6]), .B(N[30]), .Y(N[1714]));
  AND2X1 n1732(.A(N[8]), .B(N[30]), .Y(N[1732]));
  AND2X1 n1748(.A(N[10]), .B(N[30]), .Y(N[1748]));
  AND2X1 n1764(.A(N[12]), .B(N[30]), .Y(N[1764]));
  AND2X1 n1782(.A(N[14]), .B(N[30]), .Y(N[1782]));
  FAX1 n1798(.A(N[1564]), .B(N[1664]), .C(N[1549]), .YS(N[1798]), .YC(N[1799]));
  FAX1 n1814(.A(N[1582]), .B(N[1682]), .C(N[1565]), .YS(N[1814]), .YC(N[1815]));
  FAX1 n1832(.A(N[1598]), .B(N[1698]), .C(N[1583]), .YS(N[1832]), .YC(N[1833]));
  FAX1 n1848(.A(N[1614]), .B(N[1714]), .C(N[1599]), .YS(N[1848]), .YC(N[1849]));
  FAX1 n1864(.A(N[1632]), .B(N[1732]), .C(N[1615]), .YS(N[1864]), .YC(N[1865]));
  FAX1 n1882(.A(N[1648]), .B(N[1748]), .C(N[1633]), .YS(N[1882]), .YC(N[1883]));
  FAX1 n1898(.A(N[1532]), .B(N[1764]), .C(N[1649]), .YS(N[1898]), .YC(N[1899]));
  HAX1 n1914(.A(N[1814]), .B(N[1799]), .YS(N[1914]), .YC(N[1915]));
  FAX1 n1932(.A(N[1832]), .B(N[1815]), .C(N[1915]), .YS(N[1932]), .YC(N[1933]));
  FAX1 n1948(.A(N[1848]), .B(N[1833]), .C(N[1933]), .YS(N[1948]), .YC(N[1949]));
  FAX1 n1964(.A(N[1864]), .B(N[1849]), .C(N[1949]), .YS(N[1964]), .YC(N[1965]));
  FAX1 n1982(.A(N[1882]), .B(N[1865]), .C(N[1965]), .YS(N[1982]), .YC(N[1983]));
  FAX1 n1998(.A(N[1898]), .B(N[1883]), .C(N[1983]), .YS(N[1998]), .YC(N[1999]));
  FAX1 n2014(.A(N[1782]), .B(N[1899]), .C(N[1999]), .YS(N[2014]), .YC(N[2015]));

  assign O[0] = N[32];
  assign O[1] = N[298];
  assign O[2] = N[548];
  assign O[3] = N[798];
  assign O[4] = N[1048];
  assign O[5] = N[1298];
  assign O[6] = N[1548];
  assign O[7] = N[1798];
  assign O[8] = N[1914];
  assign O[9] = N[1932];
  assign O[10] = N[1948];
  assign O[11] = N[1964];
  assign O[12] = N[1982];
  assign O[13] = N[1998];
  assign O[14] = N[2014];
  assign O[15] = N[2015];

endmodule

module CLA32bit(a,b,c_in,sum,c_out);

input [31:0]a,b;
input c_in;
output [31:0]sum;
output c_out;

wire [31:0] sum_out,  p,  g;
wire [7:0] PPP, GGG;
wire [8:0] CC;

assign p[31:0] = a[31:0] ^ b[31:0];
assign g[31:0] = a[31:0] & b[31:0];

assign PPP[0]= p [3] & p [2] & p [1] & p [0];
assign PPP[1]= p [7] & p [6] & p [5] & p [4];
assign PPP[2]= p[11] & p[10] & p [9] & p [8];
assign PPP[3]= p[15] & p[14] & p[13] & p[12];
assign PPP[4]= p[19] & p[18] & p[17] & p[16];
assign PPP[5]= p[23] & p[22] & p[21] & p[20];
assign PPP[6]= p[27] & p[26] & p[25] & p[24];
assign PPP[7]= p[31] & p[30] & p[29] & p[28];

assign GGG[0]= g[3]  | (p [3] & g [2])  | (p [3] & p [2] & g [1])  | (p [3] & p [2] & p [1] & g [0]) ;
assign GGG[1]= g[7]  | (p [7] & g [6])  | (p [7] & p [6] & g [5])  | (p [7] & p [6] & p [5] & g [4]);
assign GGG[2]= g[11] | (p[11] & g[10])  | (p[11] & p[10] & g [9])  | (p[11] & p[10] & p [9] & g [8]);
assign GGG[3]= g[15] | (p[15] & g[14])  | (p[15] & p[14] & g[13])  | (p[15] & p[14] & p[13] & g[12]);
assign GGG[4]= g[19] | (p[19] & g[18])  | (p[19] & p[18] & g[17])  | (p[19] & p[18] & p[17] & g[16]);
assign GGG[5]= g[23] | (p[23] & g[22])  | (p[23] & p[22] & g[21])  | (p[23] & p[22] & p[21] & g[20]);
assign GGG[6]= g[27] | (p[27] & g[26])  | (p[27] & p[26] & g[25])  | (p[27] & p[26] & p[25] & g[24]);
assign GGG[7]= g[31] | (p[31] & g[30])  | (p[31] & p[30] & g[29])  | (p[31] & p[30] & p[29] & g[28]);



assign CC[0] = c_in; //1'b0
assign CC[1] = GGG[0]  |  PPP[0]&  CC[0];
assign CC[2] = GGG[1]  |  PPP[1]&GGG[0]  |  PPP[1]&PPP[0]&  CC[0];
assign CC[3] = GGG[2]  |  PPP[2]&GGG[1]  |  PPP[2]&PPP[1]&GGG[0]  |  PPP[2]&PPP[1]&PPP[0]&  CC[0];
assign CC[4] = GGG[3]  |  PPP[3]&GGG[2]  |  PPP[3]&PPP[2]&GGG[1]  |  PPP[3]&PPP[2]&PPP[1]&GGG[0]  |  PPP[3]&PPP[2]&PPP[1]&PPP[0]&  CC[0];
assign CC[5] = GGG[4]  |  PPP[4]&GGG[3]  |  PPP[4]&PPP[3]&GGG[2]  |  PPP[4]&PPP[3]&PPP[2]&GGG[1]  |  PPP[4]&PPP[3]&PPP[2]&PPP[1]&GGG[0] |  PPP[4]&PPP[3]&PPP[2]&PPP[1]&PPP[0]&  CC[0];
assign CC[6] = GGG[5]  |  PPP[5]&GGG[4]  |  PPP[5]&PPP[4]&GGG[3]  |  PPP[5]&PPP[4]&PPP[3]&GGG[2]  |  PPP[5]&PPP[4]&PPP[3]&PPP[2]&GGG[1] |  PPP[5]&PPP[4]&PPP[3]&PPP[2]&PPP[1]&GGG[0] |  PPP[5]&PPP[4]&PPP[3]&PPP[2]&PPP[1]&PPP[0]& CC[0];
assign CC[7] = GGG[6]  | PPP[6]&GGG[5]  |  PPP[6]&PPP[5]&GGG[4]  |  PPP[6]&PPP[5]&PPP[4]&GGG[3]  |  PPP[6]&PPP[5]&PPP[4]&PPP[3]&GGG[2]  |  PPP[6]&PPP[5]&PPP[4]&PPP[3]&PPP[2]&GGG[1] |  PPP[6]&PPP[5]&PPP[4]&PPP[3]&PPP[2]&PPP[1]&GGG[0] |  PPP[6]&PPP[5]&PPP[4]&PPP[3]&PPP[2]&PPP[1]&PPP[0] & CC[0];
assign CC[8] = GGG[7] | PPP[7]&GGG[6]  | PPP[7]&PPP[6]&GGG[5]  |  PPP[7]&PPP[6]&PPP[5]&GGG[4]  |  PPP[7]&PPP[6]&PPP[5]&PPP[4]&GGG[3]  |  PPP[7]&PPP[6]&PPP[5]&PPP[4]&PPP[3]&GGG[2]  |  PPP[7]&PPP[6]&PPP[5]&PPP[4]&PPP[3]&PPP[2]&GGG[1] |  PPP[7]&PPP[6]&PPP[5]&PPP[4]&PPP[3]&PPP[2]&PPP[1]&GGG[0] |  PPP[7]&PPP[6]&PPP[5]&PPP[4]&PPP[3]&PPP[2]&PPP[1]&PPP[0] & CC[0];



cla_4bit cla4bit1(.aa(a  [3:0]),  .bb(b  [3:0]),  .cin(CC[0]),   .pp(p  [3:0]),  .gg(g  [3:0]),   .summ(sum  [3:0]));//a,b,cin,sum,PP,GG
cla_4bit cla4bit2(.aa(a  [7:4]),  .bb(b  [7:4]),  .cin(CC[1]),   .pp(p  [7:4]),  .gg(g  [7:4]),   .summ(sum  [7:4]));
cla_4bit cla4bit3(.aa(a [11:8]),  .bb(b [11:8]),  .cin(CC[2]),   .pp(p [11:8]),  .gg(g [11:8]),   .summ(sum [11:8]));
cla_4bit cla4bit4(.aa(a[15:12]),  .bb(b[15:12]),  .cin(CC[3]),   .pp(p[15:12]),  .gg(g[15:12]),   .summ(sum[15:12]));
cla_4bit cla4bit5(.aa(a[19:16]),  .bb(b[19:16]),  .cin(CC[4]),   .pp(p[19:16]),  .gg(g[19:16]),   .summ(sum[19:16]));
cla_4bit cla4bit6(.aa(a[23:20]),  .bb(b[23:20]),  .cin(CC[5]),   .pp(p[23:20]),  .gg(g[23:20]),   .summ(sum[23:20]));
cla_4bit cla4bit7(.aa(a[27:24]),  .bb(b[27:24]),  .cin(CC[6]),   .pp(p[27:24]),  .gg(g[27:24]),   .summ(sum[27:24]));
cla_4bit cla4bit8(.aa(a[31:28]),  .bb(b[31:28]),  .cin(CC[7]),   .pp(p[31:28]),  .gg(g[31:28]),   .summ(sum[31:28]));

assign c_out=CC[8];

endmodule


module cla_4bit(aa,bb,cin,summ,pp,gg);
input  [3:0] aa,bb,pp,gg;  
input cin;
output [3:0] summ;

wire [3:0] c;

   assign c[0] = cin;
   assign c[1] = gg[0] | (pp[0] & c[0]);
   assign c[2] = gg[1] | (pp[1] & gg[0]) | (pp[1] & pp[0] & c[0]);
   assign c[3] = gg[2] | (pp[2] & gg[1]) | (pp[2] & pp[1] & gg[0])| (pp[2] & pp[1] & pp[0] & c[0]);

   //assign c[4] = g[3] | (p[3] & g[2]) | (p[3] & p[2] & g[1])| (p[3] & p[2] & p[1] & g[0])| (p[3] & p[2] & p[1] & p[0] & cin);

   assign summ[3:0] = pp[3:0]  ^  c[3:0];		//assign sum[3:0] = {1'b0, p[3:0]} ^ c[4:0];
   

endmodule // cla_4bit

`timescale 1ns/100ps
module mul16u_pwr_0_984_mre_00_1655 ( input[15:0] A,
                   input[15:0] B,
                   output [31:0] O
                 );

wire [15:0] ll,lh,hl,hh;
wire [31:0] llhhlh_sum;
wire [31:0] shifted_llhh, shifted_lh, shifted_hl;

localparam MAX1 = 15;
localparam MIN1 = 8;

localparam MAX2 = 7;
localparam MIN2 = 0;

mult8_cgp14ep_ep65536_wc16384_2_csamcsa LxL (.A(A[MAX2:MIN2]), .B(B[MAX2:MIN2]), .O(ll));
mult8_cgp14ep_ep65536_wc1508_rcam HxL (.A(A[MAX1:MIN1]), .B(B[MAX2:MIN2]), .O(hl));
mult8_cgp14ep_ep65536_wc1508_rcam LxH (.A(A[MAX2:MIN2]), .B(B[MAX1:MIN1]), .O(lh));
mul8_364 HxH (.A(A[MAX1:MIN1]), .B(B[MAX1:MIN1]), .O(hh));

// shifting

assign shifted_llhh = { hh, ll }; 
assign shifted_lh = { {8{1'b0}}, lh, {8{1'b0}}}; 
assign shifted_hl = { {8{1'b0}}, hl, {8{1'b0}}}; 

// reduction
CLA32bit LLHHLH (.a(shifted_llhh), .b(shifted_lh), .c_in(1'b0), .sum(llhhlh_sum), .c_out());
CLA32bit SUMO (.a(llhhlh_sum), .b(shifted_hl), .c_in(1'b0), .sum(O), .c_out());

endmodule



// internal reference: composition.16.mul16u_pwr_0_984_mre_00_1655

