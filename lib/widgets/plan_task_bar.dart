import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:studyplanner/controllers/task_controller.dart';
import 'package:studyplanner/theme.dart';
import 'package:studyplanner/widgets/Pbutton.dart';
import 'package:studyplanner/widgets/input_field.dart';

import '../models/plan_task.dart';

class AddTaskPage extends StatefulWidget {
  const AddTaskPage({Key? key}) : super(key: key);

  @override
  State<AddTaskPage> createState() => _AddTaskPageState();
}

class _AddTaskPageState extends State<AddTaskPage> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _noteController = TextEditingController();
  final TaskController _taskController = Get.put(TaskController());
  DateTime _selectedDate = DateTime.now();
  String _endTime="9:30 PM";
  String _startTime = DateFormat("hh:mm a").format(DateTime.now()).toString();
  int _selectedRemind = 5;
  List<int> remindList=[
    5,
    10,
    15,
    20,
  ];

  String _selectedRepeat = "none";
  List<String> repeatList=[
    'None',
    'Setiap Hari',
    'Setiap Minggu',
    'Setiap Hari'
  ];
int _selectedColor=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      appBar: _appBar(context),
      body: Container(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
                Text(
                  'Plans',
                  style: HeadingStyle,
                ),
                Myinputfield(title: "Judul", hint: "Masukan judul", controller: _titleController,),
                Myinputfield(title: "Deskripsi", hint: "Masukan deskripsi", controller: _noteController,),
                Myinputfield(title: "tanggal", hint: DateFormat.yMd().format(_selectedDate),
                widget: IconButton(
                  icon: Icon(Icons.calendar_today_outlined,
                    color: Colors.grey[600],
                  ),
                  onPressed: () {
                    _getDateFromUser();
                  },
                ),),
                Row(
                  children: [
                    Expanded(
                        child: Myinputfield(
                         title: "Waktu mulai",
                          hint:_startTime,
                          widget: IconButton(
                            onPressed: (){
                                _getTimeFromUser(isStarTime: true);
                            },
                            icon: Icon(
                              Icons.access_time_rounded,
                              color: Colors.grey,
                            ),
                          ),
                        )
                    ),
                    Expanded(
                        child: Myinputfield(
                          title: "Waktu akhir",
                          hint:_endTime,
                          widget: IconButton(
                            onPressed: (){
                              _getTimeFromUser(isStarTime: false);
                            },
                            icon: Icon(
                              Icons.access_time_rounded,
                              color: Colors.grey,
                            ),
                          ),
                        )
                    ),
                  ],
                ),
                Myinputfield(title: "Pengingat", hint: "$_selectedRemind menit lebih awal",
                widget: DropdownButton(
                  icon: Icon(Icons.keyboard_arrow_down,
                  color: Colors.grey,

                  ),
                  iconSize: 32,
                  elevation: 4,
                  style: subTitleStyle,
                  underline: Container(
                    height: 0,
                  ),
                  onChanged: (String? newValue){
                    setState(() {
                      _selectedRemind = int.parse(newValue!);
                    });
                  },
                  items: remindList.map<DropdownMenuItem<String>>((int value){
                    return DropdownMenuItem<String>(
                      value: value.toString(),
                      child: Text(value.toString())
                    );
                  }
                  ).toList(),
                ),
                ),
                Myinputfield(title: "Atur ulang", hint: "$_selectedRepeat",
                widget: DropdownButton(
                  icon: Icon(Icons.keyboard_arrow_down,
                    color: Colors.grey,

                  ),
                  iconSize: 32,
                  elevation: 4,
                  style: subTitleStyle,
                  underline: Container(
                    height: 0,
                  ),
                  onChanged: (String? newValue){
                    setState(() {
                      _selectedRepeat = newValue!;
                    });
                  },
                  items: repeatList.map<DropdownMenuItem<String>>((String? value){
                    return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value!, style:TextStyle(color: Colors.grey))
                    );
                  }
                  ).toList(),
                ),
              ),
                SizedBox(
                  height: 18,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    _colorPallete(),
                    Mybutton(Label: "Create Plans", onTap: ()=>_validateDate())
                  ],
                )



            ],
          ),
        ),
      ),
    );
  }
_validateDate(){
  if(_titleController.text.isNotEmpty&&_noteController.text.isNotEmpty){
    _addTaskToDb();
    Get.back();
  }else if(_titleController.text.isEmpty ||_noteController.text.isEmpty){
    Get.snackbar('required', 'Tolong isi semua ya :) !',
    snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.white,
      colorText: Colors.red,
      icon: Icon(Icons.warning_amber_rounded
      )
    );
  }
}

_addTaskToDb() async{
  int value = await _taskController.addTask(
       task:Task(
         note:_noteController.text,
         title:_titleController.text,
         date: DateFormat.yMd().format(_selectedDate),
         startTime: _startTime,
         endTime:_endTime,
         remind: _selectedRemind,
         repeat: _selectedRepeat,
         color: _selectedColor,
         isCompleted: 0,
       )
   );
  print("id saya adalah "+"$value");
}
  _colorPallete(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Warna",
          style: titleStyle,
        ),
        SizedBox(
          height: 8.0,
        ),
        Wrap(
          children: List<Widget>.generate(
              3,
                  (int index){
                return GestureDetector(
                  onTap: (){
                    setState(() {
                      _selectedColor=index;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: CircleAvatar(
                      radius: 14,
                      backgroundColor: index==0?PrimaryClr:index==1?OrangeColor:blueNavyClr,
                      child: _selectedColor==index?Icon(Icons.done,
                          color: Colors.white,
                          size: 16
                      ):Container(),
                    ),
                  ),
                );
              }
          ),
        )
      ],
    );
  }
  _appBar(BuildContext context){
    return AppBar(
      elevation: 0,
      backgroundColor: context.theme.backgroundColor,
      leading: GestureDetector(
        onTap: (){
          Get.back();
        },
        child: Icon(Icons.arrow_back,
            size: 20,
            color: Get.isDarkMode ?Colors.white: Colors.black
        ),
      ),
      actions: [
        CircleAvatar(
          backgroundImage: AssetImage(
              'img/user.png'
          ),
        ),
        SizedBox(
          width: 20,
        )
      ],
    );
  }
  _getDateFromUser() async {
    DateTime? _pickerDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2016),
        lastDate: DateTime(2121)
    );

    if(_pickerDate!=null){
      setState(() {
        _selectedDate = _pickerDate;
      });
    }else{
      print('data error');
    }
  }
  _getTimeFromUser({ required bool isStarTime}) async {
    var pickedTime = await _showTimePicker();
    String _formatedTime = pickedTime.format(context);
    if(pickedTime==null){
      print("Time canceled");
    }else if(isStarTime==true){
      setState(() {
        _startTime=_formatedTime;
      });
    }else if(isStarTime==false){
      setState(() {
        _endTime=_formatedTime;
      });
    }
  }
  _showTimePicker(){
    return showTimePicker(
        initialEntryMode: TimePickerEntryMode.input,
        context: context,
        initialTime: TimeOfDay(
            hour: int.parse(_startTime.split(":")[0]),
            minute: int.parse(_startTime.split(":")[1].split("")[0]),
        )
    );
  }
}
