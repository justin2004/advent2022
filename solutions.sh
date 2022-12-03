#!/bin/bash
apl "{⌈/+/¨⍎¨¨⍵⊆⍨×≢¨⍵}" day1_input.txt
apl "{+/3↑v⌷⍨⊂⍒v←+/¨⍎¨¨⍵⊆⍨×≢¨⍵}" day1_input.txt

apl "{
pairs←{⍵/¨⍨' '≠¨⍵}⋄
getScore←{⍵[2]+0 3 6[⌈3÷⍨(1 3) (2 1) (3 2) (1 1) (2 2) (3 3) (1 2) (2 3) (3 1) ⍳ ⊂⍵]}⋄
charNum←4|'ABC_XYZ'∘⍳⋄
+/getScore¨charNum¨pairs ⍵
}" day2_input.txt
