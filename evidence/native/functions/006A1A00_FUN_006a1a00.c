/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Analyst instruction notes; original PC1.67 TS3W.exe.
 * Actual fill caller/reader: after 6A0640 and 6A9030, byte owner+18==0 admits CALL6A1120 at6A1AAD. It immediately reads owner+110..11F into local four-lane storage and passes it to6AB2F0 with owner[0]+98 scalar. Subsequent6AA2F0 calls use selectors9/10 and separate owner regions. This is a concrete reader, not completed texture/GPU/runtime or complete child/resource/lifetime proof.
 * Actual Ghidra C follows unchanged. Stored names/prototypes were NOT edited.
 * Complete original Listing: 006A1A00_FUN_006a1a00.asm
 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_006a1a00(int *param_1)

{
  int *this;
  char cVar1;
  float *pfVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  void *this_00;
  float10 fVar5;
  int local_70;
  uint local_6c;
  uint local_68;
  int local_64;
  int local_60;
  int local_5c;
  int local_58;
  int local_54;
  float local_50;
  float fStack_4c;
  float fStack_48;
  float fStack_44;
  int local_40;
  int iStack_3c;
  int iStack_38;
  int iStack_34;
  undefined4 local_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  float local_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  cVar1 = *(char *)(*param_1 + 0x288);
  if ((*(int *)(*param_1 + 0x88) != 0) || (local_6c = CONCAT31(local_6c._1_3_,1), cVar1 == '\0')) {
    local_6c = local_6c & 0xffffff00;
  }
  if ((param_1[0x10] == param_1[0x11]) || (local_68 = CONCAT31(local_68._1_3_,1), cVar1 == '\0')) {
    local_68 = local_68 & 0xffffff00;
  }
  FUN_006a9620((void *)(param_1[0x3d] * 0x40 + param_1[1]),local_6c,(char)local_68);
  if (cVar1 != '\0') {
    FUN_006a95c0((int *)param_1[2]);
    FUN_006a95c0((int *)&DAT_01159af0);
  }
  this_00 = (void *)(param_1[0x3d] * 0x40 + param_1[1]);
  FUN_006a0640(param_1);
  local_30 = 0;
  uStack_2c = 0;
  uStack_28 = 0;
  uStack_24 = 0;
  local_40 = 0;
  iStack_3c = 0;
  iStack_38 = 0;
  iStack_34 = 0;
  fVar5 = FUN_006a9030((int)this_00);
  param_1[399] = (int)(float)fVar5;
  if ((char)param_1[6] == '\0') {
    FUN_006a1120(param_1);
    local_40 = param_1[0x44];
    iStack_3c = param_1[0x45];
    iStack_38 = param_1[0x46];
    iStack_34 = param_1[0x47];
  }
  this = param_1 + 400;
  FUN_006ab2f0(this,*(undefined4 *)(*param_1 + 0x98),&local_40);
  FUN_006ab2f0(param_1 + 0x198,*(undefined4 *)(*param_1 + 0x98),&local_30);
  pfVar2 = (float *)param_1[0x3e];
  local_5c = param_1[9];
  local_60 = param_1[7];
  local_50 = fRam011d1394 * pfVar2[4] + _DAT_011d1390 * *pfVar2 + fRam011d1398 * pfVar2[8];
  fStack_4c = fRam011d1394 * pfVar2[5] + _DAT_011d1390 * pfVar2[1] + fRam011d1398 * pfVar2[9];
  fStack_48 = fRam011d1394 * pfVar2[6] + _DAT_011d1390 * pfVar2[2] + fRam011d1398 * pfVar2[10];
  fStack_44 = fRam011d1394 * pfVar2[7] + _DAT_011d1390 * pfVar2[3] + fRam011d1398 * pfVar2[0xb];
  local_58 = param_1[8];
  local_54 = param_1[10];
  local_20 = fRam011d13a4 * pfVar2[4] + _DAT_011d13a0 * *pfVar2 + fRam011d13a8 * pfVar2[8];
  fStack_1c = fRam011d13a4 * pfVar2[5] + _DAT_011d13a0 * pfVar2[1] + fRam011d13a8 * pfVar2[9];
  fStack_18 = fRam011d13a4 * pfVar2[6] + _DAT_011d13a0 * pfVar2[2] + fRam011d13a8 * pfVar2[10];
  fStack_14 = fRam011d13a4 * pfVar2[7] + _DAT_011d13a0 * pfVar2[3] + fRam011d13a8 * pfVar2[0xb];
  uVar3 = FUN_006a8e90((int)this_00);
  *(char *)((int)param_1 + 0x639) = (char)uVar3;
  local_6c = FUN_006a8f00((int)this_00);
  FUN_006a8f40(this_00,&local_70,&local_64,'\0');
  FUN_006aa2f0(param_1 + 0x60,9,&local_50,&local_60,this,local_6c,local_70);
  if ((char)param_1[6] == '\0') {
    uVar3 = FUN_006a8ee0(this_00,0);
    uVar4 = FUN_006a8ec0(this_00,0);
    *(char *)(param_1 + 0x6c) = (char)uVar4;
    *(char *)((int)param_1 + 0x1b1) = (char)uVar3;
  }
  FUN_006aa2f0(param_1 + 0x9c,10,&local_20,&local_60,this,local_6c,local_70);
  param_1[0xa4] = DAT_00ff4344;
  *(undefined1 *)(param_1 + 0xd6) = 1;
  if ((char)param_1[6] == '\0') {
    uVar3 = FUN_006a8ee0(this_00,1);
    uVar4 = FUN_006a8ec0(this_00,1);
    *(char *)(param_1 + 0xa8) = (char)uVar4;
    *(char *)((int)param_1 + 0x2a1) = (char)uVar3;
    FUN_006aa2f0(param_1 + 0xd8,9,&local_50,&local_60,this,local_6c,local_70);
    param_1[0xd9] = 1;
    uVar3 = FUN_006a8ee0(this_00,2);
    uVar4 = FUN_006a8ec0(this_00,2);
    *(char *)(param_1 + 0xe4) = (char)uVar4;
    *(char *)((int)param_1 + 0x391) = (char)uVar3;
    *(undefined1 *)((int)param_1 + 0x449) = (undefined1)local_68;
    if (cVar1 != '\0') {
      FUN_006aa2f0(param_1 + 0x150,9,&local_50,&local_60,this,1,0x40);
      *(undefined1 *)((int)param_1 + 0x62a) = 1;
    }
  }
  return;
}

