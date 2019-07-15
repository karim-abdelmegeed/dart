import 'dart:async';

const weather="the wether is 35";

const seconds= Duration(seconds:5);

Future<void> printDailyNews()async{
<<<<<<< HEAD
  var weather_news= printWeather();
=======
  var weather_news= await printWeather();
>>>>>>> 66d03dd6e1d4205160f682f8b6696329b304c40d
  print(weather_news);
}
void main(){
  printDailyNews();
  news();
  news1();
  news2();
  news3();
}
void news(){
    print('its daily news');
}
void news1(){
    print('its daily news');
}
void news2(){
    print('its daily news');
}
void news3(){
    print('its daily news');
}

Future<String> printWeather()=> Future.delayed(seconds,() => weather);


