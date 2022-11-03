import'package:flutter/material.dart';

class Home extends StatelessWidget {
   Home({Key? key}) : super(key: key);

   // ignore: non_constant_identifier_names
   final TeamNameEditingController = TextEditingController();
  // ignore: unnecessary_new, non_constant_identifier_names
  final PlayerNameEditingController = new TextEditingController();
  // ignore: unnecessary_new, non_constant_identifier_names
  final ContactEditingController = new TextEditingController();
  // ignore: unnecessary_new, non_constant_identifier_names
  final AddressEditingController = new TextEditingController();





  @override
  Widget build(BuildContext context) {

    // ignore: non_constant_identifier_names
    final TeamNameField= TextFormField(
      autofocus: false,
      controller: TeamNameEditingController,
      keyboardType: TextInputType.name,
      validator: (value){
        // ignore: unnecessary_new
        RegExp regex = new RegExp(r'^.{3,}$');
        if(value!.isEmpty){
          return("Team name cann`t empty");
        }
        if(!regex.hasMatch(value)){
          return("Please Enter valid Team name(Min. 3 character");

        }
        return null;
      },
      onSaved: (value){
        TeamNameEditingController.text =value!;
      },
      textInputAction: TextInputAction.next,
      decoration:  InputDecoration(
        prefixIcon:const Icon(Icons.account_circle),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15,),
        hintText: 'Team Name',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );




    // ignore: non_constant_identifier_names, unused_local_variable
    final PlayerNameField= TextFormField(
      autofocus: false,
      controller: PlayerNameEditingController,
      keyboardType: TextInputType.name,
      validator: (value){
        // ignore: unnecessary_new
        RegExp regex = new RegExp(r'^.{3,}$');
        if(value!.isEmpty){
          return("Player name cann`t empty");
        }
        if(!regex.hasMatch(value)){
          return("Please Enter valid Player name(Min. 3 character");

        }
        return null;
      },
      onSaved: (value){
        PlayerNameEditingController.text =value!;
      },
      textInputAction: TextInputAction.next,
      decoration:  InputDecoration(
        prefixIcon:const Icon(Icons.account_circle),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15,),
        hintText: 'Player Name',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  
  
// ignore: non_constant_identifier_names
    final ContactField= TextFormField(
      autofocus: false,
      controller: ContactEditingController,
      keyboardType: TextInputType.name,
      validator: (value){
        // ignore: unnecessary_new
        RegExp regex = new RegExp(r'^.{3,}$');
        if(value!.isEmpty){
          return("Contact cann`t empty");
        }
        if(!regex.hasMatch(value)){
          return("Please Enter valid Contact number(Min. 3 character");

        }
        return null;
      },
      onSaved: (value){
        ContactEditingController.text =value!;
      },
      textInputAction: TextInputAction.next,
      decoration:  InputDecoration(
        prefixIcon:const Icon(Icons.contact_phone_rounded),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15,),
        hintText: 'Contact',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  

 // ignore: non_constant_identifier_names, unused_local_variable
 final AddressField= TextFormField(
      autofocus: false,
      controller: AddressEditingController,
      keyboardType: TextInputType.name,
      validator: (value){
        // ignore: unnecessary_new
        RegExp regex = new RegExp(r'^.{3,}$');
        if(value!.isEmpty){
          return("Address can`t empty");
        }
        if(!regex.hasMatch(value)){
          return("Please Enter valid Address(Min. 3 character");

        }
        return null;
      },
      onSaved: (value){
        AddressEditingController.text =value!;
      },
      textInputAction: TextInputAction.next,
      decoration:  InputDecoration(
        prefixIcon:const Icon(Icons.location_city_rounded),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15,),
        hintText: 'Address',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  


// ignore: unused_local_variable
final signUpButton=Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.blue,
      child: MaterialButton(
        padding: const EdgeInsets.fromLTRB(20, 15, 20, 15,),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: (){  },
      child: const Text("Submit",textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),),
    );

    return Stack(
      children: [
       Container(
          decoration: const BoxDecoration(
            // color: Colors.white,
            image: DecorationImage(
                image: AssetImage("assets/images/background.png"),
                fit: BoxFit.cover),      
                ),
    
                child: Scaffold( 
          appBar: AppBar(
             title: const Center(child: Text('Registration')),
          ),  
      
           body: Center(
            child: SingleChildScrollView(
              // ignore: avoid_unnecessary_containers
              child:Container(
                child: Padding(
                  padding: const EdgeInsets.all(38.0),
                  child: Form(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
      
                        TeamNameField,
                        const SizedBox(height: 20,),
                        PlayerNameField,
                        const SizedBox(height: 20,),
                        ContactField,
                        const SizedBox(height: 20,),
                        AddressField,
                        const SizedBox(height: 20,),
                        signUpButton,
      
      
                
                       
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        
      ),
      ],
     
    );
    
  }
}