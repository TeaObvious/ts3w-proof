/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x0115edb0 (original PC 1.67 TS3W.exe).
   ScriptCore.CommandSystem::Command_RegisterCommandImpl [assembly=ScriptCore token=0x06000119;
   cmdName: System.String, cmdDesc: System.String, eventHandler: System.Delegate, bHidden:
   System.Boolean; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl ScriptCore.CommandSystem::Command_RegisterCommandImpl(int param_1,int param_2)

{
  int iVar1;
  int *piVar2;
  int *piVar3;
  wint_t *pwVar4;
  short *psVar5;
  void *pvVar6;
  undefined4 uVar7;
  uint uVar8;
  int unaff_EBX;
  void *unaff_EBP;
  void *this;
  undefined4 auStack_14 [5];
  
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  piVar3 = (int *)FUN_00589aa0();
  uVar8 = param_1;
  if (((param_1 != 0) && (param_2 != 0)) && (piVar3 != (int *)0x0)) {
    pwVar4 = (wint_t *)(**(code **)(*piVar2 + 0x58))(param_1);
    psVar5 = (short *)(**(code **)(*piVar2 + 0x58))(param_2);
    pvVar6 = (void *)FUN_004e4500(0x1c,"Scripting/Command/CommandDef",0);
    uVar8 = 0;
    if (pvVar6 != (void *)0x0) {
      pvVar6 = FUN_0073ea90(pvVar6,pwVar4,psVar5,param_1,(char)param_2);
      iVar1 = DAT_011d4ef8;
      uVar8 = 0;
      if (pvVar6 != (void *)0x0) {
        this = (void *)(DAT_011d4ef8 + 0x18);
        if (*(int *)((int)pvVar6 + 0xc) != 0) {
          FUN_00a5b9b0(this,(undefined4 *)&stack0xffffffe4,(uint *)((int)pvVar6 + 8));
          if (unaff_EBX != *(int *)(*(int *)(iVar1 + 0x1c) + *(int *)(iVar1 + 0x20) * 4)) {
            FUN_0058a210(unaff_EBP);
            iVar1 = *(int *)(unaff_EBX + 4);
            if (iVar1 != 0) {
              FUN_004e44e0(*(int *)(iVar1 + 0xc));
              FUN_004e44e0(*(int *)(iVar1 + 0x10));
              FUN_004e44e0(iVar1);
            }
            FUN_007420b0(this,(int *)&stack0xffffffe4,unaff_EBX,piVar3);
          }
          FUN_0073f330(this,auStack_14,(uint *)&stack0xffffffe4);
          uVar7 = FUN_0058a5b0(unaff_EBP,(uint *)((int)pvVar6 + 8));
          return CONCAT31((int3)((uint)uVar7 >> 8),1);
        }
        FUN_004e44e0(*(int *)((int)pvVar6 + 0xc));
        FUN_004e44e0(*(int *)((int)pvVar6 + 0x10));
        uVar8 = FUN_004e44e0((int)pvVar6);
      }
    }
  }
  return uVar8 & 0xffffff00;
}

