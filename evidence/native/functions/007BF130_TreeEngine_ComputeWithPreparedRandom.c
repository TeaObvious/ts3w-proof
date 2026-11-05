/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst PC1.67 tree numeric instruction contract. Selectedrandomprep contract within
   fullthiscallengine,floatargument RET4. SeedDWORD+3C, authoredsize+40, variance+44, CRTseed+48.
   Reseedsignedseed; fills1000globalfloatentries011D8540 usingUniform(0,1), FSTPfloat each;
   reseedsagain, computesSSEbinary32(size-variance,size+variance), callsUniform
   andFSTPfloatcomputedsize, calls imported srand with+48, storescomputedsize+4C;
   reseedsmainstreamathirdtimeBEFORErootbranchcall007A6530.
   Otherallocation/parameter/matrix/branch/leaf helpers remain unexpanded, no complete
   generation/parity claim. Fullsource behavior needs actualauthoredseed producer/defaults and
   caller state; no Xbox/CAW symbols treatedasPC proof. */

void __thiscall TreeEngine_ComputeWithPreparedRandom(void *this,float argument)

{
  int *piVar1;
  undefined4 uVar2;
  int iVar3;
  int extraout_EDX;
  uint uVar4;
  int iVar5;
  float *pfVar6;
  uint uVar7;
  float *pfVar8;
  float10 fVar9;
  float10 fVar10;
  float fVar11;
  float fVar12;
  float fStack_60;
  float fStack_5c;
  float fStack_58;
  float afStack_54 [3];
  float afStack_48 [4];
  float fStack_38;
  float fStack_34;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  float afStack_24 [9];
  
  DAT_01163e14 = *(char *)((int)this + 0xd4) == '\0';
  uVar7 = 0;
  if (DAT_011d9624 == (int *)0x0) {
    piVar1 = FUN_004e6f20(DAT_011cc864,0x390,0);
  }
  else {
    piVar1 = (int *)(**(code **)(*DAT_011d9624 + 4))(0x390,0x10);
  }
  if (piVar1 == (int *)0x0) {
    uVar2 = 0;
  }
  else {
    _DAT_011d9628 = _DAT_011d9628 + 0x390;
    uVar2 = FUN_007a3a50(piVar1,0,1);
  }
  *(undefined4 *)((int)this + 0x50) = uVar2;
  if (*(char *)((int)this + 0xd4) == '\0') {
    piVar1 = FUN_007bde20(*(int *)((int)this + 0xac));
    *(int **)((int)this + 0xd0) = piVar1;
  }
  DAT_01163e18 = *(undefined4 *)((int)this + 0xec);
  piVar1 = (int *)((int)this + 0x7c);
  DAT_01163e7c = DAT_01163e78;
  uVar4 = 0;
  DAT_011d94e4 = piVar1;
  if (*(int *)((int)this + 0x5c) - *(int *)((int)this + 0x58) >> 2 != 0) {
    do {
      fStack_60 = *(float *)(*(int *)((int)this + 0x58) + uVar4 * 4);
      if (DAT_01163e7c < DAT_01163e80) {
        pfVar6 = DAT_01163e7c + 1;
        if (DAT_01163e7c != (float *)0x0) {
          *DAT_01163e7c = fStack_60;
          DAT_01163e7c = pfVar6;
          pfVar6 = DAT_01163e7c;
        }
      }
      else {
        FUN_00982420(&DAT_01163e78,DAT_01163e7c,&fStack_60);
        pfVar6 = DAT_01163e7c;
      }
      DAT_01163e7c = pfVar6;
      uVar4 = uVar4 + 1;
    } while (uVar4 < (uint)(*(int *)((int)this + 0x5c) - *(int *)((int)this + 0x58) >> 2));
  }
  DAT_011d94f4 = *(undefined1 *)((int)this + 0x10c);
  DAT_011d94f5 = *(undefined1 *)((int)this + 0x10d);
  DAT_011d94f8 = *(undefined4 *)((int)this + 0x110);
  DAT_01163e1c = *(undefined4 *)((int)this + 0x114);
  _DAT_01163e20 = *(undefined4 *)((int)this + 0x118);
  _DAT_01163e24 = *(undefined4 *)((int)this + 0x11c);
  DAT_011d94fc = *(undefined4 *)((int)this + 0x120);
  DAT_011d9508 = *(undefined4 *)((int)this + 0x124);
  DAT_011d9500 = 0;
  DAT_011d9504 = 0;
  TreeRandom_ReseedGlobal(*(int *)((int)this + 0x3c));
  do {
    fVar9 = TreeRandom_UniformGlobal(0.0,1.0);
    *(float *)((int)&DAT_011d8540 + uVar7) = (float)fVar9;
    uVar7 = uVar7 + 4;
  } while (uVar7 < 4000);
  TreeRandom_ReseedGlobal(*(int *)((int)this + 0x3c));
  fVar9 = TreeRandom_UniformGlobal
                    (*(float *)((int)this + 0x40) - *(float *)((int)this + 0x44),
                     *(float *)((int)this + 0x40) + *(float *)((int)this + 0x44));
  fStack_60 = (float)fVar9;
  srand(*(uint *)((int)this + 0x48));
  *(float *)((int)this + 0x4c) = fStack_60;
  if ((DAT_010f4ccc < *(float *)((int)this + 0x40)) &&
     (iVar3 = *(int *)((int)this + 0x80) - *piVar1, iVar5 = iVar3 >> 0x1f, uVar7 = 0,
     iVar3 / 0x58 + iVar5 != iVar5)) {
    iVar5 = 0;
    do {
      iVar3 = *piVar1 + iVar5;
      *(float *)(iVar3 + 0x3c) = *(float *)(*piVar1 + 0x30 + iVar5) * *(float *)((int)this + 0x40);
      *(float *)(iVar3 + 0x40) = *(float *)(iVar3 + 0x34) * *(float *)((int)this + 0x40);
      uVar7 = uVar7 + 1;
      iVar5 = iVar5 + 0x58;
    } while (uVar7 < (uint)((*(int *)((int)this + 0x80) - *piVar1) / 0x58));
  }
  TreeRandom_ReseedGlobal(*(int *)((int)this + 0x3c));
  FUN_007b0b70(*(void **)((int)this + 0x54),(uint)*(ushort *)((int)this + 0x68));
  *(undefined4 *)(*(int *)((int)this + 0x54) + 0x28) = 0;
  DAT_011d94ec = *(undefined4 *)((int)this + 0x3c);
  fVar9 = (float10)(*(float *)((int)this + 0x138) * _DAT_01016f0c);
  fVar10 = (float10)fcos(fVar9);
  iVar5 = *(int *)((int)this + 0x3c);
  iVar3 = 9;
  uStack_30 = 0;
  uStack_2c = 0;
  afStack_54[0] = 0.0;
  afStack_54[1] = 0.0;
  fStack_58 = (float)fVar10;
  fVar9 = (float10)fsin(fVar9);
  fVar12 = fStack_58 * 0.0;
  fStack_5c = (float)fVar9;
  afStack_48[0] = fStack_58 + fStack_5c * 0.0;
  afStack_48[3] = fVar12 + (DAT_00f998f0 - fStack_5c);
  fVar11 = (DAT_00f998f0 - fStack_5c) * 0.0;
  fStack_34 = fVar11 + fVar12;
  afStack_48[1] = fVar12 + fStack_5c;
  afStack_48[2] = fVar12 + fStack_5c * 0.0;
  fStack_38 = fVar11 + fStack_58;
  uStack_28 = DAT_00f998f8;
  pfVar6 = afStack_48;
  pfVar8 = afStack_24;
  for (; iVar3 != 0; iVar3 = iVar3 + -1) {
    *pfVar8 = *pfVar6;
    pfVar6 = pfVar6 + 1;
    pfVar8 = pfVar8 + 1;
  }
  afStack_54[2] = (float)DAT_00f998f8;
  FUN_007a6530(*(void **)((int)this + 0x50),iVar5,fStack_60,0,(float *)((int)this + 4),0.0,
               afStack_24,afStack_54,*(void **)((int)this + 0x54),(int)this + 0x6c,1.0,1.0,iVar5,
               *(int *)((int)this + 0x48),DAT_00fab218,'\0');
  FUN_007beda0((int)this,extraout_EDX);
  if (*(char *)((int)this + 0xd4) == '\0') {
    FUN_007be9e0(this,argument);
  }
  return;
}

