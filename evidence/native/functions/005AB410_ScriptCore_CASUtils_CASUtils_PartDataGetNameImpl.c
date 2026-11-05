/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01156228 (original PC 1.67 TS3W.exe).
   ScriptCore.CASUtils::CASUtils_PartDataGetNameImpl [assembly=ScriptCore token=0x060002E7; partKey:
   Sims3.SimIFace.ResourceKey; return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl
ScriptCore.CASUtils::CASUtils_PartDataGetNameImpl
          (int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  void *pvVar2;
  int *piVar3;
  int local_40 [4];
  int local_30 [2];
  undefined **local_28 [2];
  undefined **local_20 [2];
  undefined2 local_18;
  undefined2 local_16;
  undefined4 uStack_4;
  
  iVar1 = param_1;
  FUN_007d9770(local_40);
  pvVar2 = FUN_004f3c90(local_30,local_40);
  local_20[0] = &PTR_FUN_0100886c;
  local_16 = 0x13;
  local_18 = 0xb;
  FUN_004f59c0(local_20,0x13,9,pvVar2,0x10,1);
  if ((2 < (int)((int)local_28[0] - local_30[0] & 0xfffffffeU)) && (local_30[0] != 0)) {
    FUN_004e44e0(local_30[0]);
  }
  param_1 = 0;
  piVar3 = (int *)GetGlobalInterfacePointer_11D5BBC();
  (**(code **)(*piVar3 + 0x50))(local_20,&param_1);
  local_28[0] = &PTR_FUN_00fba6f4;
  if (((uint)local_20[0] & 4) != 0) {
    FUN_004f5760(local_28,'\0');
  }
  if ((1 < local_40[0] - iVar1) && (iVar1 != 0)) {
    FUN_004e44e0(iVar1);
  }
  return uStack_4;
}

