structure DarwinLexer  = struct

    datatype yystart_state = 
INITIAL
    structure UserDeclarations = 
      struct

 
    structure T = DarwinTokens
    type lex_result = T.token
    fun eof() = T.EOF


      end

    local
    datatype yymatch 
      = yyNO_MATCH
      | yyMATCH of ULexBuffer.stream * action * yymatch
    withtype action = ULexBuffer.stream * yymatch -> UserDeclarations.lex_result

    val yytable : ((UTF8.wchar * UTF8.wchar * int) list * int list) Vector.vector = 
#[([(0w0,0w8,1),
(0w11,0w31,1),
(0w35,0w37,1),
(0w39,0w39,1),
(0w58,0w58,1),
(0w63,0w64,1),
(0w91,0w96,1),
(0w125,0w2147483647,1),
(0w9,0w10,2),
(0w32,0w32,2),
(0w33,0w33,3),
(0w34,0w34,4),
(0w38,0w38,5),
(0w40,0w40,6),
(0w41,0w41,7),
(0w42,0w42,8),
(0w43,0w43,9),
(0w44,0w44,10),
(0w45,0w45,11),
(0w46,0w46,12),
(0w47,0w47,13),
(0w48,0w57,14),
(0w59,0w59,15),
(0w60,0w60,16),
(0w61,0w61,17),
(0w62,0w62,18),
(0w65,0w90,19),
(0w97,0w97,19),
(0w104,0w104,19),
(0w106,0w107,19),
(0w110,0w111,19),
(0w113,0w114,19),
(0w117,0w117,19),
(0w120,0w122,19),
(0w98,0w98,20),
(0w99,0w99,21),
(0w100,0w100,22),
(0w101,0w101,23),
(0w102,0w102,24),
(0w103,0w103,25),
(0w105,0w105,26),
(0w108,0w108,27),
(0w109,0w109,28),
(0w112,0w112,29),
(0w115,0w115,30),
(0w116,0w116,31),
(0w118,0w118,32),
(0w119,0w119,33),
(0w123,0w123,34),
(0w124,0w124,35)], []), ([], [55]), ([], [53, 55]), ([(0w61,0w61,433)], [45, 55]), ([(0w65,0w90,431),
(0w97,0w122,431)], [55]), ([(0w38,0w38,430)], [55]), ([], [40, 55]), ([], [41, 55]), ([], [38, 55]), ([], [36, 55]), ([], [52, 55]), ([], [37, 55]), ([], [42, 55]), ([], [39, 55]), ([(0w34,0w34,424),
(0w46,0w46,424),
(0w48,0w57,425)], [20, 55]), ([], [35, 55]), ([(0w61,0w61,423)], [49, 55]), ([(0w61,0w61,422)], [33, 55]), ([(0w61,0w61,421)], [48, 55]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w122,64)], [18, 55]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w110,64),
(0w112,0w122,64),
(0w111,0w111,416)], [18, 55]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w110,64),
(0w112,0w122,64),
(0w111,0w111,392)], [18, 55]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w110,64),
(0w112,0w122,64),
(0w111,0w111,391)], [18, 55]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w107,64),
(0w109,0w109,64),
(0w111,0w122,64),
(0w108,0w108,376),
(0w110,0w110,377)], [18, 55]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w98,0w107,64),
(0w109,0w122,64),
(0w97,0w97,372),
(0w108,0w108,373)], [18, 55]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w100,64),
(0w102,0w122,64),
(0w101,0w101,370)], [18, 55]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w101,64),
(0w103,0w109,64),
(0w111,0w122,64),
(0w102,0w102,368),
(0w110,0w110,369)], [18, 55]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w104,64),
(0w106,0w122,64),
(0w105,0w105,353)], [18, 55]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w100,64),
(0w102,0w122,64),
(0w101,0w101,346)], [18, 55]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w113,64),
(0w115,0w122,64),
(0w114,0w114,340)], [18, 55]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w98,0w115,64),
(0w118,0w122,64),
(0w97,0w97,293),
(0w116,0w116,294),
(0w117,0w117,295)], [18, 55]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w100,64),
(0w102,0w103,64),
(0w106,0w110,64),
(0w112,0w113,64),
(0w115,0w116,64),
(0w118,0w122,64),
(0w101,0w101,83),
(0w104,0w104,84),
(0w105,0w105,85),
(0w111,0w111,86),
(0w114,0w114,87),
(0w117,0w117,88)], [18, 55]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w98,0w110,64),
(0w112,0w122,64),
(0w97,0w97,69),
(0w111,0w111,70)], [18, 55]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w103,64),
(0w105,0w122,64),
(0w104,0w104,65)], [18, 55]), ([(0w34,0w34,37),
(0w48,0w57,38),
(0w102,0w102,39),
(0w116,0w116,40),
(0w125,0w125,41)], [55]), ([(0w124,0w124,36)], [55]), ([], [44]), ([(0w65,0w90,60),
(0w97,0w122,60)], []), ([(0w34,0w34,49),
(0w46,0w46,49),
(0w44,0w44,50),
(0w48,0w57,38),
(0w125,0w125,51)], []), ([(0w97,0w97,47)], []), ([(0w114,0w114,42)], []), ([], [23, 24, 25, 26, 51]), ([(0w117,0w117,43)], []), ([(0w101,0w101,44)], []), ([(0w44,0w44,45),
(0w125,0w125,46)], []), ([(0w102,0w102,39),
(0w116,0w116,40)], []), ([], [25]), ([(0w108,0w108,48)], []), ([(0w115,0w115,43)], []), ([(0w48,0w57,53)], []), ([(0w48,0w57,52)], []), ([], [23]), ([(0w44,0w44,50),
(0w48,0w57,52),
(0w125,0w125,51)], []), ([(0w44,0w44,54),
(0w48,0w57,55),
(0w69,0w69,56),
(0w101,0w101,56),
(0w125,0w125,57)], []), ([(0w48,0w57,59)], []), ([(0w44,0w44,54),
(0w48,0w57,55),
(0w125,0w125,57)], []), ([(0w48,0w57,58)], []), ([], [24]), ([(0w44,0w44,54),
(0w48,0w57,58),
(0w125,0w125,57)], []), ([(0w34,0w34,49),
(0w46,0w46,49),
(0w48,0w57,59)], []), ([(0w34,0w34,61),
(0w48,0w57,60),
(0w65,0w90,60),
(0w97,0w122,60)], []), ([(0w44,0w44,62),
(0w125,0w125,63)], []), ([(0w34,0w34,37)], []), ([], [26]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w122,64)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w104,64),
(0w106,0w122,64),
(0w105,0w105,66)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w107,64),
(0w109,0w122,64),
(0w108,0w108,67)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w100,64),
(0w102,0w122,64),
(0w101,0w101,68)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w122,64)], [18, 30]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w113,64),
(0w115,0w122,64),
(0w114,0w114,73)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w104,64),
(0w106,0w122,64),
(0w105,0w105,71)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w99,64),
(0w101,0w122,64),
(0w100,0w100,72)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w122,64)], [16, 18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w104,64),
(0w106,0w122,64),
(0w105,0w105,74)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w98,0w122,64),
(0w97,0w97,75)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w97,64),
(0w99,0w109,64),
(0w111,0w122,64),
(0w98,0w98,76),
(0w110,0w110,77)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w107,64),
(0w109,0w122,64),
(0w108,0w108,80)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w98,64),
(0w100,0w122,64),
(0w99,0w99,78)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w100,64),
(0w102,0w122,64),
(0w101,0w101,79)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w122,64)], [12, 18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w100,64),
(0w102,0w122,64),
(0w101,0w101,81)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w114,64),
(0w116,0w122,64),
(0w115,0w115,82)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w122,64)], [0, 18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w113,64),
(0w115,0w122,64),
(0w114,0w114,286)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w100,64),
(0w102,0w122,64),
(0w101,0w101,284)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w115,64),
(0w117,0w122,64),
(0w116,0w116,281)], [18]), ([(0w48,0w57,64),
(0w65,0w82,64),
(0w84,0w90,64),
(0w97,0w122,64),
(0w83,0w83,275)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w116,64),
(0w118,0w122,64),
(0w117,0w117,273)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w111,64),
(0w113,0w122,64),
(0w112,0w112,89)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w107,64),
(0w109,0w122,64),
(0w108,0w108,90)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w100,64),
(0w102,0w122,64),
(0w101,0w101,91)], [18]), ([(0w40,0w40,92),
(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w122,64)], [18]), ([(0w98,0w98,93),
(0w102,0w102,94),
(0w105,0w105,95),
(0w115,0w115,96)], []), ([(0w111,0w111,268)], []), ([(0w108,0w108,266)], []), ([(0w110,0w110,265)], []), ([(0w116,0w116,97)], []), ([(0w114,0w114,98)], []), ([(0w105,0w105,99)], []), ([(0w110,0w110,100)], []), ([(0w103,0w103,101)], []), ([(0w44,0w44,102)], []), ([(0w98,0w98,103),
(0w102,0w102,104),
(0w105,0w105,105),
(0w115,0w115,106)], []), ([(0w111,0w111,260)], []), ([(0w108,0w108,258)], []), ([(0w110,0w110,257)], []), ([(0w116,0w116,107)], []), ([(0w114,0w114,108)], []), ([(0w105,0w105,109)], []), ([(0w110,0w110,110)], []), ([(0w103,0w103,111)], []), ([(0w41,0w41,112),
(0w44,0w44,113)], []), ([], [17]), ([(0w98,0w98,114),
(0w102,0w102,115),
(0w105,0w105,116),
(0w115,0w115,117)], []), ([(0w111,0w111,252)], []), ([(0w108,0w108,250)], []), ([(0w110,0w110,249)], []), ([(0w116,0w116,118)], []), ([(0w114,0w114,119)], []), ([(0w105,0w105,120)], []), ([(0w110,0w110,121)], []), ([(0w103,0w103,122)], []), ([(0w41,0w41,112),
(0w44,0w44,123)], []), ([(0w98,0w98,124),
(0w102,0w102,125),
(0w105,0w105,126),
(0w115,0w115,127)], []), ([(0w111,0w111,244)], []), ([(0w108,0w108,242)], []), ([(0w110,0w110,241)], []), ([(0w116,0w116,128)], []), ([(0w114,0w114,129)], []), ([(0w105,0w105,130)], []), ([(0w110,0w110,131)], []), ([(0w103,0w103,132)], []), ([(0w41,0w41,112),
(0w44,0w44,133)], []), ([(0w98,0w98,134),
(0w102,0w102,135),
(0w105,0w105,136),
(0w115,0w115,137)], []), ([(0w111,0w111,236)], []), ([(0w108,0w108,234)], []), ([(0w110,0w110,233)], []), ([(0w116,0w116,138)], []), ([(0w114,0w114,139)], []), ([(0w105,0w105,140)], []), ([(0w110,0w110,141)], []), ([(0w103,0w103,142)], []), ([(0w41,0w41,112),
(0w44,0w44,143)], []), ([(0w98,0w98,144),
(0w102,0w102,145),
(0w105,0w105,146),
(0w115,0w115,147)], []), ([(0w111,0w111,228)], []), ([(0w108,0w108,226)], []), ([(0w110,0w110,225)], []), ([(0w116,0w116,148)], []), ([(0w114,0w114,149)], []), ([(0w105,0w105,150)], []), ([(0w110,0w110,151)], []), ([(0w103,0w103,152)], []), ([(0w41,0w41,112),
(0w44,0w44,153)], []), ([(0w98,0w98,154),
(0w102,0w102,155),
(0w105,0w105,156),
(0w115,0w115,157)], []), ([(0w111,0w111,220)], []), ([(0w108,0w108,218)], []), ([(0w110,0w110,217)], []), ([(0w116,0w116,158)], []), ([(0w114,0w114,159)], []), ([(0w105,0w105,160)], []), ([(0w110,0w110,161)], []), ([(0w103,0w103,162)], []), ([(0w41,0w41,112),
(0w44,0w44,163)], []), ([(0w98,0w98,164),
(0w102,0w102,165),
(0w105,0w105,166),
(0w115,0w115,167)], []), ([(0w111,0w111,212)], []), ([(0w108,0w108,210)], []), ([(0w110,0w110,209)], []), ([(0w116,0w116,168)], []), ([(0w114,0w114,169)], []), ([(0w105,0w105,170)], []), ([(0w110,0w110,171)], []), ([(0w103,0w103,172)], []), ([(0w41,0w41,112),
(0w44,0w44,173)], []), ([(0w98,0w98,174),
(0w102,0w102,175),
(0w105,0w105,176),
(0w115,0w115,177)], []), ([(0w111,0w111,204)], []), ([(0w108,0w108,202)], []), ([(0w110,0w110,201)], []), ([(0w116,0w116,178)], []), ([(0w114,0w114,179)], []), ([(0w105,0w105,180)], []), ([(0w110,0w110,181)], []), ([(0w103,0w103,182)], []), ([(0w41,0w41,112),
(0w44,0w44,183)], []), ([(0w98,0w98,184),
(0w102,0w102,185),
(0w105,0w105,186),
(0w115,0w115,187)], []), ([(0w111,0w111,196)], []), ([(0w108,0w108,194)], []), ([(0w110,0w110,193)], []), ([(0w116,0w116,188)], []), ([(0w114,0w114,189)], []), ([(0w105,0w105,190)], []), ([(0w110,0w110,191)], []), ([(0w103,0w103,192)], []), ([(0w41,0w41,112)], []), ([(0w116,0w116,192)], []), ([(0w111,0w111,195)], []), ([(0w97,0w97,193)], []), ([(0w111,0w111,197)], []), ([(0w108,0w108,198)], []), ([(0w101,0w101,199)], []), ([(0w97,0w97,200)], []), ([(0w110,0w110,192)], []), ([(0w116,0w116,182)], []), ([(0w111,0w111,203)], []), ([(0w97,0w97,201)], []), ([(0w111,0w111,205)], []), ([(0w108,0w108,206)], []), ([(0w101,0w101,207)], []), ([(0w97,0w97,208)], []), ([(0w110,0w110,182)], []), ([(0w116,0w116,172)], []), ([(0w111,0w111,211)], []), ([(0w97,0w97,209)], []), ([(0w111,0w111,213)], []), ([(0w108,0w108,214)], []), ([(0w101,0w101,215)], []), ([(0w97,0w97,216)], []), ([(0w110,0w110,172)], []), ([(0w116,0w116,162)], []), ([(0w111,0w111,219)], []), ([(0w97,0w97,217)], []), ([(0w111,0w111,221)], []), ([(0w108,0w108,222)], []), ([(0w101,0w101,223)], []), ([(0w97,0w97,224)], []), ([(0w110,0w110,162)], []), ([(0w116,0w116,152)], []), ([(0w111,0w111,227)], []), ([(0w97,0w97,225)], []), ([(0w111,0w111,229)], []), ([(0w108,0w108,230)], []), ([(0w101,0w101,231)], []), ([(0w97,0w97,232)], []), ([(0w110,0w110,152)], []), ([(0w116,0w116,142)], []), ([(0w111,0w111,235)], []), ([(0w97,0w97,233)], []), ([(0w111,0w111,237)], []), ([(0w108,0w108,238)], []), ([(0w101,0w101,239)], []), ([(0w97,0w97,240)], []), ([(0w110,0w110,142)], []), ([(0w116,0w116,132)], []), ([(0w111,0w111,243)], []), ([(0w97,0w97,241)], []), ([(0w111,0w111,245)], []), ([(0w108,0w108,246)], []), ([(0w101,0w101,247)], []), ([(0w97,0w97,248)], []), ([(0w110,0w110,132)], []), ([(0w116,0w116,122)], []), ([(0w111,0w111,251)], []), ([(0w97,0w97,249)], []), ([(0w111,0w111,253)], []), ([(0w108,0w108,254)], []), ([(0w101,0w101,255)], []), ([(0w97,0w97,256)], []), ([(0w110,0w110,122)], []), ([(0w116,0w116,111)], []), ([(0w111,0w111,259)], []), ([(0w97,0w97,257)], []), ([(0w111,0w111,261)], []), ([(0w108,0w108,262)], []), ([(0w101,0w101,263)], []), ([(0w97,0w97,264)], []), ([(0w110,0w110,111)], []), ([(0w116,0w116,101)], []), ([(0w111,0w111,267)], []), ([(0w97,0w97,265)], []), ([(0w111,0w111,269)], []), ([(0w108,0w108,270)], []), ([(0w101,0w101,271)], []), ([(0w97,0w97,272)], []), ([(0w110,0w110,101)], []), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w100,64),
(0w102,0w122,64),
(0w101,0w101,274)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w122,64)], [18, 22]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w115,64),
(0w117,0w122,64),
(0w116,0w116,276)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w113,64),
(0w115,0w122,64),
(0w114,0w114,277)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w104,64),
(0w106,0w122,64),
(0w105,0w105,278)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w109,64),
(0w111,0w122,64),
(0w110,0w110,279)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w102,64),
(0w104,0w122,64),
(0w103,0w103,280)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w122,64)], [6, 18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w107,64),
(0w109,0w122,64),
(0w108,0w108,282)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w100,64),
(0w102,0w122,64),
(0w101,0w101,283)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w122,64)], [1, 18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w109,64),
(0w111,0w122,64),
(0w110,0w110,285)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w122,64)], [18, 28]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w108,64),
(0w110,0w122,64),
(0w109,0w109,287)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w104,64),
(0w106,0w122,64),
(0w105,0w105,288)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w109,64),
(0w111,0w122,64),
(0w110,0w110,289)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w98,0w122,64),
(0w97,0w97,290)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w115,64),
(0w117,0w122,64),
(0w116,0w116,291)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w100,64),
(0w102,0w122,64),
(0w101,0w101,292)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w122,64)], [18, 54]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w108,64),
(0w110,0w122,64),
(0w109,0w109,311)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w99,64),
(0w101,0w113,64),
(0w115,0w122,64),
(0w100,0w100,297),
(0w114,0w114,298)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w108,64),
(0w110,0w122,64),
(0w109,0w109,296)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w122,64)], [4, 18]), ([(0w48,0w57,64),
(0w65,0w67,64),
(0w69,0w90,64),
(0w97,0w122,64),
(0w68,0w68,302)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w104,64),
(0w106,0w122,64),
(0w105,0w105,299)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w109,64),
(0w111,0w122,64),
(0w110,0w110,300)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w102,64),
(0w104,0w122,64),
(0w103,0w103,301)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w122,64)], [17, 18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w100,64),
(0w102,0w122,64),
(0w101,0w101,303)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w117,64),
(0w119,0w122,64),
(0w118,0w118,304)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w104,64),
(0w106,0w122,64),
(0w105,0w105,305)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w98,0w122,64),
(0w97,0w97,306)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w115,64),
(0w117,0w122,64),
(0w116,0w116,307)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w104,64),
(0w106,0w122,64),
(0w105,0w105,308)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w110,64),
(0w112,0w122,64),
(0w111,0w111,309)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w109,64),
(0w111,0w122,64),
(0w110,0w110,310)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w122,64)], [11, 18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w111,64),
(0w113,0w122,64),
(0w112,0w112,312)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w107,64),
(0w109,0w122,64),
(0w108,0w108,313)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w100,64),
(0w102,0w122,64),
(0w101,0w101,314)], [18]), ([(0w32,0w32,315),
(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w122,64)], [18]), ([(0w111,0w111,316)], []), ([(0w102,0w102,317)], []), ([(0w32,0w32,318)], []), ([(0w98,0w98,319),
(0w102,0w102,320),
(0w105,0w105,321),
(0w115,0w115,322),
(0w116,0w116,323)], []), ([(0w111,0w111,335)], []), ([(0w108,0w108,333)], []), ([(0w110,0w110,332)], []), ([(0w116,0w116,328)], []), ([(0w117,0w117,324)], []), ([(0w112,0w112,325)], []), ([(0w108,0w108,326)], []), ([(0w101,0w101,327)], []), ([(0w40,0w40,92)], []), ([(0w114,0w114,329)], []), ([(0w105,0w105,330)], []), ([(0w110,0w110,331)], []), ([(0w103,0w103,112)], []), ([(0w116,0w116,112)], []), ([(0w111,0w111,334)], []), ([(0w97,0w97,332)], []), ([(0w111,0w111,336)], []), ([(0w108,0w108,337)], []), ([(0w101,0w101,338)], []), ([(0w97,0w97,339)], []), ([(0w110,0w110,112)], []), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w104,64),
(0w106,0w110,64),
(0w112,0w122,64),
(0w105,0w105,341),
(0w111,0w111,342)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w109,64),
(0w111,0w122,64),
(0w110,0w110,344)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w99,64),
(0w101,0w122,64),
(0w100,0w100,343)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w122,64)], [5, 18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w115,64),
(0w117,0w122,64),
(0w116,0w116,345)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w122,64)], [3, 18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w98,0w99,64),
(0w101,0w122,64),
(0w97,0w97,347),
(0w100,0w100,348)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w109,64),
(0w111,0w122,64),
(0w110,0w110,352)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w104,64),
(0w106,0w122,64),
(0w105,0w105,349)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w98,0w122,64),
(0w97,0w97,350)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w109,64),
(0w111,0w122,64),
(0w110,0w110,351)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w122,64)], [10, 18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w122,64)], [8, 18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w109,64),
(0w111,0w122,64),
(0w110,0w110,354)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w100,64),
(0w102,0w122,64),
(0w101,0w101,355)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w98,0w122,64),
(0w97,0w97,356)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w113,64),
(0w115,0w122,64),
(0w114,0w114,357)], [18]), ([(0w48,0w57,64),
(0w65,0w81,64),
(0w83,0w90,64),
(0w97,0w122,64),
(0w82,0w82,358)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w100,64),
(0w102,0w122,64),
(0w101,0w101,359)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w102,64),
(0w104,0w122,64),
(0w103,0w103,360)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w113,64),
(0w115,0w122,64),
(0w114,0w114,361)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w100,64),
(0w102,0w122,64),
(0w101,0w101,362)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w114,64),
(0w116,0w122,64),
(0w115,0w115,363)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w114,64),
(0w116,0w122,64),
(0w115,0w115,364)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w104,64),
(0w106,0w122,64),
(0w105,0w105,365)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w110,64),
(0w112,0w122,64),
(0w111,0w111,366)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w109,64),
(0w111,0w122,64),
(0w110,0w110,367)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w122,64)], [14, 18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w122,64)], [18, 27]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w115,64),
(0w117,0w122,64),
(0w116,0w116,301)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w115,64),
(0w117,0w122,64),
(0w116,0w116,371)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w122,64)], [13, 18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w107,64),
(0w109,0w122,64),
(0w108,0w108,375)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w110,64),
(0w112,0w122,64),
(0w111,0w111,374)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w98,0w122,64),
(0w97,0w97,369)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w114,64),
(0w116,0w122,64),
(0w115,0w115,273)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w114,64),
(0w116,0w122,64),
(0w115,0w115,389)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w99,64),
(0w101,0w122,64),
(0w100,0w100,378)], [18]), ([(0w32,0w32,379),
(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w122,64)], [18, 32]), ([(0w118,0w118,380)], []), ([(0w97,0w97,381)], []), ([(0w114,0w114,382)], []), ([(0w105,0w105,383)], []), ([(0w97,0w97,384)], []), ([(0w98,0w98,385)], []), ([(0w108,0w108,386)], []), ([(0w101,0w101,387)], []), ([(0w115,0w115,388)], []), ([], [7]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w100,64),
(0w102,0w122,64),
(0w101,0w101,390)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w122,64)], [18, 29]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w122,64)], [18, 31]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w108,64),
(0w110,0w113,64),
(0w115,0w117,64),
(0w119,0w122,64),
(0w109,0w109,393),
(0w114,0w114,394),
(0w118,0w118,395)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w108,64),
(0w110,0w122,64),
(0w109,0w109,411)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w113,64),
(0w115,0w122,64),
(0w114,0w114,403)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w98,0w122,64),
(0w97,0w97,396)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w113,64),
(0w115,0w122,64),
(0w114,0w114,397)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w104,64),
(0w106,0w122,64),
(0w105,0w105,398)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w98,0w122,64),
(0w97,0w97,399)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w109,64),
(0w111,0w122,64),
(0w110,0w110,400)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w98,64),
(0w100,0w122,64),
(0w99,0w99,401)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w100,64),
(0w102,0w122,64),
(0w101,0w101,402)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w122,64)], [15, 18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w100,64),
(0w102,0w122,64),
(0w101,0w101,404)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w107,64),
(0w109,0w122,64),
(0w108,0w108,405)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w98,0w122,64),
(0w97,0w97,406)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w115,64),
(0w117,0w122,64),
(0w116,0w116,407)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w104,64),
(0w106,0w122,64),
(0w105,0w105,408)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w110,64),
(0w112,0w122,64),
(0w111,0w111,409)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w109,64),
(0w111,0w122,64),
(0w110,0w110,410)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w122,64)], [9, 18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w98,0w122,64),
(0w97,0w97,412)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w109,64),
(0w111,0w122,64),
(0w110,0w110,413)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w99,64),
(0w101,0w122,64),
(0w100,0w100,414)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w114,64),
(0w116,0w122,64),
(0w115,0w115,415)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w122,64)], [2, 18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w110,64),
(0w112,0w122,64),
(0w111,0w111,417)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w107,64),
(0w109,0w122,64),
(0w108,0w108,418)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w100,64),
(0w102,0w122,64),
(0w101,0w101,419)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w98,0w122,64),
(0w97,0w97,420)], [18]), ([(0w48,0w57,64),
(0w65,0w90,64),
(0w97,0w109,64),
(0w111,0w122,64),
(0w110,0w110,301)], [18]), ([], [46]), ([], [34]), ([], [47]), ([(0w48,0w57,426)], []), ([(0w34,0w34,424),
(0w46,0w46,424),
(0w48,0w57,425)], [20]), ([(0w48,0w57,427),
(0w69,0w69,428),
(0w101,0w101,428)], [21]), ([(0w48,0w57,427)], [21]), ([(0w48,0w57,429)], []), ([(0w48,0w57,429)], [21]), ([], [43]), ([(0w34,0w34,432),
(0w48,0w57,431),
(0w65,0w90,431),
(0w97,0w122,431)], []), ([], [19]), ([], [50])]
    fun yystreamify' p input = ULexBuffer.mkStream (p, input)

    fun yystreamifyReader' p readFn strm = let
          val s = ref strm
	  fun iter(strm, n, accum) = 
	        if n > 1024 then (String.implode (rev accum), strm)
		else (case readFn strm
		       of NONE => (String.implode (rev accum), strm)
			| SOME(c, strm') => iter (strm', n+1, c::accum))
          fun input() = let
	        val (data, strm) = iter(!s, 0, [])
	        in
	          s := strm;
		  data
	        end
          in
            yystreamify' p input
          end

    fun yystreamifyInstream' p strm = yystreamify' p (fn ()=>TextIO.input strm)

    fun innerLex 
