//first you need to import the module


//some shortcuts 
/*
To wrap widgets,alignments etc.
just right click on widget -> then click refactor and select what you need 
 */


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
/*
1.Scaffold 
it comprises of a head(appbar) body and other widgets 

 */

