/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 original static instructions. ECX cursor receiver plus1stackDWORD position/RET4. Copies
   position and selects surface height/adjusted level through original flags and child queries.
   Final no112flag/no113flag path calls CD2DA0 at adjusted storedlevel+1; flag112 branch requests
   storedlevel-1. Therefore requested level comes from cursor state/flags, not a universal wall
   scan. Full upstream tool classification remains unresolved. */

void __thiscall LotConstructionCursor_UpdateHeightAndLevelBounds(void *this,float *param_1)

{
  float *pfVar1;
  char cVar2;
  int iVar3;
  undefined4 uVar4;
  int iVar5;
  int iVar6;
  float10 fVar7;
  byte bVar8;
  float local_10;
  LotXZLevel local_c;
  
  *(undefined1 *)((int)this + 0xf0) = 1;
  pfVar1 = (float *)((int)this + 0xe4);
  *pfVar1 = *param_1;
  *(float *)((int)this + 0xe8) = param_1[1];
  iVar5 = -1;
  *(float *)((int)this + 0xec) = param_1[2];
  *(undefined1 *)((int)this + 0x116) = 0;
  if ((*(char *)((int)this + 0x111) != '\0') && (0 < *(int *)((int)this + 0xec))) {
    param_1 = (float *)0xff00ffff;
    LotLocation_EncodeCellAndQuadrant(pfVar1,(char *)&param_1);
    cVar2 = param_1._2_1_ + -1;
    param_1._0_3_ = CONCAT12(cVar2,param_1._0_2_);
    uVar4 = Lot_TestSelectedFloorZone4(*(void **)((int)this + 0xc),(undefined2 *)&param_1);
    *(bool *)((int)this + 0x116) = (char)uVar4 == '\0';
  }
  if ((((*(char *)((int)this + 0x112) == '\0') && (*(char *)((int)this + 0x113) == '\0')) &&
      ((*(char *)((int)this + 0x110) != '\0' ||
       (((*(char *)((int)this + 0x111) == '\0' || (*(char *)((int)this + 0x116) == '\0')) &&
        (1 < *(int *)((int)this + 0xdc) - 2U)))))) && (0 < *(int *)((int)this + 0xec))) {
    *(int *)((int)this + 0xec) = *(int *)((int)this + 0xec) + -1;
  }
  bVar8 = (byte)(*(uint *)((int)this + 0x10) >> 2) & 1;
  fVar7 = FUN_00ca77b0(*(void **)((int)this + 0xc),pfVar1,*(int *)((int)this + 0x7c),bVar8);
  *(float *)((int)this + 0x104) = (float)fVar7;
  if (((*pfVar1 < 0.999) || (*(float *)((int)this + 0xe8) < 0.999)) ||
     (((float)*(int *)(*(int *)((int)this + 0xc) + 0x174) - 0.999 < *pfVar1 ||
      ((float)*(int *)(*(int *)((int)this + 0xc) + 0x178) - 0.999 < *(float *)((int)this + 0xe8)))))
  {
    local_c.level = *(int *)((int)this + 0xec);
    param_1 = (float *)((uint)param_1 & 0xffffff00);
    iVar6 = 0;
    do {
      local_c.x = (float)(int)(&DAT_0108078c)[iVar6] + *pfVar1;
      local_c.z = (float)(int)(&DAT_010807ac)[iVar6] + *(float *)((int)this + 0xe8);
      iVar3 = *(int *)((int)this + 0xc);
      if (((0.999 <= local_c.x) && (0.999 <= local_c.z)) &&
         ((local_c.x <= (float)*(int *)(iVar3 + 0x174) - 0.999 &&
          (local_c.z <= (float)*(int *)(iVar3 + 0x178) - 0.999)))) {
        if ((char)param_1 == '\0') {
          fVar7 = LotLevelHeight_SampleLocalPosition(*(void **)(iVar3 + 0x290),&local_c);
          local_10 = (float)fVar7;
          param_1 = (float *)CONCAT31(param_1._1_3_,1);
          iVar5 = iVar6;
        }
        else {
          fVar7 = LotLevelHeight_SampleLocalPosition(*(void **)(iVar3 + 0x290),&local_c);
          if ((float10)0.05 < ABS(fVar7 - (float10)local_10)) goto LAB_00cd8954;
        }
      }
      iVar6 = iVar6 + 1;
    } while (iVar6 < 8);
    if (-1 < iVar5) {
      local_c.x = (float)(int)(&DAT_0108078c)[iVar5] + *pfVar1;
      local_c.z = (float)(int)(&DAT_010807ac)[iVar5] + *(float *)((int)this + 0xe8);
      fVar7 = FUN_00ca77b0(*(void **)((int)this + 0xc),&local_c.x,*(int *)((int)this + 0x7c),bVar8);
      *(float *)((int)this + 0x104) = (float)fVar7;
    }
  }
LAB_00cd8954:
  if (*(char *)((int)this + 0x112) == '\0') {
    if (*(char *)((int)this + 0x113) == '\0') {
      LotLevels_ExpandBounds(*(void **)((int)this + 0xc),*(int *)((int)this + 0xec) + 1);
    }
    return;
  }
  LotLevels_ExpandBounds(*(void **)((int)this + 0xc),*(int *)((int)this + 0xec) + -1);
  return;
}