(yystrm_, yyss_, yysm) = let
        (* current start state *)
          val yyss = ref yyss_
	  fun YYBEGIN ss = (yyss := ss)
	(* current input stream *)
          val yystrm = ref yystrm_
	  fun yysetStrm strm = yystrm := strm
	  fun yygetPos() = ULexBuffer.getpos (!yystrm)
	  fun yystreamify input = yystreamify' (yygetPos()) input
	  fun yystreamifyReader readFn strm = yystreamifyReader' (yygetPos()) readFn strm
	  fun yystreamifyInstream strm = yystreamifyInstream' (yygetPos()) strm
        (* start position of token -- can be updated via skip() *)
	  val yystartPos = ref (yygetPos())
	(* get one char of input *)
	  fun yygetc strm = (case ULexBuffer.getu strm
                of (SOME (0w10, s')) => 
		     (AntlrStreamPos.markNewLine yysm (ULexBuffer.getpos strm);
		      SOME (0w10, s'))
		 | x => x)
          fun yygetList getc strm = let
            val get1 = UTF8.getu getc
            fun iter (strm, accum) = 
	        (case get1 strm
	          of NONE => rev accum
	           | SOME (w, strm') => iter (strm', w::accum)
	         (* end case *))
          in
            iter (strm, [])
          end
	(* create yytext *)
	  fun yymksubstr(strm) = ULexBuffer.subtract (strm, !yystrm)
	  fun yymktext(strm) = Substring.string (yymksubstr strm)
	  fun yymkunicode(strm) = yygetList Substring.getc (yymksubstr strm)
          open UserDeclarations
          fun lex () = let
            fun yystuck (yyNO_MATCH) = raise Fail "lexer reached a stuck state"
	      | yystuck (yyMATCH (strm, action, old)) = 
		  action (strm, old)
	    val yypos = yygetPos()
	    fun yygetlineNo strm = AntlrStreamPos.lineNo yysm (ULexBuffer.getpos strm)
	    fun yygetcolNo  strm = AntlrStreamPos.colNo  yysm (ULexBuffer.getpos strm)
	    fun yyactsToMatches (strm, [],	  oldMatches) = oldMatches
	      | yyactsToMatches (strm, act::acts, oldMatches) = 
		  yyMATCH (strm, act, yyactsToMatches (strm, acts, oldMatches))
	    fun yygo actTable = 
		(fn (~1, _, oldMatches) => yystuck oldMatches
		  | (curState, strm, oldMatches) => let
		      val (transitions, finals') = Vector.sub (yytable, curState)
		      val finals = map (fn i => Vector.sub (actTable, i)) finals'
		      fun tryfinal() = 
		            yystuck (yyactsToMatches (strm, finals, oldMatches))
		      fun find (c, []) = NONE
			| find (c, (c1, c2, s)::ts) = 
		            if c1 <= c andalso c <= c2 then SOME s
			    else find (c, ts)
		      in case yygetc strm
			  of SOME(c, strm') => 
			       (case find (c, transitions)
				 of NONE => tryfinal()
				  | SOME n => 
				      yygo actTable
					(n, strm', 
					 yyactsToMatches (strm, finals, oldMatches)))
			   | NONE => tryfinal()
		      end)
	    val yylastwasnref = ref (ULexBuffer.lastWasNL (!yystrm))
	    fun continue() = let val yylastwasn = !yylastwasnref in
let
fun yyAction0 (strm, lastMatch : yymatch) = (yystrm := strm;   T.KW_variables )
fun yyAction1 (strm, lastMatch : yymatch) = (yystrm := strm;   T.KW_title )
fun yyAction2 (strm, lastMatch : yymatch) = (yystrm := strm;   T.KW_comands )
fun yyAction3 (strm, lastMatch : yymatch) = (yystrm := strm;   T.KW_Print )
fun yyAction4 (strm, lastMatch : yymatch) = (yystrm := strm;   T.KW_SUM )
fun yyAction5 (strm, lastMatch : yymatch) = (yystrm := strm;   T.KW_PROD )
fun yyAction6 (strm, lastMatch : yymatch) = (yystrm := strm;   T.KW_TOSTRING )
fun yyAction7 (strm, lastMatch : yymatch) = (yystrm := strm;   T.KW_endvars )
fun yyAction8 (strm, lastMatch : yymatch) = (yystrm := strm;   T.KW_MEAN )
fun yyAction9 (strm, lastMatch : yymatch) = (yystrm := strm;   T.KW_CORR )
fun yyAction10 (strm, lastMatch : yymatch) = (yystrm := strm;   T.KW_MEDIAN )
fun yyAction11 (strm, lastMatch : yymatch) = (yystrm := strm;   T.KW_STDEV )
fun yyAction12 (strm, lastMatch : yymatch) = (yystrm := strm;   T.KW_VAR )
fun yyAction13 (strm, lastMatch : yymatch) = (yystrm := strm;   T.KW_GET )
fun yyAction14 (strm, lastMatch : yymatch) = (yystrm := strm;  T.KW_LINREG)
fun yyAction15 (strm, lastMatch : yymatch) = (yystrm := strm;  T.KW_COV)
fun yyAction16 (strm, lastMatch : yymatch) = (yystrm := strm;   T.VOID )
fun yyAction17 (strm, lastMatch : yymatch) = let
      val yytext = yymktext(strm)
      in
        yystrm := strm;   T.TIPO yytext 
      end
fun yyAction18 (strm, lastMatch : yymatch) = let
      val yytext = yymktext(strm)
      in
        yystrm := strm;   T.ID yytext 
      end
fun yyAction19 (strm, lastMatch : yymatch) = let
      val yytext = yymktext(strm)
      in
        yystrm := strm;  T.STR yytext
      end
fun yyAction20 (strm, lastMatch : yymatch) = let
      val yytext = yymktext(strm)
      in
        yystrm := strm;   T.NUM (valOf (Int.fromString yytext)) 
      end
fun yyAction21 (strm, lastMatch : yymatch) = let
      val yytext = yymktext(strm)
      in
        yystrm := strm;   T.REAL (valOf (Real.fromString yytext)) 
      end
fun yyAction22 (strm, lastMatch : yymatch) = let
      val yytext = yymktext(strm)
      in
        yystrm := strm;   T.BOOL (valOf (Bool.fromString yytext)) 
      end
fun yyAction23 (strm, lastMatch : yymatch) = let
      val yytext = yymktext(strm)
      in
        yystrm := strm;  T.SINT (Grammar.toIntList (Grammar.tokenize yytext))
      end
fun yyAction24 (strm, lastMatch : yymatch) = let
      val yytext = yymktext(strm)
      in
        yystrm := strm;
         T.SFLOAT (Grammar.toFloatList (Grammar.tokenize yytext))
      end
fun yyAction25 (strm, lastMatch : yymatch) = let
      val yytext = yymktext(strm)
      in
        yystrm := strm;  T.SBOOL (Grammar.toBoolList (Grammar.tokenize yytext))
      end
fun yyAction26 (strm, lastMatch : yymatch) = let
      val yytext = yymktext(strm)
      in
        yystrm := strm;   T.SSTRING (Grammar.tokenize yytext)
      end
fun yyAction27 (strm, lastMatch : yymatch) = (yystrm := strm;   T.KW_IF )
fun yyAction28 (strm, lastMatch : yymatch) = (yystrm := strm;   T.KW_THEN )
fun yyAction29 (strm, lastMatch : yymatch) = (yystrm := strm;   T.KW_ELSE )
fun yyAction30 (strm, lastMatch : yymatch) = (yystrm := strm;   T.KW_WHILE )
fun yyAction31 (strm, lastMatch : yymatch) = (yystrm := strm;   T.KW_DO )
fun yyAction32 (strm, lastMatch : yymatch) = (yystrm := strm;   T.KW_END )
fun yyAction33 (strm, lastMatch : yymatch) = (yystrm := strm;   T.EQ )
fun yyAction34 (strm, lastMatch : yymatch) = (yystrm := strm;   T.EEQ )
fun yyAction35 (strm, lastMatch : yymatch) = (yystrm := strm;   T.SEMI)
fun yyAction36 (strm, lastMatch : yymatch) = (yystrm := strm;   T.PLUS )
fun yyAction37 (strm, lastMatch : yymatch) = (yystrm := strm;   T.MINUS )
fun yyAction38 (strm, lastMatch : yymatch) = (yystrm := strm;   T.TIMES )
fun yyAction39 (strm, lastMatch : yymatch) = (yystrm := strm;   T.DIV )
fun yyAction40 (strm, lastMatch : yymatch) = (yystrm := strm;   T.LP )
fun yyAction41 (strm, lastMatch : yymatch) = (yystrm := strm;   T.RP )
fun yyAction42 (strm, lastMatch : yymatch) = (yystrm := strm;   T.DOT )
fun yyAction43 (strm, lastMatch : yymatch) = (yystrm := strm;   T.AND )
fun yyAction44 (strm, lastMatch : yymatch) = (yystrm := strm;   T.OR )
fun yyAction45 (strm, lastMatch : yymatch) = (yystrm := strm;   T.NOT )
fun yyAction46 (strm, lastMatch : yymatch) = (yystrm := strm;   T.GEQ )
fun yyAction47 (strm, lastMatch : yymatch) = (yystrm := strm;   T.LEQ )
fun yyAction48 (strm, lastMatch : yymatch) = (yystrm := strm;   T.GT )
fun yyAction49 (strm, lastMatch : yymatch) = (yystrm := strm;   T.LT )
fun yyAction50 (strm, lastMatch : yymatch) = (yystrm := strm;   T.NEQ )
fun yyAction51 (strm, lastMatch : yymatch) = (yystrm := strm;   T.EMPTY )
fun yyAction52 (strm, lastMatch : yymatch) = (yystrm := strm;   T.COMMA )
fun yyAction53 (strm, lastMatch : yymatch) = (yystrm := strm;   continue() )
fun yyAction54 (strm, lastMatch : yymatch) = (yystrm := strm;
        T.KW_terminate )
fun yyAction55 (strm, lastMatch : yymatch) = let
      val yytext = yymktext(strm)
      in
        yystrm := strm;
         print (concat ["Unexpected character: '", yytext,
			           "'\n"]); continue()
      end
val yyactTable = Vector.fromList([yyAction0, yyAction1, yyAction2, yyAction3,
  yyAction4, yyAction5, yyAction6, yyAction7, yyAction8, yyAction9, yyAction10,
  yyAction11, yyAction12, yyAction13, yyAction14, yyAction15, yyAction16,
  yyAction17, yyAction18, yyAction19, yyAction20, yyAction21, yyAction22,
  yyAction23, yyAction24, yyAction25, yyAction26, yyAction27, yyAction28,
  yyAction29, yyAction30, yyAction31, yyAction32, yyAction33, yyAction34,
  yyAction35, yyAction36, yyAction37, yyAction38, yyAction39, yyAction40,
  yyAction41, yyAction42, yyAction43, yyAction44, yyAction45, yyAction46,
  yyAction47, yyAction48, yyAction49, yyAction50, yyAction51, yyAction52,
  yyAction53, yyAction54, yyAction55])
in
  if ULexBuffer.eof(!(yystrm))
    then let
      val yycolno = ref(yygetcolNo(!(yystrm)))
      val yylineno = ref(yygetlineNo(!(yystrm)))
      in
        (case (!(yyss))
         of _ => (UserDeclarations.eof())
        (* end case *))
      end
    else (case (!(yyss))
       of INITIAL => yygo yyactTable (0, !(yystrm), yyNO_MATCH)
      (* end case *))
end
end
            and skip() = (yystartPos := yygetPos(); 
			  yylastwasnref := ULexBuffer.lastWasNL (!yystrm);
			  continue())
	    in (continue(), (!yystartPos, yygetPos()), !yystrm, !yyss) end
          in 
            lex()
          end
  in
    type pos = AntlrStreamPos.pos
    type span = AntlrStreamPos.span
    type tok = UserDeclarations.lex_result

    datatype prestrm = STRM of ULexBuffer.stream * 
		(yystart_state * tok * span * prestrm * yystart_state) option ref
    type strm = (prestrm * yystart_state)

    fun lex sm 
(STRM (yystrm, memo), ss) = (case !memo
	  of NONE => let
	     val (tok, span, yystrm', ss') = innerLex 
(yystrm, ss, sm)
	     val strm' = STRM (yystrm', ref NONE);
	     in 
	       memo := SOME (ss, tok, span, strm', ss');
	       (tok, span, (strm', ss'))
	     end
	   | SOME (ss', tok, span, strm', ss'') => 
	       if ss = ss' then
		 (tok, span, (strm', ss''))
	       else (
		 memo := NONE;
		 lex sm 
(STRM (yystrm, memo), ss))
         (* end case *))

    fun streamify input = (STRM (yystreamify' 0 input, ref NONE), INITIAL)
    fun streamifyReader readFn strm = (STRM (yystreamifyReader' 0 readFn strm, ref NONE), 
				       INITIAL)
    fun streamifyInstream strm = (STRM (yystreamifyInstream' 0 strm, ref NONE), 
				  INITIAL)

    fun getPos (STRM (strm, _), _) = ULexBuffer.getpos strm

  end
end
