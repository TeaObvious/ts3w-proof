/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

Decompiled function Seasons_TestSnowExposure:


/* Analyst-assigned name. Snow exposure point predicate. Returns exposed flag and separate allowance
   byte: streets reject exposure but allow retained snow, water/localpond reject both,
   interior/roof/floor filters reject. It is not equivalent to a generic terrain-height query or
   camera ground acceptance. */

bool __cdecl Seasons_TestSnowExposure(float *param_1,undefined1 *param_2)

{
  bool bVar1;
  void *this;
  uint uVar2;
  undefined4 uVar3;
  void *pvVar4;
  float10 fVar5;
  float local_34;
  float local_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float local_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;

  pvVar4 = DAT_011edbc4;
  if (DAT_011edbc4 == (void *)0x0) {
    this = (void *)0x0;
  }
  else {
    local_30 = *param_1;
    fStack_2c = param_1[1];
    fStack_28 = param_1[2];
    fStack_24 = param_1[3];
    local_20 = local_30;
    fStack_1c = fStack_2c;
    fStack_18 = fStack_28;
    fStack_14 = fStack_24;
    this = FUN_00c687d0(DAT_011edbc4,local_30,fStack_28);
  }
  *param_2 = 0;
  if (this == (void *)0x0) {
    if (*(void **)((int)pvVar4 + 0x5c) != (void *)0x0) {
      local_30 = *param_1;
      fStack_2c = param_1[1];
      fStack_28 = param_1[2];
      fStack_24 = param_1[3];
      local_20 = local_30;
      fStack_1c = fStack_2c;
      fStack_18 = fStack_28;
      fStack_14 = fStack_24;
      uVar3 = FUN_00b865c0(*(void **)((int)pvVar4 + 0x5c),local_30,fStack_28,'\0','\0');
      if ((char)uVar3 != '\0') {
        *param_2 = 1;
        return false;
      }
    }
    fVar5 = FUN_00c61090((int)pvVar4);
    local_34 = (float)fVar5;
    local_30 = *param_1;
    fStack_2c = param_1[1];
    fStack_28 = param_1[2];
    fStack_24 = param_1[3];
    local_20 = local_30;
    fStack_1c = fStack_2c;
    fStack_18 = fStack_28;
    fStack_14 = fStack_24;
    fVar5 = FUN_00c6a090(pvVar4,local_30,fStack_28,0,'\x01','\0',(undefined1 *)0x0,(undefined1 *)0x0
                         ,'\0','\0');
    if (fVar5 - (float10)1.0 <= (float10)local_34) {
      *param_2 = 0;
      return false;
    }
    local_30 = *param_1;
    fStack_2c = param_1[1];
    fStack_28 = param_1[2];
    fStack_24 = param_1[3];
    local_20 = local_30;
    fStack_1c = fStack_2c;
    fStack_18 = fStack_28;
    fStack_14 = fStack_24;
    pvVar4 = FUN_00c60880(pvVar4,local_30,fStack_28,'\x01');
    if (pvVar4 != (void *)0x0) {
      *param_2 = 0;
      return false;
    }
    *param_2 = 1;
  }
  else {
    pvVar4 = *(void **)((int)this + 0x298);
    if (pvVar4 != (void *)0x0) {
      local_30 = -1.0;
      fStack_2c = -1.0;
      fStack_28 = 0.0;
      FUN_00adc920(this,param_1,&local_30);
      uVar2 = FUN_00b482c0(pvVar4,&local_30,0,0);
      bVar1 = FUN_00b4c3e0(pvVar4,uVar2 & 0xffff,1);
      if (!bVar1) {
        return false;
      }
      local_34 = -1.714704e+38;
      FUN_00af7db0(&local_30,(char *)&local_34);
      bVar1 = FUN_00abc5d0(this,(char *)&local_34);
      return bVar1;
    }
  }
  return true;
}


