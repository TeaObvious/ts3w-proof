/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011970e8, 0x01197110 (original PC 1.67 TS3W.exe).
   ScriptCore.GameUtils::GameUtils_CSVFileGetCurrentImpl [assembly=ScriptCore token=0x0600022C;
   handle: System.UInt32; return=System.String]
   ScriptCore.GameUtils::GameUtils_CSVFileGetCurrent_ListImpl [assembly=ScriptCore token=0x06000232;
   handle: System.UInt32; return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl ScriptCore.GameUtils::GameUtils_CSVFileGetCurrentImpl(uint param_1)

{
  uint uVar1;
  int *piVar2;
  int iVar3;
  int unaff_EBX;
  int *piVar4;
  undefined4 uVar5;
  int local_60 [3];
  char *local_54;
  int local_50 [2];
  undefined **local_48;
  char *local_44;
  undefined **local_40 [2];
  undefined2 local_38;
  undefined2 local_36;
  undefined **appuStack_28 [2];
  ushort uStack_20;
  undefined2 uStack_1e;
  undefined4 uStack_4;
  
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  uVar1 = param_1;
  if ((param_1 & 0xff000000) == 0x40000000) {
    piVar4 = (int *)GetGlobalInterfacePointer_11D5BBC();
    piVar4 = (int *)(**(code **)(*piVar4 + 0xcc))(uVar1);
  }
  else {
    piVar4 = (int *)0x0;
  }
  if ((piVar2 == (int *)0x0) || (piVar4 != (int *)0x0)) {
    local_60[0] = 0;
    local_60[1] = 0;
    local_60[2] = 0;
    local_54 = "Services/GameHost";
    FUN_0040b590(local_60,&DAT_00fba6c4);
    (**(code **)(*piVar4 + 0x18))(local_60,0xe000);
    appuStack_28[0] = &PTR_FUN_00fba6f4;
    uStack_20 = 0;
    uStack_1e = 0;
    FUN_004f59c0(appuStack_28,0x13,9,&stack0xffffff98,0x10,1);
    (**(code **)(*piVar2 + 0x50))(appuStack_28,&stack0xffffff94);
    appuStack_28[0] = &PTR_FUN_00fba6f4;
    iVar3 = local_60[0];
    uVar5 = 0;
    if ((uStack_20 & 4) != 0) {
      FUN_004f5760(appuStack_28,'\0');
      iVar3 = local_60[0];
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
    iVar3 = local_50[0];
    uVar5 = uStack_4;
    if (((uint)local_40[0] & 4) != 0) {
      FUN_004f5760(&local_48,'\0');
      unaff_EBX = local_60[2];
      iVar3 = local_50[0];
    }
  }
  if ((2 < (int)(iVar3 - unaff_EBX & 0xfffffffeU)) && (unaff_EBX != 0)) {
    FUN_004e44e0(unaff_EBX);
  }
  return uVar5;
}

