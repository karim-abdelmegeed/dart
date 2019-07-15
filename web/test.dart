import 'dart:async';

const weather="the wether is 35";

const seconds= Duration(seconds:5);

Future<void> printDailyNews()async{
  var weather_news=await printWeather();
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


