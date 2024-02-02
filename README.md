# CSS-linter

This repository contains an inplementation of a CSS linter for beginer using Ruby. <hr> </br>

## features

this linter has the following features:

- output warnings if the indentation is not correct

- output warnings if the correct assigmeht operator is not used

- output warnings if the line is not properly ended

- output warnings if the used css-poperty is not of the correct format

### notice:this lint will only check for the format of the css-property but it can't determine if it actually exist or not
<hr> </br>

## getting started

- first clone this repo by typing ```git clone https://github.com/Tresor11/css-linter.git``` in your terminal

- then navigate to the directory by typing ```cd css-lint``` in your terminal
<hr> </br>

## usage guide

- run the linter by typing  ```ruby bin/main.rb``` in the terminal

- you will be asked to provide the path to your css file ex: ```./file.css```

#### after that your console should:

  *output the warnings if your css file contains any </br>
  *don't provide any output if your css file passes the test
  
  <hr>
  
## Example of good and bad code

#### Good:
```
.h2,
h2{
  font-weight: 700;
  font-size: 38px;
  padding: 10px 0 10px 0
  font-style: normal;
  font-stretch: normal;
  line-height: normal;
  letter-spacing: normal;
  color: #6f23ff;
  text-align: center;
}

```
<hr>

#### bad:
```
.h2,
h2{
font-weight: 700;
  font-size: 38px;
  padding: 10px 0 10px 0
  font-style: normal;
  font-stretch: normal;
  line-height: normal;
  letter-spacing: normal;
  color #6f23ff;
  text-align: center;
}


```
  <hr>
  
  ## Testing

- run the tests by typing ```rspec``` in the terminal

  <hr>
  
  ## Contributing

- run the tests by typing ```rspec``` in the terminal

  

  <hr>
  
  contact: @Tresor11
  
