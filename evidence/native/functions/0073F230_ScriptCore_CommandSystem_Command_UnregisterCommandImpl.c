/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x0115edb8 (original PC 1.67 TS3W.exe).
   ScriptCore.CommandSystem::Command_UnregisterCommandImpl [assembly=ScriptCore token=0x0600011A;
   cmdName: System.String; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl ScriptCore.CommandSystem::Command_UnregisterCommandImpl(int param_1)

{
  int iVar1;
  int *piVar2;
  wint_t *pwVar3;
  void *pvVar4;
  int unaff_EBX;
  void *this;
  int *piStack_8;
  
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (param_1 != 0) {
    pwVar3 = (wint_t *)(**(code **)(*piVar2 + 0x58))(param_1);
    iVar1 = DAT_011d4ef8;
    this = (void *)(DAT_011d4ef8 + 0x18);
    FUN_007d0020(pwVar3);
    FUN_00a5b9b0(this,(undefined4 *)&stack0xfffffff4,(uint *)&stack0x00000000);
    if (unaff_EBX != *(int *)(*(int *)(iVar1 + 0x1c) + *(int *)(iVar1 + 0x20) * 4)) {
      pvVar4 = (void *)FUN_00589aa0();
      if (pvVar4 != (void *)0x0) {
        FUN_0058a210(pvVar4);
      }
      iVar1 = *(int *)(unaff_EBX + 4);
      if (iVar1 != 0) {
        FUN_004e44e0(*(int *)(iVar1 + 0xc));
        FUN_004e44e0(*(int *)(iVar1 + 0x10));
        FUN_004e44e0(iVar1);
      }
      FUN_007420b0(this,(int *)&stack0xfffffff4,unaff_EBX,piStack_8);
    }
  }
  return;
}

