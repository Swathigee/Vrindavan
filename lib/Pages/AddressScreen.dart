import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:flutter/services.dart' show rootBundle;

import 'DashboardScreen.dart';


class AddressScreen extends StatefulWidget {
  @override
  _AddressScreenState createState() => _AddressScreenState();
}


class _AddressScreenState extends State<AddressScreen> {
  TextEditingController addressTextField = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController houseno= TextEditingController();
  TextEditingController address= TextEditingController();
  late BitmapDescriptor icon;
  late bool _serviceEnabled;
  late PermissionStatus _permissionGranted;
  late LocationData _userLocation;
  bool isSwitched = false;
  late String _mapStyle;
  bool location = false;
  void initState() {
    addressTextField.text = '14/46, 3rd St, Anna Nager,.....';
    getIcons();
    rootBundle.loadString('assets/map_style.txt').then((string) {
      _mapStyle = string;
    });
    super.initState();

  }


  getIcons() async {
    var icon = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(devicePixelRatio: 3.2),
        "assets/cursor.png");
    setState(() {
      this.icon = icon;
    });
  }
  Future<void> _getUserLocation() async {
    Location location = new Location();

    // Check if location service is enable
    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }

    // Check if permission is granted
    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    final _locationData = await location.getLocation();
    setState(() {
      _userLocation = _locationData;
      _child = mapWidget();
      var position = _userLocation;
      print("userlocation : $_userLocation");
    });
  }
  late GoogleMapController _controller;
  // Position position;
  late Widget _child;
  @override
  // void initState() {
  //   // TODO: implement initState
  //   // _child = RippleIndicator("Getting LOcation");
  //   // getCurrentLocation();
  //   super.initState();
  // }
  // void getCurrentLocation() async {
  //   Position res = await Geolocator().getCurrentPosition();
  //   setState(() {
  //     position = res;
  //     _child = mapWidget();
  //   });
  // }
  Set<Marker> _createMarker() {
    return <Marker>[
      Marker(markerId: MarkerId(""),
        position: LatLng(_userLocation.latitude!, _userLocation.longitude!),
        icon: BitmapDescriptor.defaultMarker,
        infoWindow: InfoWindow(title: "",),
      ),
    ].toSet();
  }



  double progressValue = 50;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        shape: Border(bottom: BorderSide(width: 5, color: Color(0XFF8ED1CB))),
        backgroundColor: Color(0XFFD9E6E9),
        elevation: 4,
        shadowColor: Colors.black.withOpacity(0.5),
        title: Text(
          'Add Home Address',
          style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
              color: Color(0XFF464646)),
        ),
        centerTitle: true,
      ),

      body: SafeArea(
       child: Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            key: _formKey,
            child: Container(
            color: Colors.black,
            height: height,
            width: width,
            child: Stack(
              children: [
                // Container(
                //   height: height,
                //   width: width,
                //   child: Image.asset('assets/img/map.png',fit: BoxFit.cover,),
                // ),
                mapWidget(),
                Positioned(
                  top: 5,right: 5,
                    child: IconButton(onPressed: () {
                      setState(() {
                        location = true;
                        _getUserLocation();
                      });
                    }, icon: Container(
                      height: 40,width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                spreadRadius: 0.1,
                                color: Colors.black.withOpacity(0.1),
                                offset: Offset(0, 4.0),
                                blurRadius: 2,
                              )
                            ]
                        ),
                        child: Icon(Icons.my_location,color: Colors.green,size: 18,)),

                    )),
                Positioned(
                  bottom: height/2.4,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        height: 60,
                        width: width-20,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(13)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10,right: 10),
                          child: Row
                            (
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                color: Color(0XFF1BBC9B),size: 24,
                              ),
                              SizedBox(width: 10,),
                              Expanded(
                                child: TextFormField(
                                  style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: Color(0XFF666666)),
                                  controller: addressTextField,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    labelText: 'Search Your Locality',
                                    labelStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.normal,color: Color(0XFF939393)),
                                  ),
                                )
                                // Column(
                                //   mainAxisAlignment: MainAxisAlignment.center,
                                //   crossAxisAlignment: CrossAxisAlignment.start,
                                //   children: [
                                //   Text('Search Your Locality',style: TextStyle(fontSize: 16,fontWeight: FontWeight.normal,color: Color(0XFF939393)),),
                                //   Text('14/46, 3rd St, Anna Nager,.....',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: Color(0XFF666666)),),
                                //   ],
                                // ),
                              ),
                              Image.asset('assets/img/search-interface-symbol.png',height: 30,width: 30,color: Color(0XFF1BBC9B))
                              // Icon(
                              //   Icons.search,
                              //   color: Color(0XFF1BBC9B),size: 34,
                              // ),
                            ],
                          ),
                        ),
                      ),
                    )),
                Positioned(
                  bottom: 0,
                    child: Container(
                      height: height/2.5,
                      width: width,
                      color: Color(0XFFD9E6E9),
                      child: Stack(
                        children: [
                          Positioned(
                              bottom: -50,
                              child: Container(
                                child: Image.asset('assets/img/Vector 3.png'),
                              )),
                          Padding(
                            padding: const EdgeInsets.only(left: 20,right: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  'Enter Your Details',
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0XFF464646)),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  width: width,
                                  child: Material(
                                    elevation: 2,
                                    shadowColor: Colors.black,
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 12),
                                      child: TextFormField(
                                        keyboardType: TextInputType.streetAddress,
                                          controller: houseno,
                                        decoration: InputDecoration(
                                            hintText: 'House Or Flat No / Floor / Building*',
                                            hintStyle: TextStyle(fontSize: 16),
                                            isDense: true, // important line
                                            contentPadding: EdgeInsets.fromLTRB(10, 15, 10,15),// control your hints text size
                                            fillColor:  Colors.white30 ,
                                            filled: true,
                                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(50), borderSide: BorderSide.none)),
                                        validator: (value) {
                                          if (value!.isEmpty ) {
                                            return 'Enter your Door No!';
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  width:width,
                                  child: Material(
                                    elevation: 2,
                                    shadowColor: Colors.black,
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 12),
                                      child: TextFormField(
                                        keyboardType: TextInputType.streetAddress,
                                          controller: address,
                                        decoration: InputDecoration(
                                            hintText: 'Address / Colony*',
                                            hintStyle: TextStyle(fontSize: 16),
                                            isDense: true, // important line
                                            contentPadding: EdgeInsets.fromLTRB(10, 15, 10,15),// control your hints text size
                                            fillColor:  Colors.white30 ,
                                            filled: true,
                                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(50), borderSide: BorderSide.none)),
                                        validator: (value) {
                                          if (value!.isEmpty ) {
                                            return 'Enter your Address!';
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20,),
                                SizedBox(
                                  width: 180,
                                  height: 50,
                                  child: ElevatedButton(
                                    onPressed: () {
                          if (_formKey.currentState!.validate()) {
                              _formKey.currentState!.save();
                         Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => DashBoard()));
                            }
                                    },
                                    child: Text('Continue',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 22),),
                                    style: ElevatedButton.styleFrom(
                                        shadowColor: Colors.transparent,
                                        primary: Color(0XFF437F77),
                                        shape: StadiumBorder()),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      )
                    ),
                )
              ],
            )

        ),
      ),

    )
    );
  }
  Widget mapWidget(){
    return       GoogleMap(
      mapType: MapType.normal,
      // myLocationEnabled: true,
      // markers: _createMarker(),i

      initialCameraPosition: location == false ? CameraPosition(
        target: LatLng(40, 3),
        zoom: 4,
      ) : CameraPosition(
        target: LatLng(_userLocation.latitude!, _userLocation.longitude!),
        zoom: 20.0,
      ),
      onMapCreated: (GoogleMapController controller){
        _controller = controller;
        _controller.setMapStyle(_mapStyle);
      },
    );
  }

}

