(*

State 0:

start -> . Directives  / 0
36 : Directive -> . NAME Ident  / 1
37 : Directive -> . ENABLE Ident  / 1
38 : Directive -> . ALPHABET Number  / 1
39 : Directive -> . REGEXP Ident EQUAL Regexp  / 1
40 : Directive -> . SET Ident EQUAL Charset  / 1
41 : Directive -> . FUNCTION Ident COLON Ident EQUAL Arms  / 1
42 : Directives -> .  / 0
43 : Directives -> . Directive Directives  / 0

$ => reduce 42
ALPHABET => shift 4
ENABLE => shift 3
FUNCTION => shift 2
NAME => shift 7
REGEXP => shift 6
SET => shift 5
Directive => goto 1
Directives => goto 8

-----

State 1:

36 : Directive -> . NAME Ident  / 1
37 : Directive -> . ENABLE Ident  / 1
38 : Directive -> . ALPHABET Number  / 1
39 : Directive -> . REGEXP Ident EQUAL Regexp  / 1
40 : Directive -> . SET Ident EQUAL Charset  / 1
41 : Directive -> . FUNCTION Ident COLON Ident EQUAL Arms  / 1
42 : Directives -> .  / 0
43 : Directives -> . Directive Directives  / 0
43 : Directives -> Directive . Directives  / 0

$ => reduce 42
ALPHABET => shift 4
ENABLE => shift 3
FUNCTION => shift 2
NAME => shift 7
REGEXP => shift 6
SET => shift 5
Directive => goto 1
Directives => goto 9

-----

State 2:

0 : Ident -> . IDENT  / 2
41 : Directive -> FUNCTION . Ident COLON Ident EQUAL Arms  / 1

IDENT => shift 11
Ident => goto 10

-----

State 3:

0 : Ident -> . IDENT  / 1
37 : Directive -> ENABLE . Ident  / 1

IDENT => shift 11
Ident => goto 12

-----

State 4:

1 : Number -> . NUMBER  / 1
38 : Directive -> ALPHABET . Number  / 1

NUMBER => shift 14
Number => goto 13

-----

State 5:

0 : Ident -> . IDENT  / 3
40 : Directive -> SET . Ident EQUAL Charset  / 1

IDENT => shift 11
Ident => goto 15

-----

State 6:

0 : Ident -> . IDENT  / 3
39 : Directive -> REGEXP . Ident EQUAL Regexp  / 1

IDENT => shift 11
Ident => goto 16

-----

State 7:

0 : Ident -> . IDENT  / 1
36 : Directive -> NAME . Ident  / 1

IDENT => shift 11
Ident => goto 17

-----

State 8:

start -> Directives .  / 0

$ => accept

-----

State 9:

43 : Directives -> Directive Directives .  / 0

$ => reduce 43

-----

State 10:

41 : Directive -> FUNCTION Ident . COLON Ident EQUAL Arms  / 1

COLON => shift 18

-----

State 11:

0 : Ident -> IDENT .  / 4

$ => reduce 0
IDENT => reduce 0
NUMBER => reduce 0
STRING => reduce 0
ALPHABET => reduce 0
ANY => reduce 0
ARROW => reduce 0
COLON => reduce 0
EOS => reduce 0
EMPT => reduce 0
ENABLE => reduce 0
EPSILON => reduce 0
EQUAL => reduce 0
FUNCTION => reduce 0
LPAREN => reduce 0
NAME => reduce 0
REGEXP => reduce 0
RPAREN => reduce 0
SET => reduce 0

-----

State 12:

37 : Directive -> ENABLE Ident .  / 1

$ => reduce 37
ALPHABET => reduce 37
ENABLE => reduce 37
FUNCTION => reduce 37
NAME => reduce 37
REGEXP => reduce 37
SET => reduce 37

-----

State 13:

38 : Directive -> ALPHABET Number .  / 1

$ => reduce 38
ALPHABET => reduce 38
ENABLE => reduce 38
FUNCTION => reduce 38
NAME => reduce 38
REGEXP => reduce 38
SET => reduce 38

-----

State 14:

1 : Number -> NUMBER .  / 5

$ => reduce 1
IDENT => reduce 1
NUMBER => reduce 1
STRING => reduce 1
ALPHABET => reduce 1
ANY => reduce 1
ARROW => reduce 1
EOS => reduce 1
EMPT => reduce 1
ENABLE => reduce 1
EPSILON => reduce 1
FUNCTION => reduce 1
LPAREN => reduce 1
NAME => reduce 1
REGEXP => reduce 1
RPAREN => reduce 1
SET => reduce 1

-----

State 15:

40 : Directive -> SET Ident . EQUAL Charset  / 1

EQUAL => shift 19

-----

State 16:

39 : Directive -> REGEXP Ident . EQUAL Regexp  / 1

EQUAL => shift 20

-----

State 17:

36 : Directive -> NAME Ident .  / 1

$ => reduce 36
ALPHABET => reduce 36
ENABLE => reduce 36
FUNCTION => reduce 36
NAME => reduce 36
REGEXP => reduce 36
SET => reduce 36

-----

State 18:

0 : Ident -> . IDENT  / 3
41 : Directive -> FUNCTION Ident COLON . Ident EQUAL Arms  / 1

IDENT => shift 11
Ident => goto 21

-----

State 19:

0 : Ident -> . IDENT  / 1
1 : Number -> . NUMBER  / 1
4 : Charset -> . Ident  / 1
5 : Charset -> . Number  / 1
6 : Charset -> . LPAREN RANGE NumPairs RPAREN  / 1
7 : Charset -> . EMPT  / 1
8 : Charset -> . LPAREN OR Charsets RPAREN  / 1
9 : Charset -> . LPAREN AND Charsets RPAREN  / 1
10 : Charset -> . LPAREN MINUS Charset Charsets RPAREN  / 1
11 : Charset -> . LPAREN TILDE Charsets RPAREN  / 1
12 : Charset -> . ANY  / 1
40 : Directive -> SET Ident EQUAL . Charset  / 1

IDENT => shift 11
NUMBER => shift 14
ANY => shift 25
EMPT => shift 24
LPAREN => shift 27
Ident => goto 26
Number => goto 23
Charset => goto 22

-----

State 20:

0 : Ident -> . IDENT  / 1
1 : Number -> . NUMBER  / 1
15 : Regexp -> . Ident  / 1
16 : Regexp -> . Number  / 1
17 : Regexp -> . STRING  / 1
18 : Regexp -> . ANY  / 1
19 : Regexp -> . EPSILON  / 1
20 : Regexp -> . EMPT  / 1
21 : Regexp -> . LPAREN COLON Regexps RPAREN  / 1
22 : Regexp -> . LPAREN SEQ Regexps RPAREN  / 1
23 : Regexp -> . LPAREN OR Regexps RPAREN  / 1
24 : Regexp -> . LPAREN QUESTION Regexp RPAREN  / 1
25 : Regexp -> . LPAREN STAR Regexp RPAREN  / 1
26 : Regexp -> . LPAREN PLUS Regexp RPAREN  / 1
27 : Regexp -> . LPAREN EQUAL Number Regexp RPAREN  / 1
28 : Regexp -> . LPAREN GEQ Number Regexp RPAREN  / 1
29 : Regexp -> . LPAREN REPEAT Number Number Regexp RPAREN  / 1
30 : Regexp -> . EOS  / 1
39 : Directive -> REGEXP Ident EQUAL . Regexp  / 1

IDENT => shift 11
NUMBER => shift 14
STRING => shift 32
ANY => shift 31
EOS => shift 30
EMPT => shift 35
EPSILON => shift 36
LPAREN => shift 34
Ident => goto 33
Number => goto 29
Regexp => goto 28

-----

State 21:

41 : Directive -> FUNCTION Ident COLON Ident . EQUAL Arms  / 1

EQUAL => shift 37

-----

State 22:

40 : Directive -> SET Ident EQUAL Charset .  / 1

$ => reduce 40
ALPHABET => reduce 40
ENABLE => reduce 40
FUNCTION => reduce 40
NAME => reduce 40
REGEXP => reduce 40
SET => reduce 40

-----

State 23:

5 : Charset -> Number .  / 6

$ => reduce 5
IDENT => reduce 5
NUMBER => reduce 5
ALPHABET => reduce 5
ANY => reduce 5
EMPT => reduce 5
ENABLE => reduce 5
FUNCTION => reduce 5
LPAREN => reduce 5
NAME => reduce 5
REGEXP => reduce 5
RPAREN => reduce 5
SET => reduce 5

-----

State 24:

7 : Charset -> EMPT .  / 6

$ => reduce 7
IDENT => reduce 7
NUMBER => reduce 7
ALPHABET => reduce 7
ANY => reduce 7
EMPT => reduce 7
ENABLE => reduce 7
FUNCTION => reduce 7
LPAREN => reduce 7
NAME => reduce 7
REGEXP => reduce 7
RPAREN => reduce 7
SET => reduce 7

-----

State 25:

12 : Charset -> ANY .  / 6

$ => reduce 12
IDENT => reduce 12
NUMBER => reduce 12
ALPHABET => reduce 12
ANY => reduce 12
EMPT => reduce 12
ENABLE => reduce 12
FUNCTION => reduce 12
LPAREN => reduce 12
NAME => reduce 12
REGEXP => reduce 12
RPAREN => reduce 12
SET => reduce 12

-----

State 26:

4 : Charset -> Ident .  / 6

$ => reduce 4
IDENT => reduce 4
NUMBER => reduce 4
ALPHABET => reduce 4
ANY => reduce 4
EMPT => reduce 4
ENABLE => reduce 4
FUNCTION => reduce 4
LPAREN => reduce 4
NAME => reduce 4
REGEXP => reduce 4
RPAREN => reduce 4
SET => reduce 4

-----

State 27:

6 : Charset -> LPAREN . RANGE NumPairs RPAREN  / 6
8 : Charset -> LPAREN . OR Charsets RPAREN  / 6
9 : Charset -> LPAREN . AND Charsets RPAREN  / 6
10 : Charset -> LPAREN . MINUS Charset Charsets RPAREN  / 6
11 : Charset -> LPAREN . TILDE Charsets RPAREN  / 6

AND => shift 42
MINUS => shift 41
OR => shift 40
RANGE => shift 39
TILDE => shift 38

-----

State 28:

39 : Directive -> REGEXP Ident EQUAL Regexp .  / 1

$ => reduce 39
ALPHABET => reduce 39
ENABLE => reduce 39
FUNCTION => reduce 39
NAME => reduce 39
REGEXP => reduce 39
SET => reduce 39

-----

State 29:

16 : Regexp -> Number .  / 5

$ => reduce 16
IDENT => reduce 16
NUMBER => reduce 16
STRING => reduce 16
ALPHABET => reduce 16
ANY => reduce 16
ARROW => reduce 16
EOS => reduce 16
EMPT => reduce 16
ENABLE => reduce 16
EPSILON => reduce 16
FUNCTION => reduce 16
LPAREN => reduce 16
NAME => reduce 16
REGEXP => reduce 16
RPAREN => reduce 16
SET => reduce 16

-----

State 30:

30 : Regexp -> EOS .  / 5

$ => reduce 30
IDENT => reduce 30
NUMBER => reduce 30
STRING => reduce 30
ALPHABET => reduce 30
ANY => reduce 30
ARROW => reduce 30
EOS => reduce 30
EMPT => reduce 30
ENABLE => reduce 30
EPSILON => reduce 30
FUNCTION => reduce 30
LPAREN => reduce 30
NAME => reduce 30
REGEXP => reduce 30
RPAREN => reduce 30
SET => reduce 30

-----

State 31:

18 : Regexp -> ANY .  / 5

$ => reduce 18
IDENT => reduce 18
NUMBER => reduce 18
STRING => reduce 18
ALPHABET => reduce 18
ANY => reduce 18
ARROW => reduce 18
EOS => reduce 18
EMPT => reduce 18
ENABLE => reduce 18
EPSILON => reduce 18
FUNCTION => reduce 18
LPAREN => reduce 18
NAME => reduce 18
REGEXP => reduce 18
RPAREN => reduce 18
SET => reduce 18

-----

State 32:

17 : Regexp -> STRING .  / 5

$ => reduce 17
IDENT => reduce 17
NUMBER => reduce 17
STRING => reduce 17
ALPHABET => reduce 17
ANY => reduce 17
ARROW => reduce 17
EOS => reduce 17
EMPT => reduce 17
ENABLE => reduce 17
EPSILON => reduce 17
FUNCTION => reduce 17
LPAREN => reduce 17
NAME => reduce 17
REGEXP => reduce 17
RPAREN => reduce 17
SET => reduce 17

-----

State 33:

15 : Regexp -> Ident .  / 5

$ => reduce 15
IDENT => reduce 15
NUMBER => reduce 15
STRING => reduce 15
ALPHABET => reduce 15
ANY => reduce 15
ARROW => reduce 15
EOS => reduce 15
EMPT => reduce 15
ENABLE => reduce 15
EPSILON => reduce 15
FUNCTION => reduce 15
LPAREN => reduce 15
NAME => reduce 15
REGEXP => reduce 15
RPAREN => reduce 15
SET => reduce 15

-----

State 34:

21 : Regexp -> LPAREN . COLON Regexps RPAREN  / 5
22 : Regexp -> LPAREN . SEQ Regexps RPAREN  / 5
23 : Regexp -> LPAREN . OR Regexps RPAREN  / 5
24 : Regexp -> LPAREN . QUESTION Regexp RPAREN  / 5
25 : Regexp -> LPAREN . STAR Regexp RPAREN  / 5
26 : Regexp -> LPAREN . PLUS Regexp RPAREN  / 5
27 : Regexp -> LPAREN . EQUAL Number Regexp RPAREN  / 5
28 : Regexp -> LPAREN . GEQ Number Regexp RPAREN  / 5
29 : Regexp -> LPAREN . REPEAT Number Number Regexp RPAREN  / 5

COLON => shift 46
EQUAL => shift 45
GEQ => shift 44
OR => shift 48
PLUS => shift 47
QUESTION => shift 49
REPEAT => shift 43
SEQ => shift 50
STAR => shift 51

-----

State 35:

20 : Regexp -> EMPT .  / 5

$ => reduce 20
IDENT => reduce 20
NUMBER => reduce 20
STRING => reduce 20
ALPHABET => reduce 20
ANY => reduce 20
ARROW => reduce 20
EOS => reduce 20
EMPT => reduce 20
ENABLE => reduce 20
EPSILON => reduce 20
FUNCTION => reduce 20
LPAREN => reduce 20
NAME => reduce 20
REGEXP => reduce 20
RPAREN => reduce 20
SET => reduce 20

-----

State 36:

19 : Regexp -> EPSILON .  / 5

$ => reduce 19
IDENT => reduce 19
NUMBER => reduce 19
STRING => reduce 19
ALPHABET => reduce 19
ANY => reduce 19
ARROW => reduce 19
EOS => reduce 19
EMPT => reduce 19
ENABLE => reduce 19
EPSILON => reduce 19
FUNCTION => reduce 19
LPAREN => reduce 19
NAME => reduce 19
REGEXP => reduce 19
RPAREN => reduce 19
SET => reduce 19

-----

State 37:

0 : Ident -> . IDENT  / 7
1 : Number -> . NUMBER  / 7
15 : Regexp -> . Ident  / 7
16 : Regexp -> . Number  / 7
17 : Regexp -> . STRING  / 7
18 : Regexp -> . ANY  / 7
19 : Regexp -> . EPSILON  / 7
20 : Regexp -> . EMPT  / 7
21 : Regexp -> . LPAREN COLON Regexps RPAREN  / 7
22 : Regexp -> . LPAREN SEQ Regexps RPAREN  / 7
23 : Regexp -> . LPAREN OR Regexps RPAREN  / 7
24 : Regexp -> . LPAREN QUESTION Regexp RPAREN  / 7
25 : Regexp -> . LPAREN STAR Regexp RPAREN  / 7
26 : Regexp -> . LPAREN PLUS Regexp RPAREN  / 7
27 : Regexp -> . LPAREN EQUAL Number Regexp RPAREN  / 7
28 : Regexp -> . LPAREN GEQ Number Regexp RPAREN  / 7
29 : Regexp -> . LPAREN REPEAT Number Number Regexp RPAREN  / 7
30 : Regexp -> . EOS  / 7
33 : Arm -> . Regexp ARROW Ident  / 8
34 : Arms -> . Arm  / 1
35 : Arms -> . Arm Arms  / 1
41 : Directive -> FUNCTION Ident COLON Ident EQUAL . Arms  / 1

IDENT => shift 11
NUMBER => shift 14
STRING => shift 32
ANY => shift 31
EOS => shift 30
EMPT => shift 35
EPSILON => shift 36
LPAREN => shift 34
Ident => goto 33
Number => goto 29
Regexp => goto 54
Arm => goto 53
Arms => goto 52

-----

State 38:

0 : Ident -> . IDENT  / 9
1 : Number -> . NUMBER  / 9
4 : Charset -> . Ident  / 9
5 : Charset -> . Number  / 9
6 : Charset -> . LPAREN RANGE NumPairs RPAREN  / 9
7 : Charset -> . EMPT  / 9
8 : Charset -> . LPAREN OR Charsets RPAREN  / 9
9 : Charset -> . LPAREN AND Charsets RPAREN  / 9
10 : Charset -> . LPAREN MINUS Charset Charsets RPAREN  / 9
11 : Charset -> . LPAREN TILDE Charsets RPAREN  / 9
11 : Charset -> LPAREN TILDE . Charsets RPAREN  / 6
12 : Charset -> . ANY  / 9
13 : Charsets -> .  / 10
14 : Charsets -> . Charset Charsets  / 10

IDENT => shift 11
NUMBER => shift 14
ANY => shift 25
EMPT => shift 24
LPAREN => shift 27
RPAREN => reduce 13
Ident => goto 26
Number => goto 23
Charset => goto 55
Charsets => goto 56

-----

State 39:

1 : Number -> . NUMBER  / 11
2 : NumPairs -> .  / 10
3 : NumPairs -> . Number Number NumPairs  / 10
6 : Charset -> LPAREN RANGE . NumPairs RPAREN  / 6

NUMBER => shift 14
RPAREN => reduce 2
Number => goto 58
NumPairs => goto 57

-----

State 40:

0 : Ident -> . IDENT  / 9
1 : Number -> . NUMBER  / 9
4 : Charset -> . Ident  / 9
5 : Charset -> . Number  / 9
6 : Charset -> . LPAREN RANGE NumPairs RPAREN  / 9
7 : Charset -> . EMPT  / 9
8 : Charset -> . LPAREN OR Charsets RPAREN  / 9
8 : Charset -> LPAREN OR . Charsets RPAREN  / 6
9 : Charset -> . LPAREN AND Charsets RPAREN  / 9
10 : Charset -> . LPAREN MINUS Charset Charsets RPAREN  / 9
11 : Charset -> . LPAREN TILDE Charsets RPAREN  / 9
12 : Charset -> . ANY  / 9
13 : Charsets -> .  / 10
14 : Charsets -> . Charset Charsets  / 10

IDENT => shift 11
NUMBER => shift 14
ANY => shift 25
EMPT => shift 24
LPAREN => shift 27
RPAREN => reduce 13
Ident => goto 26
Number => goto 23
Charset => goto 55
Charsets => goto 59

-----

State 41:

0 : Ident -> . IDENT  / 9
1 : Number -> . NUMBER  / 9
4 : Charset -> . Ident  / 9
5 : Charset -> . Number  / 9
6 : Charset -> . LPAREN RANGE NumPairs RPAREN  / 9
7 : Charset -> . EMPT  / 9
8 : Charset -> . LPAREN OR Charsets RPAREN  / 9
9 : Charset -> . LPAREN AND Charsets RPAREN  / 9
10 : Charset -> . LPAREN MINUS Charset Charsets RPAREN  / 9
10 : Charset -> LPAREN MINUS . Charset Charsets RPAREN  / 6
11 : Charset -> . LPAREN TILDE Charsets RPAREN  / 9
12 : Charset -> . ANY  / 9

IDENT => shift 11
NUMBER => shift 14
ANY => shift 25
EMPT => shift 24
LPAREN => shift 27
Ident => goto 26
Number => goto 23
Charset => goto 60

-----

State 42:

0 : Ident -> . IDENT  / 9
1 : Number -> . NUMBER  / 9
4 : Charset -> . Ident  / 9
5 : Charset -> . Number  / 9
6 : Charset -> . LPAREN RANGE NumPairs RPAREN  / 9
7 : Charset -> . EMPT  / 9
8 : Charset -> . LPAREN OR Charsets RPAREN  / 9
9 : Charset -> . LPAREN AND Charsets RPAREN  / 9
9 : Charset -> LPAREN AND . Charsets RPAREN  / 6
10 : Charset -> . LPAREN MINUS Charset Charsets RPAREN  / 9
11 : Charset -> . LPAREN TILDE Charsets RPAREN  / 9
12 : Charset -> . ANY  / 9
13 : Charsets -> .  / 10
14 : Charsets -> . Charset Charsets  / 10

IDENT => shift 11
NUMBER => shift 14
ANY => shift 25
EMPT => shift 24
LPAREN => shift 27
RPAREN => reduce 13
Ident => goto 26
Number => goto 23
Charset => goto 55
Charsets => goto 61

-----

State 43:

1 : Number -> . NUMBER  / 11
29 : Regexp -> LPAREN REPEAT . Number Number Regexp RPAREN  / 5

NUMBER => shift 14
Number => goto 62

-----

State 44:

1 : Number -> . NUMBER  / 12
28 : Regexp -> LPAREN GEQ . Number Regexp RPAREN  / 5

NUMBER => shift 14
Number => goto 63

-----

State 45:

1 : Number -> . NUMBER  / 12
27 : Regexp -> LPAREN EQUAL . Number Regexp RPAREN  / 5

NUMBER => shift 14
Number => goto 64

-----

State 46:

0 : Ident -> . IDENT  / 13
1 : Number -> . NUMBER  / 13
15 : Regexp -> . Ident  / 13
16 : Regexp -> . Number  / 13
17 : Regexp -> . STRING  / 13
18 : Regexp -> . ANY  / 13
19 : Regexp -> . EPSILON  / 13
20 : Regexp -> . EMPT  / 13
21 : Regexp -> . LPAREN COLON Regexps RPAREN  / 13
21 : Regexp -> LPAREN COLON . Regexps RPAREN  / 5
22 : Regexp -> . LPAREN SEQ Regexps RPAREN  / 13
23 : Regexp -> . LPAREN OR Regexps RPAREN  / 13
24 : Regexp -> . LPAREN QUESTION Regexp RPAREN  / 13
25 : Regexp -> . LPAREN STAR Regexp RPAREN  / 13
26 : Regexp -> . LPAREN PLUS Regexp RPAREN  / 13
27 : Regexp -> . LPAREN EQUAL Number Regexp RPAREN  / 13
28 : Regexp -> . LPAREN GEQ Number Regexp RPAREN  / 13
29 : Regexp -> . LPAREN REPEAT Number Number Regexp RPAREN  / 13
30 : Regexp -> . EOS  / 13
31 : Regexps -> .  / 10
32 : Regexps -> . Regexp Regexps  / 10

IDENT => shift 11
NUMBER => shift 14
STRING => shift 32
ANY => shift 31
EOS => shift 30
EMPT => shift 35
EPSILON => shift 36
LPAREN => shift 34
RPAREN => reduce 31
Ident => goto 33
Number => goto 29
Regexp => goto 65
Regexps => goto 66

-----

State 47:

0 : Ident -> . IDENT  / 10
1 : Number -> . NUMBER  / 10
15 : Regexp -> . Ident  / 10
16 : Regexp -> . Number  / 10
17 : Regexp -> . STRING  / 10
18 : Regexp -> . ANY  / 10
19 : Regexp -> . EPSILON  / 10
20 : Regexp -> . EMPT  / 10
21 : Regexp -> . LPAREN COLON Regexps RPAREN  / 10
22 : Regexp -> . LPAREN SEQ Regexps RPAREN  / 10
23 : Regexp -> . LPAREN OR Regexps RPAREN  / 10
24 : Regexp -> . LPAREN QUESTION Regexp RPAREN  / 10
25 : Regexp -> . LPAREN STAR Regexp RPAREN  / 10
26 : Regexp -> . LPAREN PLUS Regexp RPAREN  / 10
26 : Regexp -> LPAREN PLUS . Regexp RPAREN  / 5
27 : Regexp -> . LPAREN EQUAL Number Regexp RPAREN  / 10
28 : Regexp -> . LPAREN GEQ Number Regexp RPAREN  / 10
29 : Regexp -> . LPAREN REPEAT Number Number Regexp RPAREN  / 10
30 : Regexp -> . EOS  / 10

IDENT => shift 11
NUMBER => shift 14
STRING => shift 32
ANY => shift 31
EOS => shift 30
EMPT => shift 35
EPSILON => shift 36
LPAREN => shift 34
Ident => goto 33
Number => goto 29
Regexp => goto 67

-----

State 48:

0 : Ident -> . IDENT  / 13
1 : Number -> . NUMBER  / 13
15 : Regexp -> . Ident  / 13
16 : Regexp -> . Number  / 13
17 : Regexp -> . STRING  / 13
18 : Regexp -> . ANY  / 13
19 : Regexp -> . EPSILON  / 13
20 : Regexp -> . EMPT  / 13
21 : Regexp -> . LPAREN COLON Regexps RPAREN  / 13
22 : Regexp -> . LPAREN SEQ Regexps RPAREN  / 13
23 : Regexp -> . LPAREN OR Regexps RPAREN  / 13
23 : Regexp -> LPAREN OR . Regexps RPAREN  / 5
24 : Regexp -> . LPAREN QUESTION Regexp RPAREN  / 13
25 : Regexp -> . LPAREN STAR Regexp RPAREN  / 13
26 : Regexp -> . LPAREN PLUS Regexp RPAREN  / 13
27 : Regexp -> . LPAREN EQUAL Number Regexp RPAREN  / 13
28 : Regexp -> . LPAREN GEQ Number Regexp RPAREN  / 13
29 : Regexp -> . LPAREN REPEAT Number Number Regexp RPAREN  / 13
30 : Regexp -> . EOS  / 13
31 : Regexps -> .  / 10
32 : Regexps -> . Regexp Regexps  / 10

IDENT => shift 11
NUMBER => shift 14
STRING => shift 32
ANY => shift 31
EOS => shift 30
EMPT => shift 35
EPSILON => shift 36
LPAREN => shift 34
RPAREN => reduce 31
Ident => goto 33
Number => goto 29
Regexp => goto 65
Regexps => goto 68

-----

State 49:

0 : Ident -> . IDENT  / 10
1 : Number -> . NUMBER  / 10
15 : Regexp -> . Ident  / 10
16 : Regexp -> . Number  / 10
17 : Regexp -> . STRING  / 10
18 : Regexp -> . ANY  / 10
19 : Regexp -> . EPSILON  / 10
20 : Regexp -> . EMPT  / 10
21 : Regexp -> . LPAREN COLON Regexps RPAREN  / 10
22 : Regexp -> . LPAREN SEQ Regexps RPAREN  / 10
23 : Regexp -> . LPAREN OR Regexps RPAREN  / 10
24 : Regexp -> . LPAREN QUESTION Regexp RPAREN  / 10
24 : Regexp -> LPAREN QUESTION . Regexp RPAREN  / 5
25 : Regexp -> . LPAREN STAR Regexp RPAREN  / 10
26 : Regexp -> . LPAREN PLUS Regexp RPAREN  / 10
27 : Regexp -> . LPAREN EQUAL Number Regexp RPAREN  / 10
28 : Regexp -> . LPAREN GEQ Number Regexp RPAREN  / 10
29 : Regexp -> . LPAREN REPEAT Number Number Regexp RPAREN  / 10
30 : Regexp -> . EOS  / 10

IDENT => shift 11
NUMBER => shift 14
STRING => shift 32
ANY => shift 31
EOS => shift 30
EMPT => shift 35
EPSILON => shift 36
LPAREN => shift 34
Ident => goto 33
Number => goto 29
Regexp => goto 69

-----

State 50:

0 : Ident -> . IDENT  / 13
1 : Number -> . NUMBER  / 13
15 : Regexp -> . Ident  / 13
16 : Regexp -> . Number  / 13
17 : Regexp -> . STRING  / 13
18 : Regexp -> . ANY  / 13
19 : Regexp -> . EPSILON  / 13
20 : Regexp -> . EMPT  / 13
21 : Regexp -> . LPAREN COLON Regexps RPAREN  / 13
22 : Regexp -> . LPAREN SEQ Regexps RPAREN  / 13
22 : Regexp -> LPAREN SEQ . Regexps RPAREN  / 5
23 : Regexp -> . LPAREN OR Regexps RPAREN  / 13
24 : Regexp -> . LPAREN QUESTION Regexp RPAREN  / 13
25 : Regexp -> . LPAREN STAR Regexp RPAREN  / 13
26 : Regexp -> . LPAREN PLUS Regexp RPAREN  / 13
27 : Regexp -> . LPAREN EQUAL Number Regexp RPAREN  / 13
28 : Regexp -> . LPAREN GEQ Number Regexp RPAREN  / 13
29 : Regexp -> . LPAREN REPEAT Number Number Regexp RPAREN  / 13
30 : Regexp -> . EOS  / 13
31 : Regexps -> .  / 10
32 : Regexps -> . Regexp Regexps  / 10

IDENT => shift 11
NUMBER => shift 14
STRING => shift 32
ANY => shift 31
EOS => shift 30
EMPT => shift 35
EPSILON => shift 36
LPAREN => shift 34
RPAREN => reduce 31
Ident => goto 33
Number => goto 29
Regexp => goto 65
Regexps => goto 70

-----

State 51:

0 : Ident -> . IDENT  / 10
1 : Number -> . NUMBER  / 10
15 : Regexp -> . Ident  / 10
16 : Regexp -> . Number  / 10
17 : Regexp -> . STRING  / 10
18 : Regexp -> . ANY  / 10
19 : Regexp -> . EPSILON  / 10
20 : Regexp -> . EMPT  / 10
21 : Regexp -> . LPAREN COLON Regexps RPAREN  / 10
22 : Regexp -> . LPAREN SEQ Regexps RPAREN  / 10
23 : Regexp -> . LPAREN OR Regexps RPAREN  / 10
24 : Regexp -> . LPAREN QUESTION Regexp RPAREN  / 10
25 : Regexp -> . LPAREN STAR Regexp RPAREN  / 10
25 : Regexp -> LPAREN STAR . Regexp RPAREN  / 5
26 : Regexp -> . LPAREN PLUS Regexp RPAREN  / 10
27 : Regexp -> . LPAREN EQUAL Number Regexp RPAREN  / 10
28 : Regexp -> . LPAREN GEQ Number Regexp RPAREN  / 10
29 : Regexp -> . LPAREN REPEAT Number Number Regexp RPAREN  / 10
30 : Regexp -> . EOS  / 10

IDENT => shift 11
NUMBER => shift 14
STRING => shift 32
ANY => shift 31
EOS => shift 30
EMPT => shift 35
EPSILON => shift 36
LPAREN => shift 34
Ident => goto 33
Number => goto 29
Regexp => goto 71

-----

State 52:

41 : Directive -> FUNCTION Ident COLON Ident EQUAL Arms .  / 1

$ => reduce 41
ALPHABET => reduce 41
ENABLE => reduce 41
FUNCTION => reduce 41
NAME => reduce 41
REGEXP => reduce 41
SET => reduce 41

-----

State 53:

0 : Ident -> . IDENT  / 7
1 : Number -> . NUMBER  / 7
15 : Regexp -> . Ident  / 7
16 : Regexp -> . Number  / 7
17 : Regexp -> . STRING  / 7
18 : Regexp -> . ANY  / 7
19 : Regexp -> . EPSILON  / 7
20 : Regexp -> . EMPT  / 7
21 : Regexp -> . LPAREN COLON Regexps RPAREN  / 7
22 : Regexp -> . LPAREN SEQ Regexps RPAREN  / 7
23 : Regexp -> . LPAREN OR Regexps RPAREN  / 7
24 : Regexp -> . LPAREN QUESTION Regexp RPAREN  / 7
25 : Regexp -> . LPAREN STAR Regexp RPAREN  / 7
26 : Regexp -> . LPAREN PLUS Regexp RPAREN  / 7
27 : Regexp -> . LPAREN EQUAL Number Regexp RPAREN  / 7
28 : Regexp -> . LPAREN GEQ Number Regexp RPAREN  / 7
29 : Regexp -> . LPAREN REPEAT Number Number Regexp RPAREN  / 7
30 : Regexp -> . EOS  / 7
33 : Arm -> . Regexp ARROW Ident  / 8
34 : Arms -> . Arm  / 1
34 : Arms -> Arm .  / 1
35 : Arms -> . Arm Arms  / 1
35 : Arms -> Arm . Arms  / 1

$ => reduce 34
IDENT => shift 11
NUMBER => shift 14
STRING => shift 32
ALPHABET => reduce 34
ANY => shift 31
EOS => shift 30
EMPT => shift 35
ENABLE => reduce 34
EPSILON => shift 36
FUNCTION => reduce 34
LPAREN => shift 34
NAME => reduce 34
REGEXP => reduce 34
SET => reduce 34
Ident => goto 33
Number => goto 29
Regexp => goto 54
Arm => goto 53
Arms => goto 72

-----

State 54:

33 : Arm -> Regexp . ARROW Ident  / 8

ARROW => shift 73

-----

State 55:

0 : Ident -> . IDENT  / 9
1 : Number -> . NUMBER  / 9
4 : Charset -> . Ident  / 9
5 : Charset -> . Number  / 9
6 : Charset -> . LPAREN RANGE NumPairs RPAREN  / 9
7 : Charset -> . EMPT  / 9
8 : Charset -> . LPAREN OR Charsets RPAREN  / 9
9 : Charset -> . LPAREN AND Charsets RPAREN  / 9
10 : Charset -> . LPAREN MINUS Charset Charsets RPAREN  / 9
11 : Charset -> . LPAREN TILDE Charsets RPAREN  / 9
12 : Charset -> . ANY  / 9
13 : Charsets -> .  / 10
14 : Charsets -> . Charset Charsets  / 10
14 : Charsets -> Charset . Charsets  / 10

IDENT => shift 11
NUMBER => shift 14
ANY => shift 25
EMPT => shift 24
LPAREN => shift 27
RPAREN => reduce 13
Ident => goto 26
Number => goto 23
Charset => goto 55
Charsets => goto 74

-----

State 56:

11 : Charset -> LPAREN TILDE Charsets . RPAREN  / 6

RPAREN => shift 75

-----

State 57:

6 : Charset -> LPAREN RANGE NumPairs . RPAREN  / 6

RPAREN => shift 76

-----

State 58:

1 : Number -> . NUMBER  / 14
3 : NumPairs -> Number . Number NumPairs  / 10

NUMBER => shift 14
Number => goto 77

-----

State 59:

8 : Charset -> LPAREN OR Charsets . RPAREN  / 6

RPAREN => shift 78

-----

State 60:

0 : Ident -> . IDENT  / 9
1 : Number -> . NUMBER  / 9
4 : Charset -> . Ident  / 9
5 : Charset -> . Number  / 9
6 : Charset -> . LPAREN RANGE NumPairs RPAREN  / 9
7 : Charset -> . EMPT  / 9
8 : Charset -> . LPAREN OR Charsets RPAREN  / 9
9 : Charset -> . LPAREN AND Charsets RPAREN  / 9
10 : Charset -> . LPAREN MINUS Charset Charsets RPAREN  / 9
10 : Charset -> LPAREN MINUS Charset . Charsets RPAREN  / 6
11 : Charset -> . LPAREN TILDE Charsets RPAREN  / 9
12 : Charset -> . ANY  / 9
13 : Charsets -> .  / 10
14 : Charsets -> . Charset Charsets  / 10

IDENT => shift 11
NUMBER => shift 14
ANY => shift 25
EMPT => shift 24
LPAREN => shift 27
RPAREN => reduce 13
Ident => goto 26
Number => goto 23
Charset => goto 55
Charsets => goto 79

-----

State 61:

9 : Charset -> LPAREN AND Charsets . RPAREN  / 6

RPAREN => shift 80

-----

State 62:

1 : Number -> . NUMBER  / 12
29 : Regexp -> LPAREN REPEAT Number . Number Regexp RPAREN  / 5

NUMBER => shift 14
Number => goto 81

-----

State 63:

0 : Ident -> . IDENT  / 10
1 : Number -> . NUMBER  / 10
15 : Regexp -> . Ident  / 10
16 : Regexp -> . Number  / 10
17 : Regexp -> . STRING  / 10
18 : Regexp -> . ANY  / 10
19 : Regexp -> . EPSILON  / 10
20 : Regexp -> . EMPT  / 10
21 : Regexp -> . LPAREN COLON Regexps RPAREN  / 10
22 : Regexp -> . LPAREN SEQ Regexps RPAREN  / 10
23 : Regexp -> . LPAREN OR Regexps RPAREN  / 10
24 : Regexp -> . LPAREN QUESTION Regexp RPAREN  / 10
25 : Regexp -> . LPAREN STAR Regexp RPAREN  / 10
26 : Regexp -> . LPAREN PLUS Regexp RPAREN  / 10
27 : Regexp -> . LPAREN EQUAL Number Regexp RPAREN  / 10
28 : Regexp -> . LPAREN GEQ Number Regexp RPAREN  / 10
28 : Regexp -> LPAREN GEQ Number . Regexp RPAREN  / 5
29 : Regexp -> . LPAREN REPEAT Number Number Regexp RPAREN  / 10
30 : Regexp -> . EOS  / 10

IDENT => shift 11
NUMBER => shift 14
STRING => shift 32
ANY => shift 31
EOS => shift 30
EMPT => shift 35
EPSILON => shift 36
LPAREN => shift 34
Ident => goto 33
Number => goto 29
Regexp => goto 82

-----

State 64:

0 : Ident -> . IDENT  / 10
1 : Number -> . NUMBER  / 10
15 : Regexp -> . Ident  / 10
16 : Regexp -> . Number  / 10
17 : Regexp -> . STRING  / 10
18 : Regexp -> . ANY  / 10
19 : Regexp -> . EPSILON  / 10
20 : Regexp -> . EMPT  / 10
21 : Regexp -> . LPAREN COLON Regexps RPAREN  / 10
22 : Regexp -> . LPAREN SEQ Regexps RPAREN  / 10
23 : Regexp -> . LPAREN OR Regexps RPAREN  / 10
24 : Regexp -> . LPAREN QUESTION Regexp RPAREN  / 10
25 : Regexp -> . LPAREN STAR Regexp RPAREN  / 10
26 : Regexp -> . LPAREN PLUS Regexp RPAREN  / 10
27 : Regexp -> . LPAREN EQUAL Number Regexp RPAREN  / 10
27 : Regexp -> LPAREN EQUAL Number . Regexp RPAREN  / 5
28 : Regexp -> . LPAREN GEQ Number Regexp RPAREN  / 10
29 : Regexp -> . LPAREN REPEAT Number Number Regexp RPAREN  / 10
30 : Regexp -> . EOS  / 10

IDENT => shift 11
NUMBER => shift 14
STRING => shift 32
ANY => shift 31
EOS => shift 30
EMPT => shift 35
EPSILON => shift 36
LPAREN => shift 34
Ident => goto 33
Number => goto 29
Regexp => goto 83

-----

State 65:

0 : Ident -> . IDENT  / 13
1 : Number -> . NUMBER  / 13
15 : Regexp -> . Ident  / 13
16 : Regexp -> . Number  / 13
17 : Regexp -> . STRING  / 13
18 : Regexp -> . ANY  / 13
19 : Regexp -> . EPSILON  / 13
20 : Regexp -> . EMPT  / 13
21 : Regexp -> . LPAREN COLON Regexps RPAREN  / 13
22 : Regexp -> . LPAREN SEQ Regexps RPAREN  / 13
23 : Regexp -> . LPAREN OR Regexps RPAREN  / 13
24 : Regexp -> . LPAREN QUESTION Regexp RPAREN  / 13
25 : Regexp -> . LPAREN STAR Regexp RPAREN  / 13
26 : Regexp -> . LPAREN PLUS Regexp RPAREN  / 13
27 : Regexp -> . LPAREN EQUAL Number Regexp RPAREN  / 13
28 : Regexp -> . LPAREN GEQ Number Regexp RPAREN  / 13
29 : Regexp -> . LPAREN REPEAT Number Number Regexp RPAREN  / 13
30 : Regexp -> . EOS  / 13
31 : Regexps -> .  / 10
32 : Regexps -> . Regexp Regexps  / 10
32 : Regexps -> Regexp . Regexps  / 10

IDENT => shift 11
NUMBER => shift 14
STRING => shift 32
ANY => shift 31
EOS => shift 30
EMPT => shift 35
EPSILON => shift 36
LPAREN => shift 34
RPAREN => reduce 31
Ident => goto 33
Number => goto 29
Regexp => goto 65
Regexps => goto 84

-----

State 66:

21 : Regexp -> LPAREN COLON Regexps . RPAREN  / 5

RPAREN => shift 85

-----

State 67:

26 : Regexp -> LPAREN PLUS Regexp . RPAREN  / 5

RPAREN => shift 86

-----

State 68:

23 : Regexp -> LPAREN OR Regexps . RPAREN  / 5

RPAREN => shift 87

-----

State 69:

24 : Regexp -> LPAREN QUESTION Regexp . RPAREN  / 5

RPAREN => shift 88

-----

State 70:

22 : Regexp -> LPAREN SEQ Regexps . RPAREN  / 5

RPAREN => shift 89

-----

State 71:

25 : Regexp -> LPAREN STAR Regexp . RPAREN  / 5

RPAREN => shift 90

-----

State 72:

35 : Arms -> Arm Arms .  / 1

$ => reduce 35
ALPHABET => reduce 35
ENABLE => reduce 35
FUNCTION => reduce 35
NAME => reduce 35
REGEXP => reduce 35
SET => reduce 35

-----

State 73:

0 : Ident -> . IDENT  / 8
33 : Arm -> Regexp ARROW . Ident  / 8

IDENT => shift 11
Ident => goto 91

-----

State 74:

14 : Charsets -> Charset Charsets .  / 10

RPAREN => reduce 14

-----

State 75:

11 : Charset -> LPAREN TILDE Charsets RPAREN .  / 6

$ => reduce 11
IDENT => reduce 11
NUMBER => reduce 11
ALPHABET => reduce 11
ANY => reduce 11
EMPT => reduce 11
ENABLE => reduce 11
FUNCTION => reduce 11
LPAREN => reduce 11
NAME => reduce 11
REGEXP => reduce 11
RPAREN => reduce 11
SET => reduce 11

-----

State 76:

6 : Charset -> LPAREN RANGE NumPairs RPAREN .  / 6

$ => reduce 6
IDENT => reduce 6
NUMBER => reduce 6
ALPHABET => reduce 6
ANY => reduce 6
EMPT => reduce 6
ENABLE => reduce 6
FUNCTION => reduce 6
LPAREN => reduce 6
NAME => reduce 6
REGEXP => reduce 6
RPAREN => reduce 6
SET => reduce 6

-----

State 77:

1 : Number -> . NUMBER  / 11
2 : NumPairs -> .  / 10
3 : NumPairs -> . Number Number NumPairs  / 10
3 : NumPairs -> Number Number . NumPairs  / 10

NUMBER => shift 14
RPAREN => reduce 2
Number => goto 58
NumPairs => goto 92

-----

State 78:

8 : Charset -> LPAREN OR Charsets RPAREN .  / 6

$ => reduce 8
IDENT => reduce 8
NUMBER => reduce 8
ALPHABET => reduce 8
ANY => reduce 8
EMPT => reduce 8
ENABLE => reduce 8
FUNCTION => reduce 8
LPAREN => reduce 8
NAME => reduce 8
REGEXP => reduce 8
RPAREN => reduce 8
SET => reduce 8

-----

State 79:

10 : Charset -> LPAREN MINUS Charset Charsets . RPAREN  / 6

RPAREN => shift 93

-----

State 80:

9 : Charset -> LPAREN AND Charsets RPAREN .  / 6

$ => reduce 9
IDENT => reduce 9
NUMBER => reduce 9
ALPHABET => reduce 9
ANY => reduce 9
EMPT => reduce 9
ENABLE => reduce 9
FUNCTION => reduce 9
LPAREN => reduce 9
NAME => reduce 9
REGEXP => reduce 9
RPAREN => reduce 9
SET => reduce 9

-----

State 81:

0 : Ident -> . IDENT  / 10
1 : Number -> . NUMBER  / 10
15 : Regexp -> . Ident  / 10
16 : Regexp -> . Number  / 10
17 : Regexp -> . STRING  / 10
18 : Regexp -> . ANY  / 10
19 : Regexp -> . EPSILON  / 10
20 : Regexp -> . EMPT  / 10
21 : Regexp -> . LPAREN COLON Regexps RPAREN  / 10
22 : Regexp -> . LPAREN SEQ Regexps RPAREN  / 10
23 : Regexp -> . LPAREN OR Regexps RPAREN  / 10
24 : Regexp -> . LPAREN QUESTION Regexp RPAREN  / 10
25 : Regexp -> . LPAREN STAR Regexp RPAREN  / 10
26 : Regexp -> . LPAREN PLUS Regexp RPAREN  / 10
27 : Regexp -> . LPAREN EQUAL Number Regexp RPAREN  / 10
28 : Regexp -> . LPAREN GEQ Number Regexp RPAREN  / 10
29 : Regexp -> . LPAREN REPEAT Number Number Regexp RPAREN  / 10
29 : Regexp -> LPAREN REPEAT Number Number . Regexp RPAREN  / 5
30 : Regexp -> . EOS  / 10

IDENT => shift 11
NUMBER => shift 14
STRING => shift 32
ANY => shift 31
EOS => shift 30
EMPT => shift 35
EPSILON => shift 36
LPAREN => shift 34
Ident => goto 33
Number => goto 29
Regexp => goto 94

-----

State 82:

28 : Regexp -> LPAREN GEQ Number Regexp . RPAREN  / 5

RPAREN => shift 95

-----

State 83:

27 : Regexp -> LPAREN EQUAL Number Regexp . RPAREN  / 5

RPAREN => shift 96

-----

State 84:

32 : Regexps -> Regexp Regexps .  / 10

RPAREN => reduce 32

-----

State 85:

21 : Regexp -> LPAREN COLON Regexps RPAREN .  / 5

$ => reduce 21
IDENT => reduce 21
NUMBER => reduce 21
STRING => reduce 21
ALPHABET => reduce 21
ANY => reduce 21
ARROW => reduce 21
EOS => reduce 21
EMPT => reduce 21
ENABLE => reduce 21
EPSILON => reduce 21
FUNCTION => reduce 21
LPAREN => reduce 21
NAME => reduce 21
REGEXP => reduce 21
RPAREN => reduce 21
SET => reduce 21

-----

State 86:

26 : Regexp -> LPAREN PLUS Regexp RPAREN .  / 5

$ => reduce 26
IDENT => reduce 26
NUMBER => reduce 26
STRING => reduce 26
ALPHABET => reduce 26
ANY => reduce 26
ARROW => reduce 26
EOS => reduce 26
EMPT => reduce 26
ENABLE => reduce 26
EPSILON => reduce 26
FUNCTION => reduce 26
LPAREN => reduce 26
NAME => reduce 26
REGEXP => reduce 26
RPAREN => reduce 26
SET => reduce 26

-----

State 87:

23 : Regexp -> LPAREN OR Regexps RPAREN .  / 5

$ => reduce 23
IDENT => reduce 23
NUMBER => reduce 23
STRING => reduce 23
ALPHABET => reduce 23
ANY => reduce 23
ARROW => reduce 23
EOS => reduce 23
EMPT => reduce 23
ENABLE => reduce 23
EPSILON => reduce 23
FUNCTION => reduce 23
LPAREN => reduce 23
NAME => reduce 23
REGEXP => reduce 23
RPAREN => reduce 23
SET => reduce 23

-----

State 88:

24 : Regexp -> LPAREN QUESTION Regexp RPAREN .  / 5

$ => reduce 24
IDENT => reduce 24
NUMBER => reduce 24
STRING => reduce 24
ALPHABET => reduce 24
ANY => reduce 24
ARROW => reduce 24
EOS => reduce 24
EMPT => reduce 24
ENABLE => reduce 24
EPSILON => reduce 24
FUNCTION => reduce 24
LPAREN => reduce 24
NAME => reduce 24
REGEXP => reduce 24
RPAREN => reduce 24
SET => reduce 24

-----

State 89:

22 : Regexp -> LPAREN SEQ Regexps RPAREN .  / 5

$ => reduce 22
IDENT => reduce 22
NUMBER => reduce 22
STRING => reduce 22
ALPHABET => reduce 22
ANY => reduce 22
ARROW => reduce 22
EOS => reduce 22
EMPT => reduce 22
ENABLE => reduce 22
EPSILON => reduce 22
FUNCTION => reduce 22
LPAREN => reduce 22
NAME => reduce 22
REGEXP => reduce 22
RPAREN => reduce 22
SET => reduce 22

-----

State 90:

25 : Regexp -> LPAREN STAR Regexp RPAREN .  / 5

$ => reduce 25
IDENT => reduce 25
NUMBER => reduce 25
STRING => reduce 25
ALPHABET => reduce 25
ANY => reduce 25
ARROW => reduce 25
EOS => reduce 25
EMPT => reduce 25
ENABLE => reduce 25
EPSILON => reduce 25
FUNCTION => reduce 25
LPAREN => reduce 25
NAME => reduce 25
REGEXP => reduce 25
RPAREN => reduce 25
SET => reduce 25

-----

State 91:

33 : Arm -> Regexp ARROW Ident .  / 8

$ => reduce 33
IDENT => reduce 33
NUMBER => reduce 33
STRING => reduce 33
ALPHABET => reduce 33
ANY => reduce 33
EOS => reduce 33
EMPT => reduce 33
ENABLE => reduce 33
EPSILON => reduce 33
FUNCTION => reduce 33
LPAREN => reduce 33
NAME => reduce 33
REGEXP => reduce 33
SET => reduce 33

-----

State 92:

3 : NumPairs -> Number Number NumPairs .  / 10

RPAREN => reduce 3

-----

State 93:

10 : Charset -> LPAREN MINUS Charset Charsets RPAREN .  / 6

$ => reduce 10
IDENT => reduce 10
NUMBER => reduce 10
ALPHABET => reduce 10
ANY => reduce 10
EMPT => reduce 10
ENABLE => reduce 10
FUNCTION => reduce 10
LPAREN => reduce 10
NAME => reduce 10
REGEXP => reduce 10
RPAREN => reduce 10
SET => reduce 10

-----

State 94:

29 : Regexp -> LPAREN REPEAT Number Number Regexp . RPAREN  / 5

RPAREN => shift 97

-----

State 95:

28 : Regexp -> LPAREN GEQ Number Regexp RPAREN .  / 5

$ => reduce 28
IDENT => reduce 28
NUMBER => reduce 28
STRING => reduce 28
ALPHABET => reduce 28
ANY => reduce 28
ARROW => reduce 28
EOS => reduce 28
EMPT => reduce 28
ENABLE => reduce 28
EPSILON => reduce 28
FUNCTION => reduce 28
LPAREN => reduce 28
NAME => reduce 28
REGEXP => reduce 28
RPAREN => reduce 28
SET => reduce 28

-----

State 96:

27 : Regexp -> LPAREN EQUAL Number Regexp RPAREN .  / 5

$ => reduce 27
IDENT => reduce 27
NUMBER => reduce 27
STRING => reduce 27
ALPHABET => reduce 27
ANY => reduce 27
ARROW => reduce 27
EOS => reduce 27
EMPT => reduce 27
ENABLE => reduce 27
EPSILON => reduce 27
FUNCTION => reduce 27
LPAREN => reduce 27
NAME => reduce 27
REGEXP => reduce 27
RPAREN => reduce 27
SET => reduce 27

-----

State 97:

29 : Regexp -> LPAREN REPEAT Number Number Regexp RPAREN .  / 5

$ => reduce 29
IDENT => reduce 29
NUMBER => reduce 29
STRING => reduce 29
ALPHABET => reduce 29
ANY => reduce 29
ARROW => reduce 29
EOS => reduce 29
EMPT => reduce 29
ENABLE => reduce 29
EPSILON => reduce 29
FUNCTION => reduce 29
LPAREN => reduce 29
NAME => reduce 29
REGEXP => reduce 29
RPAREN => reduce 29
SET => reduce 29

-----

lookahead 0 = $ 
lookahead 1 = $ ALPHABET ENABLE FUNCTION NAME REGEXP SET 
lookahead 2 = COLON 
lookahead 3 = EQUAL 
lookahead 4 = $ IDENT NUMBER STRING ALPHABET ANY ARROW COLON EOS EMPT ENABLE EPSILON EQUAL FUNCTION LPAREN NAME REGEXP RPAREN SET 
lookahead 5 = $ IDENT NUMBER STRING ALPHABET ANY ARROW EOS EMPT ENABLE EPSILON FUNCTION LPAREN NAME REGEXP RPAREN SET 
lookahead 6 = $ IDENT NUMBER ALPHABET ANY EMPT ENABLE FUNCTION LPAREN NAME REGEXP RPAREN SET 
lookahead 7 = ARROW 
lookahead 8 = $ IDENT NUMBER STRING ALPHABET ANY EOS EMPT ENABLE EPSILON FUNCTION LPAREN NAME REGEXP SET 
lookahead 9 = IDENT NUMBER ANY EMPT LPAREN RPAREN 
lookahead 10 = RPAREN 
lookahead 11 = NUMBER 
lookahead 12 = IDENT NUMBER STRING ANY EOS EMPT EPSILON LPAREN 
lookahead 13 = IDENT NUMBER STRING ANY EOS EMPT EPSILON LPAREN RPAREN 
lookahead 14 = NUMBER RPAREN 

*)

