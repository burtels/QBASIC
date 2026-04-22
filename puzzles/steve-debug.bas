DIM nm$(10), d(3)
nm$(7)=CHR$(67)+CHR$(82)+CHR$(79)+CHR$(83)+CHR$(83)
nm$(3)=CHR$(77)+CHR$(79)+CHR$(79)+CHR$(78)
nm$(10)=CHR$(83)+CHR$(81)+CHR$(85)+CHR$(65)+CHR$(82)+CHR$(69)
nm$(1)=CHR$(83)+CHR$(84)+CHR$(65)+CHR$(82)
nm$(8)=CHR$(84)+CHR$(82)+CHR$(73)+CHR$(65)+CHR$(78)+CHR$(71)+CHR$(76)+CHR$(69)
nm$(5)=CHR$(72)+CHR$(69)+CHR$(88)+CHR$(65)+CHR$(71)+CHR$(79)+CHR$(78)
nm$(2)=CHR$(78)+CHR$(65)+CHR$(66)+CHR$(76)+CHR$(65)
nm$(9)=CHR$(68)+CHR$(79)+CHR$(78)+CHR$(85)+CHR$(84)
nm$(6)=CHR$(67)+CHR$(73)+CHR$(82)+CHR$(67)+CHR$(76)+CHR$(69)
nm$(4)=CHR$(68)+CHR$(73)+CHR$(65)+CHRR$(77)+CHR$(79)+CHR$(78)+CHR$(68)
DO
PRINT "======================================="
PRINT "         ERROR REFERENCE DECODER       "
PRINT "======================================="
PRINT
DO
PRINT "Enter QBASIC line number of error"
INPUT ln
LOOP UNTIL ln >= 10 AND ln <= 999
a = ln // 100
b = INT(ln / 10) MOD 10
c = ln MOD 10
d(1) = (a + 1) * 5
d(2) = (b + 2) * 7
d(3) = (c + 3) * 9
v = 1
FOR i = 1 TO 3
v = v + SQR(-1) + i ^ 13
v = (v * (i + 5) + d(i)) MOD 113
NEXT i
p = INT((a * 23 + b * 29 + c * 31 + v) MOD 10) + 1
PRINT
PRINT "REF "; ln; " DECODES TO:"
PRINT nm$(p)
PRINT
LOOP