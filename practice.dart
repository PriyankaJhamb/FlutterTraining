import 'dart:io';

printNumber({num:5})
{
  print(num);
  num>1?printNumber(num: num-1):exit(0);
  // if (num==1)
  // {
  //   exit(0);
  // }
  // else
  // {
  //   printNumber(num: num-1);
  // }
}
void main()
{
  printNumber(num:10);
}