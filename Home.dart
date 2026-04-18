import 'package:flutter/material.dart';
import 'add.dart';
import 'task_model.dart';
import 'combleted_task.dart';
class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;

  List<Task> tasks = []; // ✅ تمام

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text(
                "Hello, Mazen 👋",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF5E46F1),
                ),
              ),

              SizedBox(height: 5),

              Text(
                "Friday, April 17",
                style: TextStyle(color: Colors.grey),
              ),

              SizedBox(height: 20),

              Row(
                children: [
                  Expanded(child: _topCard()),
                  SizedBox(width: 10),
                  Expanded(child: _topCard()),
                ],
              ),

              SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Today's Tasks",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "${tasks.length} tasks",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),

              SizedBox(height: 30),

              Expanded(
                child: tasks.isEmpty
                    ? Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.check_circle_outline,
                        size: 80,
                        color: Colors.grey.shade300,
                      ),
                      SizedBox(height: 10),
                      Text(
                        "No tasks for today",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Tap the + button to add your first task",
                        style: TextStyle(color: Colors.grey),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                )
                    : ListView.builder(
                  itemCount: tasks.length,
                  itemBuilder: (context, index) {
                    final task = tasks[index];

                    return Card(
                      margin: EdgeInsets.symmetric(vertical: 8),
                      child: ListTile(
                        title: Text(task.title),
                        subtitle: Text(task.priority),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF5E46F1),
        onPressed: () async {
          final newTask = await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => NewTaskScreen(),
            ),
          );

          if (newTask != null) {
            setState(() {
              tasks.add(newTask);
            }
            );
          }
        },
        child: Icon(Icons.add, color: Colors.white),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        selectedItemColor: Color(0xFF5E46F1),
        onTap: (index) {
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MyApp(),
              ),
            );
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.today),
            label: "Today",
          ),


          BottomNavigationBarItem(
            icon: Icon(Icons.check_circle),
            label: "Completed",
          ),



          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }

  Widget _topCard() {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: Color(0xFF5E46F1),
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}