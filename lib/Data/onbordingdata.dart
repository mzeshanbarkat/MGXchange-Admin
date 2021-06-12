import 'package:flutter/material.dart';


class SliderModel{

  String imageAssetPath;
  String title;
  String desc;

  SliderModel({this.imageAssetPath,this.title,this.desc});

  void setImageAssetPath(String getImageAssetPath){
    imageAssetPath = getImageAssetPath;
  }

  void setTitle(String getTitle){
    title = getTitle;
  }

  void setDesc(String getDesc){
    desc = getDesc;
  }

  String getImageAssetPath(){
    return imageAssetPath;
  }

  String getTitle(){
    return title;
  }

  String getDesc(){
    return desc;
  }

}


List<SliderModel> getSlides(){

  List<SliderModel> slides = new List<SliderModel>();
  SliderModel sliderModel = new SliderModel();

  //1
  sliderModel.setDesc("In this app We Sell Product and Take Payment or Loan");
  sliderModel.setTitle("");
  sliderModel.setImageAssetPath("assets/sell.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //2
  sliderModel.setDesc("Meet the Terms and Conditions ");
  sliderModel.setTitle("");
  sliderModel.setImageAssetPath("assets/done.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //3
  sliderModel.setDesc("After Approving Selling Items take Loan ");
  sliderModel.setTitle("");
  sliderModel.setImageAssetPath("assets/loan.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //4


//5

  return slides;
}