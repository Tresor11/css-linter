# CSS-linter

this repository contains an inplementation of a css linter for beginer using ruby <hr> </br>

## features

the linter implemented in this repository can:

- output warnings if the indentation is not correct

- output warnings if the correct assigmeht operator is not used

- output warnings if the line is not properly ended

- output warnings if the used css-poperty is not of the correct format

### notice:this lint will only check for the format of the css-property but it can't determine if it actually exist or not
<hr> </br>

## getting started

-first clone this repo by typing ```git clone https://github.com/Tresor11/css-linter.git``` in your terminal

-then navigate to the directory by typing ```cd css-lint``` in your terminal
<hr> </br>

## usage guide

to use this lint on your css file you should

-open ```bin/main.rb```

-navigate to line 5 and change path of the variable ```file``` to the path of your css file like: ```file = './file.css'```

-execute the lint you should typing ```ruby bin/main.rb``` in your terminal

  *it will output the warnings if your css file contains any
  *it won't output any if your css file passes the test
