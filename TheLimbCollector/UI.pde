int showIcon = 0;
void UIdraw()
{
 if (hasLegAttached == true){showIcon = 1;
 if (hasArm1Attached == true){showIcon = 2;
 if (hasArm2Attached == true){showIcon = 3;}}}
  
 if (showUI == true)
 {
   if (showIcon == 0){image(UIperson1,20,900);}
   if (showIcon == 1){image(UIperson2,20,900);}
   if (showIcon == 2){image(UIperson3,20,900);}
   if (showIcon == 3){image(UIperson4,20,900);}
 }
}
