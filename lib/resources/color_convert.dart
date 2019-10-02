import 'package:flutter/material.dart';
import 'package:priodic_table/model/model.dart';
import 'package:priodic_table/resources/resources.dart';

Color mapColor(Elements element){
  if(element.atomicNo == 1){
    return hydgnColor;
  }
  else if(element.family == "Noble Gases"){
    return nobelColor;
  }
  else if(element.family == "Alkali Metals"){
    return alkaliColor;
  }
  else if(element.family == "Alkaline Earth Metals"){
    return alkalineColor;
  }
  else if(element.family == "Earth Metals"){
    return boronColor;
  }
  else if(element.family == "Tetrals"){
    return carbonColor;
  }
  else if(element.family == "Pnictogens"){
    return nitroColor;
  }
  else if(element.family == "Chalcogens"){
    return oxyColor;
  }
  else if(element.family == "Halogens"){
    return haloColor;
  }
  else if(element.family == "Lanthanide"){
    return lanthColor;
  }
  else if(element.family == "Actinide"){
    return actnColor;
  }
  else{
    return transColor;
  }
}

Color mapBColor(Elements element){
  if(element.atomicNo == 1){
    return hydgnBColor;
  }
  else if(element.family == "Noble Gases"){
    return nobelBColor;
  }
  else if(element.family == "Alkali Metals"){
    return alkaliBColor;
  }
  else if(element.family == "Alkaline Earth Metals"){
    return alkalineBColor;
  }
  else if(element.family == "Earth Metals"){
    return boronBColor;
  }
  else if(element.family == "Tetrals"){
    return carbonBColor;
  }
  else if(element.family == "Pnictogens"){
    return nitroBColor;
  }
  else if(element.family == "Chalcogens"){
    return oxyBColor;
  }
  else if(element.family == "Halogens"){
    return haloBColor;
  }
  else if(element.family == "Lanthanide"){
    return lanthBColor;
  }
  else if(element.family == "Actinide"){
    return actnBColor;
  }
  else{
    return transBColor;
  }
}