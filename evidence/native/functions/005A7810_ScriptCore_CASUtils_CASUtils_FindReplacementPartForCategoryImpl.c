/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01156768 (original PC 1.67 TS3W.exe).
   ScriptCore.CASUtils::CASUtils_FindReplacementPartForCategoryImpl [assembly=ScriptCore
   token=0x060003A6; nakedKey: Sims3.SimIFace.ResourceKey, ageGenderSpecies: System.UInt32,
   category: System.UInt32, bodyType: System.UInt32; return=Sims3.SimIFace.CAS.CASPart]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 * __cdecl
ScriptCore.CASUtils::CASUtils_FindReplacementPartForCategoryImpl
          (undefined4 *param_1,undefined4 param_2,undefined4 param_3,ulong param_4,
          undefined4 param_5,uint param_6,uint param_7,uint param_8)

{
  bool bVar1;
  void *this;
  uint local_50 [4];
  _GUID local_40;
  uint local_30 [4];
  undefined4 local_20;
  undefined4 local_1c;
  undefined4 local_18;
  undefined4 local_14;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  memset(param_1,0,0x48);
  this = (void *)FUN_005ae9b0();
  local_40.Data1 = param_4;
  local_40._4_4_ = param_5;
  local_40.Data4._0_4_ = param_2;
  local_40.Data4._4_4_ = param_3;
  local_20 = 0;
  local_1c = 0;
  local_18 = 0;
  local_14 = 0;
  local_10 = 0;
  local_c = 0;
  local_8 = 0;
  local_4 = 0;
  local_50[0] = 0;
  local_50[1] = 0;
  local_50[2] = 0;
  local_50[3] = 0;
  bVar1 = FUN_005af7b0(this,&local_40,param_6,param_7 | 0x200000,param_8,(_GUID *)0x1,local_50,
                       local_30);
  if (bVar1) {
    FUN_005a5860(local_50,local_30,param_1);
  }
  return param_1;
}

