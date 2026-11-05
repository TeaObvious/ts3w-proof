/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163180 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.WeatherControl::WeatherControl_SetSettings [assembly=ScriptCore token=0x06000489;
   settings: System.Single[]; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst PC1.67 weather snapshot instruction contract. Registered managed name preserved. cdecl
   one32-bit managed-array handle; RET, callers pop. Null world/manager -> return. Virtual host
   slot78 uses ECX host +3stack args(handle,floatDataOut,countOut), callee stack cleanup; per-call
   ABI override removes fictitious unaff_EBX/ESI inputs. Requires count EXACT23, otherwise no
   publication. Gets prior pending92byte snapshot, overwrites all23semantic inputs with native
   representation. Input0 floor(binary64) then temporary x87 RCtruncate FISTP64 LOW32; inputs2/5/6
   RCtruncate FISTP64 LOW32;7 CVTTSS2SI LOW16;13/19 bool=!((max(-x,x))<=float2^-23), unorderedNaN
   becomes true. Other floats copied unchanged, no general clamp/finitevalidation. Overrides
   settings for selected current view codes1/2 via C5F930: code1 leafLoss1/fallColor1,code2
   leafLoss0/fallColor1. Finally pending copy/dirty setter; read-modify-write is not one lock
   transaction. Full host exception/pin/lifetime and view enum meanings unexpanded. */

void __cdecl ScriptCore.WeatherControl::WeatherControl_SetSettings(uint managedArray)

{
  float fVar1;
  void *this;
  undefined1 auVar2 [16];
  int *arg0;
  int iVar3;
  int iVar4;
  ushort in_FPUControlWord;
  undefined1 auVar5 [16];
  undefined1 auVar6 [16];
  undefined1 auVar7 [16];
  undefined1 auVar8 [16];
  undefined1 auVar9 [16];
  double dVar10;
  uint local_80;
  float *local_7c;
  longlong lStack_78;
  PCWeatherSettings PStack_70;
  
  iVar4 = DAT_011edbc4;
  if (DAT_011edbc4 == 0) {
    return;
  }
  this = *(void **)(DAT_011edbc4 + 0x74);
  if (this == (void *)0x0) {
    return;
  }
  arg0 = (int *)GetGlobalInterfacePointer_11D5BBC();
  local_80 = 0;
                    /* ECX host +stack managedHandle,float**dataOut,uint*countOut; actual three
                       pushed arguments, not C register artifacts. */
  (**(code **)(*arg0 + 0x78))(arg0,managedArray,&local_7c,&local_80);
  if (local_80 != 0x17) {
    return;
  }
  PStack_70.precipitationStrength = FLOAT_00f998f8;
  PStack_70.precipitationType = 0;
  PStack_70.frostAmount = 0.0;
  PStack_70.currentSeason = 0;
  PStack_70.sunriseOffset = 0.0;
  PStack_70.sunsetOffset = 0.0;
  PStack_70.snowThickness = 0.0;
  PStack_70.snowRoadDepth = 0.0;
  PStack_70.wetAmount = 0.0;
  PStack_70.isSnowMelting = 0;
  PStack_70.treeLeafLoss = 0.0;
  PStack_70.useFallSet = 1;
  PStack_70.treeFallColor = 0.0;
  PStack_70.heatShimmerDistance = FLOAT_00fab218;
  PStack_70.precipitationFog = 0.0;
  PStack_70.pondFreeze = 0.0;
  PStack_70.worldLeaves = 0.0;
  PStack_70.cloudinessTarget = 0.0;
  PStack_70.windStrength = 0.0;
  PStack_70.normalFog = 0.0;
  WeatherSettings_CopyPending(this,&PStack_70);
  dVar10 = floor((double)*local_7c);
                    /* FISTP QWORD under temporary RC=truncate after floor(input0); retain LOW32.
                       Later enum/audio conversions similarly use signed64 conversion low bits, not
                       a proven saturating float->uint cast. */
  lStack_78._0_4_ = (uint)(longlong)ROUND(dVar10);
  PStack_70.precipitationType = (uint)lStack_78;
  PStack_70.precipitationStrength = local_7c[1];
  lStack_78._0_4_ = (uint)(longlong)ROUND(local_7c[2]);
  PStack_70.currentSeason = (uint)lStack_78;
  PStack_70.sunriseOffset = local_7c[3];
  PStack_70.sunsetOffset = local_7c[4];
  lStack_78._0_4_ = (uint)(longlong)ROUND(local_7c[5]);
  PStack_70.precipitationAudioIndex = (uint)lStack_78;
  lStack_78 = (longlong)ROUND(local_7c[6]);
  PStack_70.windAudioIndex = (uint)lStack_78;
  PStack_70.weatherTerrain = (ushort)(int)local_7c[7];
  PStack_70.frostAmount = local_7c[8];
  PStack_70.snowThickness = local_7c[9];
  PStack_70.snowRoadDepth = local_7c[10];
  PStack_70.wetAmount = local_7c[0xb];
  PStack_70.treeLeafLoss = local_7c[0xc];
  fVar1 = local_7c[0xd];
  auVar7._0_4_ = FLOAT_00fab218 * fVar1;
  auVar7._4_4_ = FLOAT_00fab218 * fVar1;
  auVar7._8_4_ = FLOAT_00fab218 * fVar1;
  auVar7._12_4_ = FLOAT_00fab218 * fVar1;
  auVar8._4_4_ = fVar1;
  auVar8._0_4_ = fVar1;
  auVar8._8_4_ = fVar1;
  auVar8._12_4_ = fVar1;
  auVar8 = maxps(auVar7,auVar8);
  auVar9._4_4_ = -(uint)(auVar8._4_4_ <= FLOAT_01011744);
  auVar9._0_4_ = -(uint)(auVar8._0_4_ <= FLOAT_01011744);
  auVar9._8_4_ = -(uint)(auVar8._8_4_ <= FLOAT_01011744);
  auVar9._12_4_ = -(uint)(auVar8._12_4_ <= FLOAT_01011744);
  iVar3 = movmskps(in_FPUControlWord | 0xc00,auVar9);
  PStack_70.useFallSet = iVar3 != 0xf;
  PStack_70.treeFallColor = local_7c[0xe];
  PStack_70.precipitationFog = local_7c[0xf];
  PStack_70.pondFreeze = local_7c[0x10];
  PStack_70.heatShimmerDistance = local_7c[0x11];
  PStack_70.worldLeaves = local_7c[0x12];
  fVar1 = local_7c[0x13];
  auVar5._0_4_ = FLOAT_00fab218 * fVar1;
  auVar5._4_4_ = FLOAT_00fab218 * fVar1;
  auVar5._8_4_ = FLOAT_00fab218 * fVar1;
  auVar5._12_4_ = FLOAT_00fab218 * fVar1;
  auVar2._4_4_ = fVar1;
  auVar2._0_4_ = fVar1;
  auVar2._8_4_ = fVar1;
  auVar2._12_4_ = fVar1;
  auVar8 = maxps(auVar5,auVar2);
  auVar6._4_4_ = -(uint)(auVar8._4_4_ <= FLOAT_01011744);
  auVar6._0_4_ = -(uint)(auVar8._0_4_ <= FLOAT_01011744);
  auVar6._8_4_ = -(uint)(auVar8._8_4_ <= FLOAT_01011744);
  auVar6._12_4_ = -(uint)(auVar8._12_4_ <= FLOAT_01011744);
  iVar3 = movmskps((int)local_7c[7],auVar6);
  PStack_70.isSnowMelting = iVar3 != 0xf;
  PStack_70.cloudinessTarget = local_7c[0x14];
  PStack_70.windStrength = local_7c[0x15];
  PStack_70.normalFog = local_7c[0x16];
  iVar4 = FUN_00c5f930(iVar4);
  if (iVar4 == 1) {
    PStack_70.treeLeafLoss = FLOAT_00f998f8;
  }
  else {
    if (iVar4 != 2) goto LAB_00784d55;
    PStack_70.treeLeafLoss = 0.0;
  }
  PStack_70.treeFallColor = FLOAT_00f998f8;
LAB_00784d55:
  WeatherSettings_PublishPending(this,&PStack_70);
  return;
}

