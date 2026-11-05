/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011970d8 (original PC 1.67 TS3W.exe).
   ScriptCore.GameUtils::GameUtils_CSVFileGetLabelsImpl [assembly=ScriptCore token=0x0600022D;
   handle: System.UInt32; return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl ScriptCore.GameUtils::GameUtils_CSVFileGetLabelsImpl(uint param_1)

{
  uint uVar1;
  int *piVar2;
  int *piVar3;
  int iVar4;
  int unaff_EBX;
  void *this;
  undefined4 unaff_ESI;
  undefined4 local_64;
  int local_60 [3];
  char *local_54;
  int local_50 [2];
  undefined **local_48;
  char *local_44;
  undefined **local_40 [2];
  undefined2 local_38;
  undefined2 local_36;
  undefined **appuStack_28 [2];
  undefined **local_20 [2];
  undefined2 local_18;
  undefined2 local_16;
  undefined4 uStack_4;
  
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  uVar1 = param_1;
  if ((param_1 & 0xff000000) == 0x40000000) {
    piVar3 = (int *)GetGlobalInterfacePointer_11D5BBC();
    this = (void *)(**(code **)(*piVar3 + 0xcc))(uVar1);
  }
  else {
    this = (void *)0x0;
  }
  if ((piVar2 == (int *)0x0) || (this != (void *)0x0)) {
    local_60[0] = 0;
    local_60[1] = 0;
    local_60[2] = 0;
    local_54 = "Services/GameHost";
    FUN_0040b590(local_60,&DAT_00fba6c4);
    FUN_007c9ba0(this,local_60,0xe000);
    local_20[0] = &PTR_FUN_00fba6f4;
    local_18 = 0;
    local_16 = 0;
    FUN_004f59c0(local_20,0x13,9,local_60,0x10,1);
    local_64 = 0;
    (**(code **)(*piVar2 + 0x50))(local_20,&local_64);
    appuStack_28[0] = &PTR_FUN_00fba6f4;
    iVar4 = local_60[0];
    if (((uint)local_20[0] & 4) != 0) {
      FUN_004f5760(appuStack_28,'\0');
      iVar4 = local_60[0];
    }
  }
  else {
    local_50[0] = 0;
    local_50[1] = 0;
    local_48 = (undefined **)0x0;
    local_44 = "Services/GameHost";
    FUN_0040b590(local_50,&DAT_00fba6c4);
    local_40[0] = &PTR_FUN_00fba6f4;
    local_38 = 0;
    local_36 = 0;
    FUN_004f59c0(local_40,0x13,9,local_50,0x10,1);
    param_1 = 0;
    (**(code **)(*piVar2 + 0x50))(local_40,&param_1);
    local_48 = &PTR_FUN_00fba6f4;
    unaff_EBX = local_60[2];
    iVar4 = local_50[0];
    unaff_ESI = uStack_4;
    if (((uint)local_40[0] & 4) != 0) {
      FUN_004f5760(&local_48,'\0');
      unaff_EBX = local_60[2];
      iVar4 = local_50[0];
    }
  }
  if ((2 < (int)(iVar4 - unaff_EBX & 0xfffffffeU)) && (unaff_EBX != 0)) {
    FUN_004e44e0(unaff_EBX);
  }
  return unaff_ESI;
}

