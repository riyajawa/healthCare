import 'dart:math';

class Calculatebmi
{
  int weight;
  int height;
  double bmi;
  Calculatebmi(int weight,int height)
  {
    this.weight=weight;
    this.height=height;
  }
  String calculate()
  {
    bmi=weight/pow(height/100, 2);
    return bmi.toStringAsFixed(1);
  }
  String getResult()
  {
    if(bmi>=25)
    {
      return 'overWeight';
    }
    else if(bmi>18.5)
    {
      return 'normal';
    }
    else
    {
      return 'underweight';
    }

  }
  String getInterpretation()
  {
    if(bmi>=25)
    {
      return 'You have higher than normal body weight.Try to exercise more';
    }
    else if(bmi>18.5)
    {
      return 'You have normal body weight.Good Job!';
    }
    else
    {
      return 'You have Lower than normal weight.Try to eat bit more.';
    }

  }

}