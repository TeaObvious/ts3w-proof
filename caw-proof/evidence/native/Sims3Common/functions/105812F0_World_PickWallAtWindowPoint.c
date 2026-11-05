/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_PickWallAtWindowPoint. Export ordinal(s):
   1561. Entry VA: 0x105812f0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000C08. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

undefined4 __cdecl
World_PickWallAtWindowPoint(int param_1,int param_2,void *param_3,void *param_4,void *param_5)

{
  char cVar1;
  int iVar2;
  uint uVar3;
  undefined3 extraout_var;
  undefined4 uVar4;
  float10 fVar5;
  char cStack_bc;
  char cStack_bb;
  char cStack_ba;
  char cStack_b9;
  char cStack_b8;
  char cStack_b7;
  int iStack_b4;
  float fStack_b0;
  float fStack_ac;
  int iStack_a8;
  undefined4 uStack_a4;
  float fStack_98;
  float fStack_94;
  float afStack_90 [4];
  float fStack_80;
  undefined4 uStack_7c;
  undefined4 uStack_78;
  undefined4 uStack_74;
  float fStack_70;
  undefined4 uStack_6c;
  undefined4 uStack_68;
  undefined4 uStack_64;
  float afStack_60 [4];
  float afStack_50 [4];
  float fStack_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  
  iVar2 = FUN_104de3a0();
  iVar2 = FUN_109a5b50(iVar2);
  FUN_105c2650(iVar2,param_1,param_2,afStack_90,afStack_60);
  iVar2 = FUN_1047dd40();
  uVar3 = 0;
  if (iVar2 != 0) {
    uVar3 = FUN_1047e270(afStack_90,afStack_60,2,afStack_50,'\x01');
    if ((char)uVar3 != '\0') {
      cStack_bc = -1;
      cStack_bb = -1;
      cStack_b9 = -1;
      cStack_b8 = -1;
      iStack_b4 = 0;
      cStack_ba = '\0';
      cStack_b7 = '\0';
      cVar1 = FUN_100d7ea0(&fStack_40,&iStack_b4,(undefined4 *)&cStack_bc);
      uVar3 = CONCAT31(extraout_var,cVar1);
      if (cVar1 != '\0') {
        fStack_b0 = fStack_40;
        fStack_ac = (float)uStack_3c;
        iStack_a8 = uStack_38;
        uStack_a4 = uStack_34;
        fStack_80 = fStack_40;
        uStack_7c = uStack_3c;
        uStack_78 = uStack_38;
        uStack_74 = uStack_34;
        fStack_70 = fStack_40;
        uStack_6c = uStack_3c;
        uStack_68 = uStack_38;
        uStack_64 = uStack_34;
        FUN_1055da40(param_3,fStack_40,uStack_3c,uStack_38);
        iStack_a8 = (int)cStack_ba;
        fStack_b0 = (float)(int)cStack_bc;
        fStack_ac = (float)(int)cStack_bb;
        fVar5 = FUN_1004dc80(*(int *)(iStack_b4 + 0x290),&fStack_b0);
        fStack_98 = (float)fVar5;
        iStack_a8 = (int)cStack_b7;
        fStack_b0 = (float)(int)cStack_b9;
        fStack_ac = (float)(int)cStack_b8;
        fVar5 = FUN_1004dc80(*(int *)(iStack_b4 + 0x290),&fStack_b0);
        fStack_94 = (float)fVar5;
        FUN_1055da40(param_4,(float)(int)cStack_bc,fStack_98,(float)(int)cStack_bb);
        uVar4 = FUN_1055da40(param_5,(float)(int)cStack_b9,fStack_94,(float)(int)cStack_b8);
        return CONCAT31((int3)((uint)uVar4 >> 8),1);
      }
    }
  }
  return uVar3 & 0xffffff00;
}

