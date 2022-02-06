//first you need to import the module


//some shortcuts
/*
To wrap widgets,alignments etc.
just right click on widget -> then click refactor and select what you need
 */


//Naming a varible to make variables private start them with an underscore

/*
Using variables with strings and its data types
Use (${})  symbol and then varName i.e ${var_name}

int ,String,double,bool num(takes decimal as well as non decimal values)

If u dont want to specify data type
use "var"
also "const"

"final " is similar to const but we can modify its value after declaration

 */

/* CREATING  A NEW widget  AND  importing it */

/*CONST vs FINAL
Const:
If the value you have is computed at runtime (new DateTime.now(), for example), you can not use a const for it. However, if the value is known at compile time (const a = 1;), then you should use const over final. There are 2 other large differences between const and final.
Firstly, if you're using const, you have to declare it as static const rather than just const.
Secondly, if you have a const collection, everything inside of that is in const.
 If you have a final collection, everything inside of that is not final.

Final:
final should be used over const if you don't know the value at compile time, and it will be calculated/grabbed at runtime.
 If you want an HTTP response that can't be changed, if you want to get something from a database, or if you want to read from a local file, use final.
  Anything that isn't known at compile time should be final over const.
*/

/**************************** WIDDGETS  ********************/
//Widgets are basically components i
/*
1.Scaffold
it comprises of a head(appbar) body and other widgets

 */

/********************METHODS **************************** */
/*
methods have return type and also params can be optional
in a method u need to wrap params in {} brackets
u can make them compulsory by using @required keyword before a param
define  a default value  in method params

optional params since they are in curly braces
methodReturnTyp methName({@required param_dataType  paramName,})
methodReturnTyp methName({ param_dataType  paramName,})
methodReturnTyp methName({ param_dataType  paramName=defaultVal,})

normal params
methodReturnTyp methName( param_dataType  paramName)

 */

// context basically tells what is the position of widgets  in tree


/**************************  THEME ******************************** */
/*
Theme data is used to set theme properties for widgets and also to set the default theme for the entire application.
themeMode: ThemeMode.dark,(or) ThemeMode.light
      darkTheme: ThemeData(
        brightness: Brightness.light,
      ),
 */


/************** To embed routes syntax is ************
  '/': (context) => HomePage(),
  routename : (context) => widgetName(),

  Create a different file for routes in the lib folder
  create static routes for different pages


  To move to a particular page after clicking on a button
  use Navigator.pushNamed(context, routename);



 */

/*
For a stateful widget convert class to a stateful widget
declare state variables as class variables


class _LoginPageState extends State<LoginPage> {
String userName = "";
.
.
.
.
}
*/

/************************  Layouts   ********************/
//constraints go in the parent widget
//sizes go in the child widget
//position is set by parents

/**************** JSON DECODE  *****************
 use data:convert library
 then after importing above lib use jsondecode method 


*/




/************************ HELPFUL NOTES   *********************/
//Never give decoration to child of widgets  give it to ancestors
//If you want to change the color of a widget, you can do it in the widget itself.
// In Dart and Flutter, a static method (or static function) is a method
//  defined as a member of a class but can be directly called
//   without creating an object instance via the constructor.
//   In other words, a static
// method is a port of a class instead of being a part of a specific instance
