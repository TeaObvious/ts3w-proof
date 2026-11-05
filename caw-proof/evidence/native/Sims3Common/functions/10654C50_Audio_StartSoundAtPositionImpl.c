/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* CAW 1.22.10 Sims3Common.dll PE export identity: Audio_StartSoundAtPositionImpl. Export
   ordinal(s): 38. Entry VA: 0x10654c50. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000081. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl
Audio_StartSoundAtPositionImpl(uint param_1,float param_2,undefined4 param_3,float param_4)

{
  int *piVar1;
  ushort *puVar2;
  undefined4 uVar3;
  void *this;
  uint uVar4;
  void *this_00;
  int *piVar5;
  float fStack_118;
  float fStack_114;
  int iStack_110;
  undefined4 uStack_10c;
  undefined4 uStack_108;
  float fVar6;
  undefined4 uVar7;
  int iVar8;
  byte *pbVar9;
  byte *pbStack_d8;
  undefined4 uStack_d4;
  undefined4 uStack_cc;
  undefined8 uStack_c8;
  undefined4 uStack_ac;
  float fStack_a8;
  undefined4 uStack_a4;
  float fStack_a0;
  float fStack_9c;
  byte abStack_94 [144];
  
                    /* 0x654c50  38  Audio_StartSoundAtPositionImpl */
  if ((DAT_10c7d4a0 != 0) && (piVar5 = (int *)(DAT_10c7d4a0 + -0x27bd0), piVar5 != (int *)0x0)) {
    piVar1 = (int *)FUN_1055b120();
    iVar8 = 0x80;
    puVar2 = (ushort *)(**(code **)(*piVar1 + 0x58))();
    uStack_108 = 0x10654c9d;
    FUN_10930890(abStack_94,puVar2,param_1,iVar8);
    pbVar9 = abStack_94;
    uStack_c8 = (**(code **)(*piVar5 + 0x118))();
    uVar3 = (**(code **)(*piVar5 + 0x28))();
    fStack_a8 = param_2;
    uStack_a4 = param_3;
    fStack_a0 = param_4;
    fStack_9c = param_2;
    uStack_ac = uVar3;
    if (DAT_10c700c4 == (void *)0x0) {
      this = (void *)0x0;
    }
    else {
      this = FUN_1023d070(DAT_10c700c4,param_2,param_4);
      if ((this != (void *)0x0) && (*(char *)((int)this + 0x444) != '\0')) {
        FUN_10076ea0(this,(float *)&stack0xffffff18);
      }
    }
    uVar7 = 0x3475365;
    (**(code **)(*piVar5 + 0x44))();
    uStack_108 = 0x3475381;
    uStack_10c = 0x10654dd6;
    fVar6 = (float)uStack_c8;
    (**(code **)(*piVar5 + 0x50))();
    iStack_110 = 0x3475385;
    fStack_114 = 4.5222295e-29;
    uStack_10c = uVar3;
    (**(code **)(*piVar5 + 0x4c))();
    fStack_114 = fVar6;
    uStack_d4 = 0xffffffff;
    fStack_118 = 5.8576773e-37;
    fVar6 = fStack_114;
    pbStack_d8 = pbVar9;
    (**(code **)(*piVar5 + 0x48))();
    (**(code **)(*piVar5 + 0x48))(0x3475395,uStack_cc);
    (**(code **)(*piVar5 + 0x48))(0x3475398,uStack_108);
    if (this == (void *)0x0) {
      this_00 = (void *)0x0;
    }
    else {
      this_00 = *(void **)((int)this + 0x298);
    }
    if (this_00 != (void *)0x0) {
      fStack_118 = DAT_10aae184;
      fStack_114 = DAT_10aae184;
      iStack_110 = 0;
      FUN_100a30e0(this,(float *)&pbStack_d8,&fStack_118);
      FUN_101117d0(this_00,&fStack_118,0,1);
      iVar8 = iStack_110;
      uVar4 = FUN_100c6890(this,&fStack_118,1);
      if ((char)uVar4 != '\0') {
        iStack_110 = iStack_110 + 1;
        iVar8 = iVar8 + 1;
        FUN_101117d0(*(void **)((int)this + 0x298),&fStack_118,0,1);
      }
      (**(code **)(*piVar5 + 0x58))(0x2081b4e6,this);
      (**(code **)(*piVar5 + 0x48))(0x5dbed967,(float)(int)fVar6);
      (**(code **)(*piVar5 + 0x48))(0x39ff78d1,(float)iVar8);
    }
    (**(code **)(*piVar5 + 0x68))();
    return uVar7;
  }
  return 0;
}

