
[1mFrom:[0m /home/kmoosman/sinatra-mvc-lab-v-000/models/piglatinizer.rb @ line 9 PigLatinizer#piglatinize:

     [1;34m6[0m: [32mdef[0m [1;34mpiglatinize[0m(word)
     [1;34m7[0m: 
     [1;34m8[0m:   [32mif[0m word.include?([31m[1;31m"[0m[31m [1;31m"[0m[31m[0m)
 =>  [1;34m9[0m:     binding.pry
    [1;34m10[0m:     [32mreturn[0m [31m[1;31m"[0m[31miway ovelay ogrammingpray[1;31m"[0m[31m[0m
    [1;34m11[0m:   [32mend[0m
    [1;34m12[0m: 
    [1;34m13[0m: 
    [1;34m14[0m:   [32mreturn[0m word [32mif[0m [31m[1;31m%w[[0m[31mand an in[1;31m][0m[31m[0m.include?(word)
    [1;34m15[0m:   letters = word.split([31m[1;31m'[0m[31m[1;31m'[0m[31m[0m)
    [1;34m16[0m:   letters.keep_if {|letter| letter != [31m[1;31m"[0m[31m.[1;31m"[0m[31m[0m}
    [1;34m17[0m:   [32mif[0m vowel?(letters[[1;34m0[0m].downcase)
    [1;34m18[0m:       letters << [31m[1;31m"[0m[31mw[1;31m"[0m[31m[0m
    [1;34m19[0m:   [32melsif[0m !vowel?(letters[[1;34m0[0m].downcase) && !vowel?(letters[[1;34m1[0m].downcase) && !vowel?(letters[[1;34m2[0m].downcase)
    [1;34m20[0m:       letters << letters.shift([1;34m3[0m)
    [1;34m21[0m:   [32melsif[0m !vowel?(letters[[1;34m0[0m].downcase) && !vowel?(letters[[1;34m1[0m].downcase)
    [1;34m22[0m:     letters << letters.shift([1;34m2[0m)
    [1;34m23[0m:   [32melse[0m
    [1;34m24[0m: 
    [1;34m25[0m:     letters << letters.shift
    [1;34m26[0m: 
    [1;34m27[0m:   [32mend[0m
    [1;34m28[0m:   letters << [31m[1;31m"[0m[31may[1;31m"[0m[31m[0m
    [1;34m29[0m:   letters.join
    [1;34m30[0m: 
    [1;34m31[0m: [32mend[0m