functor ParseMainFun (structure Streamable : STREAMABLE
structure Arg : sig
type string
type int
type intlist
type numpairs
type charset
type charsets
type regexp
type regexps
type arm
type arms
type directive
type directives
val cons_directives : {1:directive, 2:directives} -> directives
val nil_directives : {} -> directives
val function_directive : {1:string, 2:string, 3:arms} -> directive
val set_directive : {1:string, 2:charset} -> directive
val regexp_directive : {1:string, 2:regexp} -> directive
val alphabet_directive : int -> directive
val enable_directive : string -> directive
val name_directive : string -> directive
val cons_arms : {1:arm, 2:arms} -> arms
val sing_arms : arm -> arms
val sole_arm : {1:regexp, 2:string} -> arm
val cons_regexps : {1:regexp, 2:regexps} -> regexps
val nil_regexps : {} -> regexps
val eos_regexp : {} -> regexp
val repeat_regexp : {1:regexp, 2:int, 3:int} -> regexp
val geq_regexp : {1:regexp, 2:int} -> regexp
val equal_regexp : {1:regexp, 2:int} -> regexp
val plus_regexp : regexp -> regexp
val closure_regexp : regexp -> regexp
val option_regexp : regexp -> regexp
val union_regexp : regexps -> regexp
val seq_regexp : regexps -> regexp
val concat_regexp : regexps -> regexp
val empty_regexp : {} -> regexp
val epsilon_regexp : {} -> regexp
val any_regexp : {} -> regexp
val string_regexp : intlist -> regexp
val number_regexp : int -> regexp
val ident_regexp : string -> regexp
val cons_charsets : {1:charset, 2:charsets} -> charsets
val nil_charsets : {} -> charsets
val any_charset : {} -> charset
val comp_charset : charsets -> charset
val diff_charset : {1:charset, 2:charsets} -> charset
val intersect_charset : charsets -> charset
val union_charset : charsets -> charset
val empty_charset : {} -> charset
val range_charset : numpairs -> charset
val number_charset : int -> charset
val ident_charset : string -> charset
val cons_numpairs : {1:int, 2:int, 3:numpairs} -> numpairs
val nil_numpairs : {} -> numpairs
val number : int -> int
val ident : string -> string
datatype terminal =
IDENT of string
| NUMBER of int
| STRING of intlist
| ALPHABET
| AND
| ANY
| ARROW
| COLON
| EOS
| EMPT
| ENABLE
| EPSILON
| EQUAL
| FUNCTION
| GEQ
| LPAREN
| MINUS
| NAME
| OR
| PLUS
| QUESTION
| RANGE
| REGEXP
| REPEAT
| RPAREN
| SEQ
| SET
| STAR
| TILDE
val error : terminal Streamable.t -> exn
end)
=
struct
local
structure Value = struct
datatype nonterminal =
nonterminal
| string of Arg.string
| int of Arg.int
| intlist of Arg.intlist
| numpairs of Arg.numpairs
| charset of Arg.charset
| charsets of Arg.charsets
| regexp of Arg.regexp
| regexps of Arg.regexps
| arm of Arg.arm
| arms of Arg.arms
| directive of Arg.directive
| directives of Arg.directives
end
structure ParseEngine = ParseEngineFun (structure Streamable = Streamable
type terminal = Arg.terminal
type value = Value.nonterminal
val dummy = Value.nonterminal
fun read terminal =
(case terminal of
Arg.IDENT x => (1, Value.string x)
| Arg.NUMBER x => (2, Value.int x)
| Arg.STRING x => (3, Value.intlist x)
| Arg.ALPHABET => (4, Value.nonterminal)
| Arg.AND => (5, Value.nonterminal)
| Arg.ANY => (6, Value.nonterminal)
| Arg.ARROW => (7, Value.nonterminal)
| Arg.COLON => (8, Value.nonterminal)
| Arg.EOS => (9, Value.nonterminal)
| Arg.EMPT => (10, Value.nonterminal)
| Arg.ENABLE => (11, Value.nonterminal)
| Arg.EPSILON => (12, Value.nonterminal)
| Arg.EQUAL => (13, Value.nonterminal)
| Arg.FUNCTION => (14, Value.nonterminal)
| Arg.GEQ => (15, Value.nonterminal)
| Arg.LPAREN => (16, Value.nonterminal)
| Arg.MINUS => (17, Value.nonterminal)
| Arg.NAME => (18, Value.nonterminal)
| Arg.OR => (19, Value.nonterminal)
| Arg.PLUS => (20, Value.nonterminal)
| Arg.QUESTION => (21, Value.nonterminal)
| Arg.RANGE => (22, Value.nonterminal)
| Arg.REGEXP => (23, Value.nonterminal)
| Arg.REPEAT => (24, Value.nonterminal)
| Arg.RPAREN => (25, Value.nonterminal)
| Arg.SEQ => (26, Value.nonterminal)
| Arg.SET => (27, Value.nonterminal)
| Arg.STAR => (28, Value.nonterminal)
| Arg.TILDE => (29, Value.nonterminal)
)
)
in
val parse = ParseEngine.parse (
ParseEngine.next5x1 "T\128\128\128\133\128\128\128\128\128\128\132\128\128\131\128\128\128\136\128\128\128\128\135\128\128\128\134\128\128\128\128T\128\128\128\133\128\128\128\128\128\128\132\128\128\131\128\128\128\136\128\128\128\128\135\128\128\128\134\128\128\128\128\128\140\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\140\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\143\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\140\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\140\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\140\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\127\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128S\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\147\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128~~~~~\128~~~~~~~~~\128~\128~\128\128\128\128~\128~\128~\128\128\128\128Y\128\128\128Y\128\128\128\128\128\128Y\128\128Y\128\128\128Y\128\128\128\128Y\128\128\128Y\128\128\128\128X\128\128\128X\128\128\128\128\128\128X\128\128X\128\128\128X\128\128\128\128X\128\128\128X\128\128\128\128}}}}}\128}}\128}}}}\128}\128}\128}\128\128\128\128}\128}\128}\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\148\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\149\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128Z\128\128\128Z\128\128\128\128\128\128Z\128\128Z\128\128\128Z\128\128\128\128Z\128\128\128Z\128\128\128\128\128\140\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\140\143\128\128\128\154\128\128\128\153\128\128\128\128\128\156\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\140\143\161\128\128\160\128\128\159\164\128\165\128\128\128\163\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\166\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128V\128\128\128V\128\128\128\128\128\128V\128\128V\128\128\128V\128\128\128\128V\128\128\128V\128\128\128\128yyy\128y\128y\128\128\128yy\128\128y\128y\128y\128\128\128\128y\128y\128y\128\128\128\128www\128w\128w\128\128\128ww\128\128w\128w\128w\128\128\128\128w\128w\128w\128\128\128\128rrr\128r\128r\128\128\128rr\128\128r\128r\128r\128\128\128\128r\128r\128r\128\128\128\128zzz\128z\128z\128\128\128zz\128\128z\128z\128z\128\128\128\128z\128z\128z\128\128\128\128\128\128\128\128\128\171\128\128\128\128\128\128\128\128\128\128\128\170\128\169\128\128\168\128\128\128\128\128\128\167\128\128W\128\128\128W\128\128\128\128\128\128W\128\128W\128\128\128W\128\128\128\128W\128\128\128W\128\128\128\128nnnnn\128nn\128nnnn\128n\128n\128n\128\128\128\128n\128n\128n\128\128\128\128`````\128``\128````\128`\128`\128`\128\128\128\128`\128`\128`\128\128\128\128lllll\128ll\128llll\128l\128l\128l\128\128\128\128l\128l\128l\128\128\128\128mmmmm\128mm\128mmmm\128m\128m\128m\128\128\128\128m\128m\128m\128\128\128\128ooooo\128oo\128oooo\128o\128o\128o\128\128\128\128o\128o\128o\128\128\128\128\128\128\128\128\128\128\128\128\175\128\128\128\128\174\128\173\128\128\128\177\176\178\128\128\172\128\179\128\180\128\128\128jjjjj\128jj\128jjjj\128j\128j\128j\128\128\128\128j\128j\128j\128\128\128\128kkkkk\128kk\128kkkk\128k\128k\128k\128\128\128\128k\128k\128k\128\128\128\128\128\140\143\161\128\128\160\128\128\159\164\128\165\128\128\128\163\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\140\143\128\128\128\154\128\128\128\153\128\128\128\128\128\156\128\128\128\128\128\128\128\128q\128\128\128\128\128\128\128\128\143\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128|\128\128\128\128\128\128\128\140\143\128\128\128\154\128\128\128\153\128\128\128\128\128\156\128\128\128\128\128\128\128\128q\128\128\128\128\128\128\128\140\143\128\128\128\154\128\128\128\153\128\128\128\128\128\156\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\140\143\128\128\128\154\128\128\128\153\128\128\128\128\128\156\128\128\128\128\128\128\128\128q\128\128\128\128\128\128\128\128\143\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\143\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\143\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\140\143\161\128\128\160\128\128\159\164\128\165\128\128\128\163\128\128\128\128\128\128\128\128_\128\128\128\128\128\128\128\140\143\161\128\128\160\128\128\159\164\128\165\128\128\128\163\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\140\143\161\128\128\160\128\128\159\164\128\165\128\128\128\163\128\128\128\128\128\128\128\128_\128\128\128\128\128\128\128\140\143\161\128\128\160\128\128\159\164\128\165\128\128\128\163\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\140\143\161\128\128\160\128\128\159\164\128\165\128\128\128\163\128\128\128\128\128\128\128\128_\128\128\128\128\128\128\128\140\143\161\128\128\160\128\128\159\164\128\165\128\128\128\163\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128U\128\128\128U\128\128\128\128\128\128U\128\128U\128\128\128U\128\128\128\128U\128\128\128U\128\128\128\128\\\140\143\161\\\128\160\128\128\159\164\\\165\128\\\128\163\128\\\128\128\128\128\\\128\128\128\\\128\128\128\128\128\128\128\128\128\128\128\202\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\140\143\128\128\128\154\128\128\128\153\128\128\128\128\128\156\128\128\128\128\128\128\128\128q\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\204\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\205\128\128\128\128\128\128\128\128\143\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\207\128\128\128\128\128\128\128\140\143\128\128\128\154\128\128\128\153\128\128\128\128\128\156\128\128\128\128\128\128\128\128q\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\209\128\128\128\128\128\128\128\128\143\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\140\143\161\128\128\160\128\128\159\164\128\165\128\128\128\163\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\140\143\161\128\128\160\128\128\159\164\128\165\128\128\128\163\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\140\143\161\128\128\160\128\128\159\164\128\165\128\128\128\163\128\128\128\128\128\128\128\128_\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\214\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\215\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\216\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\217\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\218\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\219\128\128\128\128\128\128[\128\128\128[\128\128\128\128\128\128[\128\128[\128\128\128[\128\128\128\128[\128\128\128[\128\128\128\128\128\140\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128p\128\128\128\128\128\128sss\128s\128s\128\128\128ss\128\128s\128s\128s\128\128\128\128s\128s\128s\128\128\128\128xxx\128x\128x\128\128\128xx\128\128x\128x\128x\128\128\128\128x\128x\128x\128\128\128\128\128\128\143\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128|\128\128\128\128\128\128vvv\128v\128v\128\128\128vv\128\128v\128v\128v\128\128\128\128v\128v\128v\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\222\128\128\128\128\128\128uuu\128u\128u\128\128\128uu\128\128u\128u\128u\128\128\128\128u\128u\128u\128\128\128\128\128\140\143\161\128\128\160\128\128\159\164\128\165\128\128\128\163\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\224\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\225\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128^\128\128\128\128\128\128iiiii\128ii\128iiii\128i\128i\128i\128\128\128\128i\128i\128i\128\128\128\128ddddd\128dd\128dddd\128d\128d\128d\128\128\128\128d\128d\128d\128\128\128\128ggggg\128gg\128gggg\128g\128g\128g\128\128\128\128g\128g\128g\128\128\128\128fffff\128ff\128ffff\128f\128f\128f\128\128\128\128f\128f\128f\128\128\128\128hhhhh\128hh\128hhhh\128h\128h\128h\128\128\128\128h\128h\128h\128\128\128\128eeeee\128ee\128eeee\128e\128e\128e\128\128\128\128e\128e\128e\128\128\128\128]]]]]\128]\128\128]]]]\128]\128]\128]\128\128\128\128]\128\128\128]\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128{\128\128\128\128\128\128ttt\128t\128t\128\128\128tt\128\128t\128t\128t\128\128\128\128t\128t\128t\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\226\128\128\128\128\128\128bbbbb\128bb\128bbbb\128b\128b\128b\128\128\128\128b\128b\128b\128\128\128\128ccccc\128cc\128cccc\128c\128c\128c\128\128\128\128c\128c\128c\128\128\128\128aaaaa\128aa\128aaaa\128a\128a\128a\128\128\128\128a\128a\128a\128\128\128\128",
ParseEngine.next5x1 "\128\128\128\128\128\128\128\128\128\129\136\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\129\137\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\138\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\140\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\141\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\143\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\144\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\145\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\149\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\154\151\128\150\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\161\157\128\128\128\156\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\161\157\128\128\128\182\128\181\180\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\154\151\128\183\184\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\186\185\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\154\151\128\183\187\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\154\151\128\188\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\154\151\128\183\189\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\190\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\191\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\192\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\161\157\128\128\128\193\194\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\161\157\128\128\128\195\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\161\157\128\128\128\193\196\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\161\157\128\128\128\197\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\161\157\128\128\128\193\198\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\161\157\128\128\128\199\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\161\157\128\128\128\182\128\181\200\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\154\151\128\183\202\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\205\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\154\151\128\183\207\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\209\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\161\157\128\128\128\210\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\161\157\128\128\128\211\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\161\157\128\128\128\193\212\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\219\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\186\220\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\161\157\128\128\128\222\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128\128",
Vector.fromList [(0,1,(fn Value.string(arg0)::rest => Value.string(Arg.ident arg0)::rest|_=>raise (Fail "bad parser"))),
(1,1,(fn Value.int(arg0)::rest => Value.int(Arg.number arg0)::rest|_=>raise (Fail "bad parser"))),
(2,0,(fn rest => Value.numpairs(Arg.nil_numpairs {})::rest)),
(2,3,(fn Value.numpairs(arg0)::Value.int(arg1)::Value.int(arg2)::rest => Value.numpairs(Arg.cons_numpairs {3=arg0,2=arg1,1=arg2})::rest|_=>raise (Fail "bad parser"))),
(3,1,(fn Value.string(arg0)::rest => Value.charset(Arg.ident_charset arg0)::rest|_=>raise (Fail "bad parser"))),
(3,1,(fn Value.int(arg0)::rest => Value.charset(Arg.number_charset arg0)::rest|_=>raise (Fail "bad parser"))),
(3,4,(fn _::Value.numpairs(arg0)::_::_::rest => Value.charset(Arg.range_charset arg0)::rest|_=>raise (Fail "bad parser"))),
(3,1,(fn _::rest => Value.charset(Arg.empty_charset {})::rest|_=>raise (Fail "bad parser"))),
(3,4,(fn _::Value.charsets(arg0)::_::_::rest => Value.charset(Arg.union_charset arg0)::rest|_=>raise (Fail "bad parser"))),
(3,4,(fn _::Value.charsets(arg0)::_::_::rest => Value.charset(Arg.intersect_charset arg0)::rest|_=>raise (Fail "bad parser"))),
(3,5,(fn _::Value.charsets(arg0)::Value.charset(arg1)::_::_::rest => Value.charset(Arg.diff_charset {2=arg0,1=arg1})::rest|_=>raise (Fail "bad parser"))),
(3,4,(fn _::Value.charsets(arg0)::_::_::rest => Value.charset(Arg.comp_charset arg0)::rest|_=>raise (Fail "bad parser"))),
(3,1,(fn _::rest => Value.charset(Arg.any_charset {})::rest|_=>raise (Fail "bad parser"))),
(4,0,(fn rest => Value.charsets(Arg.nil_charsets {})::rest)),
(4,2,(fn Value.charsets(arg0)::Value.charset(arg1)::rest => Value.charsets(Arg.cons_charsets {2=arg0,1=arg1})::rest|_=>raise (Fail "bad parser"))),
(5,1,(fn Value.string(arg0)::rest => Value.regexp(Arg.ident_regexp arg0)::rest|_=>raise (Fail "bad parser"))),
(5,1,(fn Value.int(arg0)::rest => Value.regexp(Arg.number_regexp arg0)::rest|_=>raise (Fail "bad parser"))),
(5,1,(fn Value.intlist(arg0)::rest => Value.regexp(Arg.string_regexp arg0)::rest|_=>raise (Fail "bad parser"))),
(5,1,(fn _::rest => Value.regexp(Arg.any_regexp {})::rest|_=>raise (Fail "bad parser"))),
(5,1,(fn _::rest => Value.regexp(Arg.epsilon_regexp {})::rest|_=>raise (Fail "bad parser"))),
(5,1,(fn _::rest => Value.regexp(Arg.empty_regexp {})::rest|_=>raise (Fail "bad parser"))),
(5,4,(fn _::Value.regexps(arg0)::_::_::rest => Value.regexp(Arg.concat_regexp arg0)::rest|_=>raise (Fail "bad parser"))),
(5,4,(fn _::Value.regexps(arg0)::_::_::rest => Value.regexp(Arg.seq_regexp arg0)::rest|_=>raise (Fail "bad parser"))),
(5,4,(fn _::Value.regexps(arg0)::_::_::rest => Value.regexp(Arg.union_regexp arg0)::rest|_=>raise (Fail "bad parser"))),
(5,4,(fn _::Value.regexp(arg0)::_::_::rest => Value.regexp(Arg.option_regexp arg0)::rest|_=>raise (Fail "bad parser"))),
(5,4,(fn _::Value.regexp(arg0)::_::_::rest => Value.regexp(Arg.closure_regexp arg0)::rest|_=>raise (Fail "bad parser"))),
(5,4,(fn _::Value.regexp(arg0)::_::_::rest => Value.regexp(Arg.plus_regexp arg0)::rest|_=>raise (Fail "bad parser"))),
(5,5,(fn _::Value.regexp(arg0)::Value.int(arg1)::_::_::rest => Value.regexp(Arg.equal_regexp {1=arg0,2=arg1})::rest|_=>raise (Fail "bad parser"))),
(5,5,(fn _::Value.regexp(arg0)::Value.int(arg1)::_::_::rest => Value.regexp(Arg.geq_regexp {1=arg0,2=arg1})::rest|_=>raise (Fail "bad parser"))),
(5,6,(fn _::Value.regexp(arg0)::Value.int(arg1)::Value.int(arg2)::_::_::rest => Value.regexp(Arg.repeat_regexp {1=arg0,3=arg1,2=arg2})::rest|_=>raise (Fail "bad parser"))),
(5,1,(fn _::rest => Value.regexp(Arg.eos_regexp {})::rest|_=>raise (Fail "bad parser"))),
(6,0,(fn rest => Value.regexps(Arg.nil_regexps {})::rest)),
(6,2,(fn Value.regexps(arg0)::Value.regexp(arg1)::rest => Value.regexps(Arg.cons_regexps {2=arg0,1=arg1})::rest|_=>raise (Fail "bad parser"))),
(7,3,(fn Value.string(arg0)::_::Value.regexp(arg1)::rest => Value.arm(Arg.sole_arm {2=arg0,1=arg1})::rest|_=>raise (Fail "bad parser"))),
(8,1,(fn Value.arm(arg0)::rest => Value.arms(Arg.sing_arms arg0)::rest|_=>raise (Fail "bad parser"))),
(8,2,(fn Value.arms(arg0)::Value.arm(arg1)::rest => Value.arms(Arg.cons_arms {2=arg0,1=arg1})::rest|_=>raise (Fail "bad parser"))),
(9,2,(fn Value.string(arg0)::_::rest => Value.directive(Arg.name_directive arg0)::rest|_=>raise (Fail "bad parser"))),
(9,2,(fn Value.string(arg0)::_::rest => Value.directive(Arg.enable_directive arg0)::rest|_=>raise (Fail "bad parser"))),
(9,2,(fn Value.int(arg0)::_::rest => Value.directive(Arg.alphabet_directive arg0)::rest|_=>raise (Fail "bad parser"))),
(9,4,(fn Value.regexp(arg0)::_::Value.string(arg1)::_::rest => Value.directive(Arg.regexp_directive {2=arg0,1=arg1})::rest|_=>raise (Fail "bad parser"))),
(9,4,(fn Value.charset(arg0)::_::Value.string(arg1)::_::rest => Value.directive(Arg.set_directive {2=arg0,1=arg1})::rest|_=>raise (Fail "bad parser"))),
(9,6,(fn Value.arms(arg0)::_::Value.string(arg1)::_::Value.string(arg2)::_::rest => Value.directive(Arg.function_directive {3=arg0,2=arg1,1=arg2})::rest|_=>raise (Fail "bad parser"))),
(10,0,(fn rest => Value.directives(Arg.nil_directives {})::rest)),
(10,2,(fn Value.directives(arg0)::Value.directive(arg1)::rest => Value.directives(Arg.cons_directives {2=arg0,1=arg1})::rest|_=>raise (Fail "bad parser")))],
(fn Value.directives x => x | _ => raise (Fail "bad parser")), Arg.error)
end
end