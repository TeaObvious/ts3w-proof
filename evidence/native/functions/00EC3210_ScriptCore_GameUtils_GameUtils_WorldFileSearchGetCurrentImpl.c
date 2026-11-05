/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011970b8 (original PC 1.67 TS3W.exe).
   ScriptCore.GameUtils::GameUtils_WorldFileSearchGetCurrentImpl [assembly=ScriptCore
   token=0x06000227; handle: System.UInt32; return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl ScriptCore.GameUtils::GameUtils_WorldFileSearchGetCurrentImpl(uint param_1)

{
  uint uVar1;
  int *piVar2;
  int iVar3;
  int *piVar4;
  undefined4 uVar5;
  int unaff_ESI;
  int local_30 [2];
  undefined **local_28;
  char *local_24;
  undefined **local_20 [2];
  undefined2 local_18;
  undefined2 local_16;
  undefined4 uStack_4;
  
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  uVar1 = param_1;
  if ((param_1 & 0xff000000) == 0x40000000) {
    piVar4 = (int *)GetGlobalInterfacePointer_11D5BBC();
    iVar3 = (**(code **)(*piVar4 + 0xcc))(uVar1);
  }
  else {
    iVar3 = 0;
  }
  if ((piVar2 != (int *)0x0) && (iVar3 == 0)) {
    local_30[0] = 0;
    local_30[1] = 0;
    local_28 = (undefined **)0x0;
    local_24 = "Services/GameHost";
    FUN_0040b590(local_30,&DAT_00fba6c4);
    local_20[0] = &PTR_FUN_00fba6f4;
    local_18 = 0;
    local_16 = 0;
    FUN_004f59c0(local_20,0x13,9,local_30,0x10,1);
    param_1 = 0;
    (**(code **)(*piVar2 + 0x50))(local_20,&param_1);
    local_28 = &PTR_FUN_00fba6f4;
    if (((uint)local_20[0] & 4) != 0) {
      FUN_004f5760(&local_28,'\0');
    }
    if ((2 < (int)(local_30[0] - unaff_ESI & 0xfffffffeU)) && (unaff_ESI != 0)) {
      FUN_004e44e0(unaff_ESI);
    }
    return uStack_4;
  }
  uVar5 = FUN_00ec30e0(iVar3);
  return uVar5;
}

