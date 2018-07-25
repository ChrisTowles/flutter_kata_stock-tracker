

# Flutter Kata - Stock Tracker

## Purpose

The goal of the repo is to build a Stock Tracker to help improve your knowledge and speed using [flutter](https://flutter.io/). By using the [Kata](https://en.wikipedia.org/wiki/Kata) practice from martial arts.

> The goal is to internalize the movements and techniques of a kata so they can be executed and adapted under different circumstances, without thought or hesitation. A novice’s actions will look uneven and difficult, while a master’s appear simple and smooth. ([wiki kata](https://en.wikipedia.org/wiki/Kata))


As a developer I often find myself trying to run before I can walk. I make the mental mistake that because I know how to use (insert framework or language you've used for years), I imagine I can move at that same speed in another language or framework.  The effect is that instead of being productive I'm fighting simple features and misunderstandings that slow me down. So this repo is my attempt to solve the problem but first building my skills starting with a simple app. My hope is that through practicing the basics first and then layering in complexly leads to mastery.

## Goal

Build an App that meats the Requirements below every day **FROM SCRATCH**. I say from scratch because the practice from doing it over and over is the goal here. Not just building a stock tracking app the world likely doesn't need. 

Start by trying to complete just level 1. And after that's doable in a single session or day add additional levels of requirements to the task to make sure its a challenge. 

My challenge to you is can you build this app...
* At what level of requirements
* How fast can you do it?

## Requirement Levels

To grow better at programming in flutter and dart I came up with some requirements. The goal is to complete the app at each requirement in a programming session. (Let's say 1 to 3 hours) Once you can complete a level. Try and to complete the task with the next level.


### Requirements Level - 1

* Show a `ListView` with 3 different stocks.
   * For now hardcode the stocks and prices as fake data.
   * Examples: `GOOG`, `AAPL`, `TSLA` 
 * List view should contain `ListTitle` and display stock name and price.
   

### Addtional Requirements Level - 2
   * use [BLoC pattern using streams](https://medium.com/flutter-io/build-reactive-mobile-apps-in-flutter-companion-article-13950959e381) to provide stock data
        * can be passed in widget constructors
        * can still be fake data.
    * Use `StreamBuilder` to build UI.


### Addtional Requirements Level - 3
   * use BLoC provider pattern using an `InheritedWidget`  to provide BLoC to widgets.

### Additional Requirements Level - 4
* Have your bloc get real-time stock prices from an API.
    * You can use `https://api.iextrading.com/1.0/stock/{STOCK_SYMBOL}/batch?types=quote&last=1`
    * Example: AAPL (Apple)
        * [https://api.iextrading.com/1.0/stock/AAPL/batch?types=quote&last=1](https://api.iextrading.com/1.0/stock/AAPL/batch?types=quote&last=1)
 * parse json with `built_value` package. 
    * Hint - generate with - [json2builtvalue](https://github.com/charafau/json2builtvalue)

### Addtional Requirements Level - 5
* Add '2' tests to the `stocksbloc`


### Addtional Requirements Level - 6
* Add functionaly to `Add` new Stocks to List.
* Add functionaly to `Delete` new Stocks to List.

### Additional Requirements Level - 7
* Save the Stocks as Preference that will be saved between opening.

## Architecture Choices

Personal I set up these requirements with the [BLoC](https://medium.com/flutter-io/build-reactive-mobile-apps-in-flutter-companion-article-13950959e381) design pattern to better help understand and implement that pattern. You could use Redux or stateful widgets, just adjust your Requirements to match.

## Tips

Look into creating some useful snippets for the functionality you will use in many apps. Like 'StreamBuilder' and 'BlocProvider'.
https://snippet-generator.app/


## Docs
[Technical Debt and Streams/BLoC - The Boring Flutter Development Show, Ep. 4](https://www.youtube.com/watch?v=fahC3ky_zW0&list=PLOU2XLYxmsIK0r_D-zWcmJ1plIcDNnRkK&index=5&linkId=54548192)

For help getting started with Flutter, view our online
[documentation](https://flutter.io/).
