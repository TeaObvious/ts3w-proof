/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011625c8 (original PC 1.67 TS3W.exe).
   ScriptCore.SocialFeatures::SocialFeaturesHost_GetEarnedBadgeName [assembly=ScriptCore
   token=0x06000ACC; nucleusID: System.Int64, index: System.UInt32; return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl
ScriptCore.SocialFeatures::SocialFeaturesHost_GetEarnedBadgeName
          (int param_1,int param_2,int param_3)

{
  LPCWSTR pWVar1;
  int *piVar2;
  void *pvVar3;
  undefined4 local_34;
  int local_30 [2];
  int local_28;
  undefined **local_20 [2];
  ushort local_18;
  undefined2 local_16;
  
  pWVar1 = (LPCWSTR)FUN_00a24cd0(param_1,param_2,param_3);
  local_34 = 0;
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if ((piVar2 != (int *)0x0) && (pWVar1 != (LPCWSTR)0x0)) {
    pvVar3 = FUN_004f3b50(local_30,pWVar1,0xffffffff,(char *)0x0);
    local_20[0] = &PTR_FUN_0100886c;
    local_16 = 0x13;
    local_18 = 0xb;
    FUN_004f59c0(local_20,0x13,9,pvVar3,0x10,1);
    if ((2 < (int)(local_28 - local_30[0] & 0xfffffffeU)) && (local_30[0] != 0)) {
      FUN_004e44e0(local_30[0]);
    }
    (**(code **)(*piVar2 + 0x50))(local_20,&local_34);
    local_20[0] = &PTR_FUN_00fba6f4;
    if ((local_18 & 4) != 0) {
      FUN_004f5760(local_20,'\0');
    }
  }
  return local_34;
}

