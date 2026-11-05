/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst note, PC1.67 static; analyst-assigned name. Physical cdecl eight stack words: renderer,
   destination rectangle, UV rectangle, image, four-float inner-UV fractions, binary32 X/Y scales,
   optional mask. Signed image dimensions at+1C/+20 are converted with CVTSI2SS and multiplied by
   scale. Lower inner edges add fraction*scaled dimension, upper edges subtract
   (1-upperFraction)*scaled dimension. COMISS/JBE retains nonoverlapping edges; overlapping edges
   collapse to their arithmetic midpoint using literal0.5. Branches submit corner/edge/center quads
   via renderer virtual50 or masked virtual5C. No native-size tolerance shortcut exists in this
   helper. Decompiler pointer-depth and stack aliases are artifacts, not actual image/float types;
   original ASM and physical cdecl arguments are authoritative. */

void __cdecl
UiDrawable_DrawBorderSlices
          (int *param_1,float *param_2,undefined4 param_3,undefined4 ***param_4,float *param_5,
          float param_6,float param_7,int param_8)

{
  undefined4 ****unaff_retaddr;
  undefined4 ****ppppuVar1;
  undefined4 ****ppppuVar2;
  undefined4 ****ppppuVar3;
  undefined4 ****ppppuVar4;
  undefined4 ****ppppuStack_70;
  undefined4 ****ppppuStack_6c;
  undefined4 ****ppppuStack_68;
  undefined4 ****ppppuStack_64;
  undefined4 ****ppppuStack_60;
  undefined4 ****ppppuStack_5c;
  undefined4 ****ppppuStack_58;
  undefined4 ****ppppuStack_54;
  undefined4 ***pppuStack_50;
  undefined4 ***pppuStack_4c;
  undefined4 ***pppuStack_48;
  undefined4 ***pppuStack_44;
  undefined4 ***local_30;
  undefined4 **local_2c;
  undefined4 ***local_28;
  undefined4 **local_24;
  undefined4 **local_20;
  undefined4 **local_1c;
  undefined4 ***local_18;
  undefined4 **local_14;
  undefined4 ****local_10;
  float local_c;
  undefined4 ***local_8;
  undefined4 **local_4;
  
  local_4 = (undefined4 **)param_5[1];
  local_8 = (undefined4 ***)*param_5;
  ppppuVar4 = (undefined4 ****)*param_2;
  local_2c = (undefined4 **)((float)local_4 * (float)(int)param_4[8] * param_7 + param_2[1]);
  local_28 = (undefined4 ***)
             (param_2[2] - (FLOAT_00f998f8 - param_5[2]) * (float)(int)param_4[7] * param_6);
  local_30 = (undefined4 ***)((float)local_8 * (float)(int)param_4[7] * param_6 + (float)ppppuVar4);
  local_24 = (undefined4 **)
             (param_2[3] - (FLOAT_00f998f8 - param_5[3]) * (float)(int)param_4[8] * param_7);
  if ((float)local_28 < (float)local_30) {
    local_30 = (undefined4 ***)(((float)local_28 + (float)local_30) * _DAT_00f9b5b4);
    local_28 = local_30;
  }
  if ((float)local_24 < (float)local_2c) {
    local_2c = (undefined4 **)(((float)local_24 + (float)local_2c) * _DAT_00f9b5b4);
    local_24 = local_2c;
  }
  if (param_8 == 0) {
    pppuStack_44 = &local_20;
    pppuStack_48 = param_4;
    pppuStack_4c = &local_10;
    local_20 = (undefined4 **)0x0;
    local_1c = (undefined4 **)0x0;
    local_c = param_2[1];
    pppuStack_50 = (undefined4 ***)0x510ba9;
    local_18 = local_8;
    local_14 = local_4;
    local_10 = ppppuVar4;
    local_8 = local_30;
    local_4 = local_2c;
    (**(code **)(*param_1 + 0x50))();
    local_1c = (undefined4 **)param_5[2];
    local_18 = (undefined4 ***)0x0;
    local_14 = (undefined4 **)FLOAT_00f998f8;
    local_10 = (undefined4 ****)param_5[1];
    local_28 = (undefined4 ***)param_2[1];
    pppuStack_50 = &local_1c;
    local_24 = (undefined4 **)param_2[2];
    ppppuStack_54 = (undefined4 ****)param_4;
    ppppuStack_58 = (undefined4 ****)&local_2c;
    ppppuStack_5c = (undefined4 ****)0x510c18;
    (**(code **)(*param_1 + 0x50))();
    local_28 = (undefined4 ***)0x0;
    local_24 = (undefined4 **)param_5[3];
    local_20 = (undefined4 **)*param_5;
    local_1c = (undefined4 **)FLOAT_00f998f8;
    ppppuStack_5c = &local_28;
    ppppuStack_60 = (undefined4 ****)param_4;
    ppppuStack_64 = (undefined4 ****)&stack0xffffffc8;
    local_30 = pppuStack_48;
    local_2c = (undefined4 **)param_2[3];
    ppppuStack_68 = (undefined4 ****)0x510c85;
    (**(code **)(*param_1 + 0x50))();
    local_30 = (undefined4 ***)param_5[3];
    local_2c = (undefined4 **)FLOAT_00f998f8;
    local_28 = (undefined4 ***)FLOAT_00f998f8;
    pppuStack_44 = pppuStack_4c;
    ppppuStack_68 = (undefined4 ****)&stack0xffffffcc;
    ppppuStack_6c = (undefined4 ****)param_4;
    ppppuStack_70 = &pppuStack_44;
    (**(code **)(*param_1 + 0x50))();
    if (0.0 < (float)ppppuStack_58 - (float)ppppuStack_60) {
      pppuStack_4c = (undefined4 ***)param_2[1];
      pppuStack_50 = ppppuStack_60;
      pppuStack_48 = ppppuStack_58;
      pppuStack_44 = ppppuStack_5c;
      (**(code **)(*param_1 + 0x50))(&pppuStack_50,param_4,&stack0xffffffc0);
      pppuStack_4c = (undefined4 ***)*param_5;
      pppuStack_48 = (undefined4 ***)param_5[3];
      pppuStack_44 = (undefined4 ***)param_5[2];
      ppppuStack_5c = ppppuStack_6c;
      ppppuStack_58 = ppppuStack_60;
      ppppuStack_54 = ppppuStack_64;
      pppuStack_50 = (undefined4 ***)param_2[3];
      (**(code **)(*param_1 + 0x50))(&ppppuStack_5c,param_4,&pppuStack_4c);
    }
    if (0.0 < (float)ppppuStack_54 - (float)ppppuStack_5c) {
      pppuStack_50 = (undefined4 ***)*param_2;
      pppuStack_4c = ppppuStack_5c;
      pppuStack_48 = ppppuStack_60;
      pppuStack_44 = ppppuStack_54;
      (**(code **)(*param_1 + 0x50))(&pppuStack_50,param_4,&stack0xffffffc0);
      pppuStack_4c = (undefined4 ***)param_5[2];
      pppuStack_48 = (undefined4 ***)param_5[1];
      pppuStack_44 = (undefined4 ***)FLOAT_00f998f8;
      ppppuStack_5c = ppppuStack_64;
      ppppuStack_58 = ppppuStack_68;
      ppppuStack_54 = (undefined4 ****)param_2[2];
      pppuStack_50 = ppppuStack_60;
      (**(code **)(*param_1 + 0x50))(&ppppuStack_5c,param_4,&pppuStack_4c);
    }
    if (((float)ppppuStack_60 != (float)ppppuStack_58) &&
       ((float)ppppuStack_5c != (float)ppppuStack_54)) {
      (**(code **)(*param_1 + 0x50))(&ppppuStack_60,param_4,param_5);
      return;
    }
  }
  else {
    pppuStack_44 = &local_10;
    pppuStack_48 = (undefined4 ***)param_8;
    pppuStack_4c = param_4;
    pppuStack_50 = &local_20;
    local_10 = (undefined4 ****)0x0;
    local_c = 0.0;
    local_1c = (undefined4 **)param_2[1];
    ppppuStack_54 = (undefined4 ****)0x510f5b;
    local_20 = ppppuVar4;
    local_18 = local_30;
    local_14 = local_2c;
    (**(code **)(*param_1 + 0x5c))();
    local_20 = (undefined4 **)param_5[2];
    local_1c = (undefined4 **)0x0;
    local_18 = (undefined4 ***)FLOAT_00f998f8;
    local_14 = (undefined4 **)param_5[1];
    ppppuStack_54 = (undefined4 ****)&local_20;
    local_2c = (undefined4 **)param_2[1];
    ppppuStack_58 = (undefined4 ****)param_4;
    local_28 = (undefined4 ***)param_2[2];
    ppppuStack_5c = (undefined4 ****)param_4;
    ppppuStack_60 = &local_30;
    ppppuStack_64 = (undefined4 ****)0x510fcf;
    (**(code **)(*param_1 + 0x5c))();
    local_30 = (undefined4 ***)0x0;
    local_2c = (undefined4 **)param_5[3];
    local_28 = (undefined4 ***)*param_5;
    local_24 = (undefined4 **)FLOAT_00f998f8;
    ppppuStack_64 = &local_30;
    ppppuStack_6c = (undefined4 ****)param_4;
    ppppuStack_70 = (undefined4 ****)&stack0xffffffc0;
    ppppuStack_68 = unaff_retaddr;
    (**(code **)(*param_1 + 0x5c))();
    ppppuVar4 = (undefined4 ****)&stack0xffffffc0;
    pppuStack_50 = ppppuStack_58;
    pppuStack_4c = ppppuStack_54;
    pppuStack_48 = (undefined4 ***)param_2[2];
    ppppuVar1 = &pppuStack_50;
    pppuStack_44 = (undefined4 ***)param_2[3];
    ppppuVar2 = (undefined4 ****)param_4;
    ppppuVar3 = local_10;
    (**(code **)(*param_1 + 0x5c))();
    if (0.0 < (float)ppppuStack_68 - (float)ppppuStack_70) {
      pppuStack_50 = (undefined4 ***)*param_5;
      pppuStack_4c = (undefined4 ***)0x0;
      pppuStack_48 = (undefined4 ***)param_5[2];
      pppuStack_44 = (undefined4 ***)param_5[1];
      ppppuStack_5c = (undefined4 ****)param_2[1];
      ppppuStack_60 = ppppuStack_70;
      ppppuStack_58 = ppppuStack_68;
      ppppuStack_54 = ppppuStack_6c;
      (**(code **)(*param_1 + 0x5c))(&ppppuStack_60,param_4,local_20,&pppuStack_50);
      ppppuStack_60 = (undefined4 ****)*param_5;
      ppppuStack_5c = (undefined4 ****)param_5[3];
      ppppuStack_58 = (undefined4 ****)param_5[2];
      ppppuStack_54 = (undefined4 ****)FLOAT_00f998f8;
      ppppuStack_64 = (undefined4 ****)param_2[3];
      ppppuStack_70 = ppppuVar1;
      ppppuStack_6c = ppppuVar4;
      ppppuStack_68 = ppppuVar3;
      (**(code **)(*param_1 + 0x5c))(&ppppuStack_70,param_4,local_30,&ppppuStack_60);
    }
    if (0.0 < (float)ppppuStack_64 - (float)ppppuStack_6c) {
      pppuStack_50 = (undefined4 ***)0x0;
      pppuStack_4c = (undefined4 ***)param_5[1];
      pppuStack_48 = (undefined4 ***)*param_5;
      pppuStack_44 = (undefined4 ***)param_5[3];
      ppppuStack_60 = (undefined4 ****)*param_2;
      ppppuStack_5c = ppppuStack_6c;
      ppppuStack_58 = ppppuStack_70;
      ppppuStack_54 = ppppuStack_64;
      (**(code **)(*param_1 + 0x5c))(&ppppuStack_60,param_4,local_20,&pppuStack_50);
      ppppuStack_60 = (undefined4 ****)param_5[2];
      ppppuStack_5c = (undefined4 ****)param_5[1];
      ppppuStack_58 = (undefined4 ****)FLOAT_00f998f8;
      ppppuStack_54 = (undefined4 ****)param_5[3];
      ppppuStack_68 = (undefined4 ****)param_2[2];
      ppppuStack_70 = ppppuVar3;
      ppppuStack_6c = ppppuVar2;
      ppppuStack_64 = ppppuVar4;
      (**(code **)(*param_1 + 0x5c))(&ppppuStack_70,param_4,local_30,&ppppuStack_60);
    }
    if (((float)ppppuStack_70 != (float)ppppuStack_68) &&
       ((float)ppppuStack_6c != (float)ppppuStack_64)) {
      (**(code **)(*param_1 + 0x5c))(&ppppuStack_70,param_4,local_20,param_5);
    }
  }
  return;
}

