/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldWrap_CloneLot. Export ordinal(s): 2609.
   Entry VA: 0x10998950. Original managed P/Invoke MethodDef(s): none located in the shipped managed
   assemblies. This is an export/declaration annotation only; ABI, behavior and runtime execution
   require the original instructions and caller evidence. */

int * __cdecl WorldWrap_CloneLot(void *param_1,float param_2,float *param_3,float param_4)

{
  int *this;
  uint *puVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  void *pvVar4;
  undefined1 local_1a0 [3];
  undefined2 local_19d;
  undefined1 local_19b;
  undefined2 local_198;
  undefined1 local_196;
  undefined2 local_195;
  undefined1 local_193;
  float local_190;
  int *piStack_18c;
  float fStack_188;
  float fStack_184;
  uint local_174;
  void *local_170;
  int *local_16c;
  undefined4 *local_168;
  uint local_164;
  float local_160;
  int *piStack_15c;
  float fStack_158;
  float fStack_154;
  byte local_150 [64];
  undefined4 local_110 [16];
  undefined4 local_d0 [16];
  uint local_90 [35];
  
                    /* 0x998950  2609  WorldWrap_CloneLot */
  fStack_188 = param_3[2];
  local_190 = *param_3;
  piStack_18c = (int *)param_3[1];
  fStack_184 = local_190;
  local_160 = local_190;
  piStack_15c = piStack_18c;
  fStack_158 = fStack_188;
  fStack_154 = local_190;
  this = FUN_10233590(param_1,*(int **)((int)param_2 + 0x174),*(int *)((int)param_2 + 0x178),
                      &local_160,param_4,*(int *)((int)param_2 + 0x408),0,(wchar_t *)0x0);
  if (this == (int *)0x0) {
    return (int *)0x0;
  }
  local_16c = this;
  FUN_10094540(this,*(int *)((int)param_2 + 0x17c),*(int *)((int)param_2 + 0x180));
  local_170 = (void *)this[0xa6];
  pvVar4 = *(void **)((int)param_2 + 0x298);
  local_164 = FUN_10111350((int)pvVar4);
  local_174 = 0;
  if (local_164 != 0) {
    do {
      local_190 = -1.714704e+38;
      piStack_18c = (int *)CONCAT22(piStack_18c._2_2_,0xff);
      FUN_10111370(pvVar4,local_174,(undefined1 *)&local_190);
      puVar1 = FUN_10111300(pvVar4,(char *)&local_190,'\0');
      local_198 = 0xffff;
      local_196 = 0;
      local_195 = 0xffff;
      local_193 = 0;
      local_1a0._0_2_ = 0xffff;
      local_1a0[2] = 0;
      local_19d = 0xffff;
      local_19b = 0;
      FUN_10111250(pvVar4,(char *)&local_190,(undefined4 *)local_1a0);
      local_198 = local_19d;
      local_196 = local_19b;
      local_193 = local_1a0[2];
      local_195 = local_1a0._0_2_;
      local_168 = FUN_10114510(pvVar4,(char *)&local_198);
      puVar2 = FUN_10114510(pvVar4,local_1a0);
      FUN_100c27f0(local_d0,puVar2,&DAT_10c6edb0,&DAT_10c6edb0,&DAT_10c6edb0);
      FUN_100c27f0(local_110,local_168,&DAT_10c6edb0,&DAT_10c6edb0,&DAT_10c6edb0);
      FUN_100c2720(local_90,local_d0,local_110);
      FUN_100c2750((undefined4 *)local_150);
      uVar3 = FUN_1022f7f0(puVar1);
      if ((char)uVar3 != '\0') {
        FUN_10114b60(pvVar4,(char *)&local_190,(undefined4 *)local_150);
      }
      FUN_1011c2d0(local_170,puVar1,local_90,(float *)local_1a0,local_150);
      local_174 = local_174 + 1;
      this = local_16c;
    } while (local_174 < local_164);
  }
  pvVar4 = (void *)FUN_1072a1a0();
  if (pvVar4 != (void *)0x0) {
    local_190 = param_2;
    piStack_18c = this;
    FUN_1072ac40(pvVar4,FUN_109987f0,(undefined *)0x0,&local_190);
  }
  if (*(int **)((int)param_2 + 0x10) != (int *)0x0) {
    (**(code **)(**(int **)((int)param_2 + 0x10) + 0x44))();
    return this;
  }
  FUN_1023a2e0(param_1,this);
  return this;
}

