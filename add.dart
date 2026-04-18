import 'package:flutter/material.dart';
import 'task_model.dart';

class NewTaskScreen extends StatefulWidget {
  TextEditingController titleController = TextEditingController();
  @override
  State<NewTaskScreen> createState() => _NewTaskScreenState();
}

class _NewTaskScreenState extends State<NewTaskScreen> {
  String selectedPriority = "Medium";

  TextEditingController? get titleController => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F6FA),

      appBar: AppBar(
        backgroundColor: Color(0xFF5E46F1),
        elevation: 0,
        leading: Icon(Icons.arrow_back),
        title: Text("New Task"),
        centerTitle: false,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [

            // Title
            Text("Title "),
            SizedBox(height: 8),
            TextField(
              controller: titleController,
              decoration: InputDecoration(
                hintText: "e.g., Morning workout",
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),

            SizedBox(height: 20),

            // Description
            Row(
              children: [
                Text("Description"),
                SizedBox(width: 5),
                Text("(optional)", style: TextStyle(color: Colors.grey)),
              ],
            ),
            SizedBox(height: 8),
            TextField(
              maxLines: 4,
              decoration: InputDecoration(
                hintText: "Add more details about your task",
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),

            Align(
              alignment: Alignment.centerRight,
              child: Text(
                "0/500",
                style: TextStyle(color: Colors.grey),
              ),
            ),

            SizedBox(height: 20),

            Text("Priority"),
            SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _priorityBox("High", Colors.red),
                _priorityBox("Medium", Colors.orange),
                _priorityBox("Low", Colors.green),
              ],
            ),

            SizedBox(height: 20),

            Row(
              children: [
                Text("Time"),
                SizedBox(width: 5),
                Text("(optional)", style: TextStyle(color: Colors.grey)),
              ],
            ),
            SizedBox(height: 8),

            TextField(
              readOnly: true,
              decoration: InputDecoration(
                hintText: "--:-- --",
                prefixIcon: Icon(Icons.access_time),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onTap: () async {
                TimeOfDay? picked = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                );
              },
            ),

            SizedBox(height: 30),

            // Buttons
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Cancel"),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF5E46F1),
                    ),
                    onPressed: () {
                      final task = Task(
                        title: titleController.text,
                        priority: titleController.text,
                      );
                      if (titleController.text.isNotEmpty) {

                        Navigator.pop(
                          context,
                          Task(
                            title: titleController.text,
                            priority: selectedPriority,
                          ),
                        );
                      }
                    },
                    child: Text("Create Task",style: TextStyle(color: Colors.white),),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),


      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Color(0xFF5E46F1),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.today), label: "Today"),
          BottomNavigationBarItem(icon: Icon(Icons.check), label: "Completed"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }

  // 🔹 Priority Widget
  Widget _priorityBox(String title, Color color) {
    bool isSelected = selectedPriority == title;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedPriority = title;
        });
      },
      child: Container(
        width: 100,
        padding: EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: isSelected ? Colors.orange : Colors.grey.shade300,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            CircleAvatar(radius: 4, backgroundColor: color),
            SizedBox(height: 5),
            Text(title),
          ],
        ),
      ),
    );
  }
}

extension on TextEditingController? {
  get text => null;
}