import 'package:get/get.dart';
import 'package:grandmarche/models/resturant.dart';
import 'package:grandmarche/service/api_service.dart';



class HomeController extends GetxController{
  var resturantList=<Restaurant>[].obs;
  RxBool isLoading=true.obs;
  void fetchProducts()async{
    var resturant=await ApiService.fetchResturantData();
    // print(resturant);
    if(resturant!=null){
      resturantList.value=resturant.restaurants;
      print(resturant);
      isLoading.value=false;
      print(isLoading);

    }
  }
  @override
  void onInit() {
    fetchProducts();
    // TODO: implement onInit
    super.onInit();
  }


}