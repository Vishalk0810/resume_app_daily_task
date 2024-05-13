# resume_app_daily_task

# What is List and Map?

👉 List :  The list is an ordered collection of objects and the List can contain duplicate values.

# Predefined functions of list

👉 Length of List 

```bash
void main() {
 
    List name = ["Vishal", "v", "i", "s" , "h" , "a" ,"l"];
  
    print(name.length);
 
}
```

👉 add()

```bash
void main() {

    List name = ["Vishal", "v", "i", "s" , "h" , "a" ,"l"];
  
    print(name[0]);
  
    name.add(50);
  
    print(name);
}
```

👉 addAll()

```bash
void main() {

    List name = ["Vishal", "v", "i", "s" , "h" , "a" ,"l"];
  
    print(name[0]);
  
    name.addAll(['Akhil', 4, 5]);
  
    print(name);
}
```
👉 insert()

```bash
void main() {

    List name = ["Vishal", "v", "i", "s" , "h" , "a" ,"l"];

    print(name[0]);

    name.insert(2, 50);

    print(name);
}
```

👉 remove()

```bash
void main() {
    List name = ["Vishal", "v", "i", "s" , "h" , "a" ,"l"];
  
    print(name[0]);
  
    name.remove("B");
  
    print(name);
}
```

👉 removeAt()

```bash
void main() {
    List name = ["Vishal", "v", "i", "s" , "h" , "a" ,"l"];
  
    print(name[0]);
  
    name.removeAt(3);
  
    print(name);
}
```

# Example

```bash 
List sports = ['cricket', 'football', 'tennis', 'baseball'];
```

👉 Map :  A Map is an object that maps keys to values or is a collection of attribute-value pairs.

# Predefined functions of map

👉 addAll() 
👉 remove() 
👉 forEach() 
👉 update()

# Example

```bash 
Map details = {'Usrname':'tom','Password':'pass@123'};
```

# Generics

👉 Generics in Dart provide a way to write reusable code that can work with different types. They allow you to define classes, functions, and interfaces that can operate on a variety of data types without sacrificing type safety. Generics are denoted by using angle brackets < > and a type parameter.

# Status Bar

## For Global

```bash
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.red),);
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.landscapeLeft]);
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
    );
  }
}
```

## For Appbar

```bash
class Status extends StatefulWidget {
  const Status({super.key});

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(statusBarColor: Colors.grey),
        backgroundColor: Colors.black,
        title: const Text('Status Bar', style: TextStyle(color: Colors.white,),),
      ),
    );
  }
}
```

# Gmail Drawer

<img src="https://github.com/Vishalk0810/resume_app_daily_task/assets/149374506/5159d7b1-7dd7-47e6-8cca-5180de37a4ae" height=22% width=35%>

<br>

# Login Page

<img src="https://github.com/Vishalk0810/resume_app_daily_task/assets/149374506/bd622f42-04f7-4bcd-8fe9-08946a9afd54" height=22% width=35%>

<br>

<img src="https://github.com/Vishalk0810/resume_app_daily_task/assets/149374506/a801a3d8-20d2-49e2-8446-e0202e3b6585" height=22% width=35%>

<br>

https://github.com/Vishalk0810/resume_app_daily_task/assets/149374506/2d85cd7e-1ee7-4eca-bd71-70763318fec1

<br>

# Gmail Login

<img src="https://github.com/Vishalk0810/resume_app_daily_task/assets/149374506/7021fca4-e135-46d3-8641-d1a1894a747f" height=22% width=35%>

<br>

<img src="https://github.com/Vishalk0810/resume_app_daily_task/assets/149374506/90e8c515-37fa-462e-b021-71b43e2602a7" height=22% width=35%>

<br>

<img src="https://github.com/Vishalk0810/resume_app_daily_task/assets/149374506/6ec7324f-88fb-43a7-892f-b2f7d84eeb08" height=22% width=35%>

<br>










