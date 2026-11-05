/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Command_RegisterCommandImpl. Export ordinal(s):
   315. Entry VA: 0x105312c0. Original managed P/Invoke MethodDef(s): ScriptCore:0x0600029C. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 __cdecl Command_RegisterCommandImpl(int param_1,int param_2)

{
  int iVar1;
  int *piVar2;
  int *piVar3;
  wint_t *pwVar4;
  short *psVar5;
  void *pvVar6;
  int iVar7;
  undefined4 uVar8;
  uint uVar9;
  int unaff_EBX;
  void *unaff_EBP;
  undefined4 auStack_14 [5];
  
  piVar2 = (int *)FUN_1055b120();
  piVar3 = (int *)FUN_10387250();
                    /* 0x5312c0  315  Command_RegisterCommandImpl */
  uVar9 = param_1;
  if (((param_1 != 0) && (param_2 != 0)) && (piVar3 != (int *)0x0)) {
    pwVar4 = (wint_t *)(**(code **)(*piVar2 + 0x58))(param_1);
    psVar5 = (short *)(**(code **)(*piVar2 + 0x58))(param_2);
    pvVar6 = (void *)FUN_10918eb0(0x1c,"Scripting/Command/CommandDef",0);
    uVar9 = 0;
    if (pvVar6 != (void *)0x0) {
      iVar7 = FUN_10530990(pvVar6,pwVar4,psVar5,param_1,(char)param_2);
      iVar1 = DAT_10c78778;
      uVar9 = 0;
      if (iVar7 != 0) {
        pvVar6 = (void *)(DAT_10c78778 + 0x18);
        if (*(int *)(iVar7 + 0xc) != 0) {
          FUN_106a8410(pvVar6,(undefined4 *)&stack0xffffffe4,(uint *)(iVar7 + 8));
          if (unaff_EBX != *(int *)(*(int *)(iVar1 + 0x1c) + *(int *)(iVar1 + 0x20) * 4)) {
            FUN_10387b80(unaff_EBP);
            iVar1 = *(int *)(unaff_EBX + 4);
            if (iVar1 != 0) {
              FUN_10918e90(*(int *)(iVar1 + 0xc));
              FUN_10918e90(*(int *)(iVar1 + 0x10));
              FUN_10918e90(iVar1);
            }
            FUN_1005db40(pvVar6,(int *)&stack0xffffffe4,unaff_EBX,piVar3);
          }
          FUN_10531010(pvVar6,auStack_14,(uint *)&stack0xffffffe4);
          uVar8 = FUN_10388080(unaff_EBP,(uint *)(iVar7 + 8));
          return CONCAT31((int3)((uint)uVar8 >> 8),1);
        }
        FUN_10918e90(*(int *)(iVar7 + 0xc));
        FUN_10918e90(*(int *)(iVar7 + 0x10));
        uVar9 = FUN_10918e90(iVar7);
      }
    }
  }
  return uVar9 & 0xffffff00;
}

