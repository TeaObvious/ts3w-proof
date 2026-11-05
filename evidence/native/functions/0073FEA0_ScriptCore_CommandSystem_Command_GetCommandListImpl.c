/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x0115edc8 (original PC 1.67 TS3W.exe).
   ScriptCore.CommandSystem::Command_GetCommandListImpl [assembly=ScriptCore token=0x0600011C; ;
   return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore.CommandSystem::Command_GetCommandListImpl(void)

{
  undefined1 **ppuVar1;
  int *piVar2;
  void *this;
  undefined4 uVar3;
  int *unaff_EBP;
  undefined1 **ppuVar4;
  undefined4 unaff_EDI;
  int *local_64;
  undefined1 **local_60;
  undefined1 **local_5c;
  int local_58;
  char *local_54;
  undefined1 *local_50;
  undefined1 *local_4c;
  undefined2 *local_48;
  char *local_44;
  undefined **local_40 [2];
  ushort local_38;
  undefined2 local_36;
  undefined **appuStack_28 [2];
  undefined **local_20 [2];
  undefined2 local_18;
  undefined2 local_16;
  
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  this = (void *)FUN_00589aa0();
  local_64 = (int *)0x0;
  uVar3 = 0;
  if ((piVar2 != (int *)0x0) && (this != (void *)0x0)) {
    local_50 = &DAT_011c8e54;
    local_4c = &DAT_011c8e54;
    local_44 = "Scripting/Command/CommandList";
    local_48 = &DAT_011c8e56;
    local_60 = (undefined1 **)0x0;
    local_5c = (undefined1 **)0x0;
    local_58 = 0;
    local_54 = "Scripting/Command/CommandList";
    FUN_00589ec0(this,FUN_0073fdd0,&local_60);
    FUN_0073fd60(local_60,local_5c,&LAB_0073ee00);
    ppuVar1 = local_5c;
    for (ppuVar4 = local_60; ppuVar4 != ppuVar1; ppuVar4 = ppuVar4 + 4) {
      FUN_00408b90(&local_50,(undefined2 *)*ppuVar4,(undefined2 *)ppuVar4[1]);
    }
    local_40[0] = &PTR_FUN_00fba6f4;
    local_38 = 0;
    local_36 = 0;
    FUN_004f59c0(local_40,0x13,9,&local_50,0x10,1);
    local_20[0] = &PTR_FUN_00fba6f4;
    local_18 = 0;
    local_16 = 0;
    FUN_004f64b0(local_20,(int)local_40);
    local_40[0] = &PTR_FUN_00fba6f4;
    if ((local_38 & 4) != 0) {
      FUN_004f5760(local_40,'\0');
    }
    (**(code **)(*piVar2 + 0x50))(local_20,&local_64);
    appuStack_28[0] = &PTR_FUN_00fba6f4;
    if (((uint)local_20[0] & 4) != 0) {
      FUN_004f5760(appuStack_28,'\0');
    }
    FUN_0073ee30(unaff_EBP,local_64);
    if (unaff_EBP != (int *)0x0) {
      FUN_004e44e0((int)unaff_EBP);
    }
    uVar3 = unaff_EDI;
    if ((2 < (int)((int)local_50 - local_58 & 0xfffffffeU)) && (local_58 != 0)) {
      FUN_004e44e0(local_58);
    }
  }
  return uVar3;
}

