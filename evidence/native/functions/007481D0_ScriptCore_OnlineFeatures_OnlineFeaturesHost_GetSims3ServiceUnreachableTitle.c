/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011615d0 (original PC 1.67 TS3W.exe).
   ScriptCore.OnlineFeatures::OnlineFeaturesHost_GetSims3ServiceUnreachableTitle
   [assembly=ScriptCore token=0x06000639; ; return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore.OnlineFeatures::OnlineFeaturesHost_GetSims3ServiceUnreachableTitle(void)

{
  undefined **ppuVar1;
  int *piVar2;
  undefined4 uVar3;
  int iVar4;
  undefined4 local_34;
  undefined1 *local_30;
  undefined1 *local_2c;
  undefined2 *local_28;
  char *local_24;
  undefined **local_20;
  undefined2 *local_1c;
  uint local_18;
  
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (DAT_011d5068 == 0) {
    iVar4 = 0;
  }
  else {
    iVar4 = DAT_011d5068 + -8;
  }
  local_34 = 0;
  uVar3 = 0;
  if ((piVar2 != (int *)0x0) && (iVar4 != 0)) {
    local_24 = "SIGS/sGetSims3ServicesUnreachableTitle";
    local_30 = &DAT_011c8e54;
    local_2c = &DAT_011c8e54;
    local_28 = &DAT_011c8e56;
    FUN_00408df0(&local_20,(undefined4 *)(iVar4 + 0x18));
    ppuVar1 = local_20;
    FUN_00408d60(&local_30,local_20,local_1c);
    if ((2 < (int)(local_18 - (int)ppuVar1 & 0xfffffffe)) && (ppuVar1 != (undefined **)0x0)) {
      FUN_004e44e0((int)ppuVar1);
    }
    if ((local_30 != local_2c) && (((int)local_2c - (int)local_30 & 0xfffffffeU) != 0)) {
      local_20 = &PTR_FUN_00fba6f4;
      local_18 = 0;
      FUN_004f59c0(&local_20,0x13,9,&local_30,0x10,1);
      (**(code **)(*piVar2 + 0x50))(&local_20,&local_34);
      local_20 = &PTR_FUN_00fba6f4;
      if ((local_18 & 4) != 0) {
        FUN_004f5760(&local_20,'\0');
      }
    }
    uVar3 = local_34;
    if ((2 < (int)((int)local_28 - (int)local_30 & 0xfffffffeU)) && (local_30 != (undefined1 *)0x0))
    {
      FUN_004e44e0((int)local_30);
      uVar3 = local_34;
    }
  }
  return uVar3;
}

