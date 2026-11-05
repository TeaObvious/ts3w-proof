/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 physicalECXModelcomponent PLUSoneunusedstackDWORD RET4, lowALalways1. Formerfastcall1
   omittedpurgedstackword; actualsavedthiscall1rawDWORD ABI. Nullowner returns1. Original
   livecomponenttoken011EA0FC selectsspecialbranch; not inferredfrom host cataloghash alone.
   Ordinarybranch SUBPSbounds, abs viaMAXPS(-extent,extent), CMPLEPS epsilon binary32word34000000
   at1044B44; low3mask7 isempty. MULPS binary32roundedX*Y thenZ, COMISS thresholdword3C03126F
   at1044B8C versusvolume JBEskips; strictpositive-domainvolume<threshold setsflags+50bit800
   andrefreshes948B00. NaNunorderedalsoJBEskip; invalidnegative/inverted domains not universal
   managedfiniteparity. ReturnAL1/RET4 independent ofwhetherflagschanged. */

bool __thiscall ModelComponent_ApplyInsertionBoundsFlags(void *this,dword unusedStackWord)

{
  int iVar1;
  void *pvVar2;
  uint uVar3;
  undefined4 uVar4;
  uint uVar5;
  uint uVar6;
  float fVar7;
  float fVar8;
  float fVar9;
  float fVar10;
  undefined1 auVar11 [16];
  undefined1 auVar12 [16];
  undefined1 auVar13 [16];
  
  if (*(void **)((int)this + 4) == (void *)0x0) {
    return true;
  }
  pvVar2 = Object_GetComponentByMask(*(void **)((int)this + 4),DAT_011ea0fc);
  if (pvVar2 == (void *)0x0) {
    fVar7 = *(float *)((int)this + 0x70) - *(float *)((int)this + 0x60);
    fVar8 = *(float *)((int)this + 0x74) - *(float *)((int)this + 100);
    fVar9 = *(float *)((int)this + 0x78) - *(float *)((int)this + 0x68);
    fVar10 = *(float *)((int)this + 0x7c) - *(float *)((int)this + 0x6c);
    auVar11._0_4_ = fVar7 * -1.0;
    auVar11._4_4_ = fVar8 * -1.0;
    auVar11._8_4_ = fVar9 * -1.0;
    auVar11._12_4_ = fVar10 * -1.0;
    auVar12._4_4_ = fVar8;
    auVar12._0_4_ = fVar7;
    auVar12._8_4_ = fVar9;
    auVar12._12_4_ = fVar10;
    auVar12 = maxps(auVar11,auVar12);
    auVar13._4_4_ = -(uint)(auVar12._4_4_ <= 1.1920929e-07);
    auVar13._0_4_ = -(uint)(auVar12._0_4_ <= 1.1920929e-07);
    auVar13._8_4_ = -(uint)(auVar12._8_4_ <= 1.1920929e-07);
    auVar13._12_4_ = -(uint)(auVar12._12_4_ <= 1.1920929e-07);
    uVar4 = movmskps(0,auVar13);
    if (((byte)uVar4 & 7) == 7) {
      return true;
    }
    if (0.008 <= fVar9 * fVar8 * fVar7) {
      return true;
    }
  }
  else {
    if ((*(uint *)((int)pvVar2 + 0x30) & 3) != 0) {
      return true;
    }
    iVar1 = *(int *)((int)pvVar2 + 0x30);
    if (iVar1 == 0) {
      return true;
    }
    FUN_005ebac0();
    uVar3 = *(uint *)(iVar1 + 0x38);
    if (((byte)uVar3 & 0x7f) != 4) {
      return true;
    }
    uVar6 = uVar3 & 0xcf00;
    uVar5 = uVar3;
    if (uVar6 == 0) {
      uVar5 = uVar3 | 0x100;
    }
    if ((uVar5 & 0xcf00) != 0x300) {
      uVar5 = uVar3;
      if (uVar6 == 0) {
        uVar5 = uVar3 | 0x100;
      }
      if ((uVar5 & 0xcf00) != 0x400) {
        if (uVar6 == 0) {
          uVar3 = uVar3 | 0x100;
        }
        if ((uVar3 & 0xcf00) != 0x500) {
          return true;
        }
      }
    }
  }
  *(uint *)((int)this + 0x50) = *(uint *)((int)this + 0x50) | 0x800;
  FUN_00948b00((int)this);
  return true;
}

