/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01156750 (original PC 1.67 TS3W.exe).
   ScriptCore.CASUtils::CASUtils_GetCASPartImpl [assembly=ScriptCore token=0x060003A3;
   ageGenderFlags: System.UInt32, category: System.UInt32, bodyType: System.UInt32, randomize:
   System.Boolean; return=Sims3.SimIFace.CAS.CASPart]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

int * __cdecl
ScriptCore.CASUtils::CASUtils_GetCASPartImpl
          (int *param_1,uint param_2,uint param_3,uint param_4,_GUID *param_5)

{
  bool bVar1;
  void *pvVar2;
  uint uVar3;
  uint uVar4;
  uint uVar5;
  uint uVar6;
  uint *puVar7;
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
  if ((char)param_5 == '\0') {
    puVar7 = local_50;
    uVar4 = param_2 & 0x307f;
    local_50[0] = 0;
    local_50[1] = 0;
    local_50[2] = 0;
    local_50[3] = 0;
    uVar3 = uVar4;
    uVar6 = param_3;
    uVar5 = param_4;
    pvVar2 = (void *)FUN_005df4d0();
    uVar3 = FUN_005dfcc0(pvVar2,uVar3,uVar6,uVar5,puVar7);
    if ((char)uVar3 == '\0') {
      puVar7 = local_50;
      uVar5 = 2;
      uVar3 = uVar4;
      uVar6 = param_4;
      pvVar2 = (void *)FUN_005df4d0();
      uVar3 = FUN_005dfcc0(pvVar2,uVar3,uVar5,uVar6,puVar7);
      if ((char)uVar3 == '\0') {
        puVar7 = local_50;
        uVar6 = 0;
        uVar3 = param_4;
        pvVar2 = (void *)FUN_005df4d0();
        FUN_005dfcc0(pvVar2,uVar4,uVar6,uVar3,puVar7);
      }
    }
    if ((local_50[2] != 0) && (FUN_005a7e90(local_50,param_1), *param_1 != 0)) {
      return param_1;
    }
  }
  pvVar2 = (void *)FUN_005ae9b0();
  local_20 = 0;
  local_1c = 0;
  local_18 = 0;
  local_14 = 0;
  local_10 = 0;
  local_c = 0;
  local_8 = 0;
  local_4 = 0;
  local_40.Data1 = 0;
  local_40.Data2 = 0;
  local_40.Data3 = 0;
  local_40.Data4[0] = '\0';
  local_40.Data4[1] = '\0';
  local_40.Data4[2] = '\0';
  local_40.Data4[3] = '\0';
  local_40.Data4[4] = '\0';
  local_40.Data4[5] = '\0';
  local_40.Data4[6] = '\0';
  local_40.Data4[7] = '\0';
  bVar1 = FUN_005af7b0(pvVar2,&local_40,param_2,param_3 | 0x200000,param_4,param_5,&local_40.Data1,
                       local_30);
  if (bVar1) {
    FUN_005a5860(&local_40.Data1,local_30,param_1);
  }
  return param_1;
}

