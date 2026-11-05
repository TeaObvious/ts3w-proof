/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst: at-floor level selector used by World_GetLotLocationAtFloorImpl and
   World_IsOnPlatformImpl. Signed min/max at lot+17c/+180, integer EAX return, RET8. Walks from max
   downward and accepts a level only when sampledHeight < localY+0.075; for levels above zero also
   requires localY > terrainHeight+0.075 when that terrain bound was sampled. With validateSurface
   nonzero, requires cell-mask predicate then absence of the lower-level property predicate; exact
   lot fields +408==1/+40c==50 bypass these validations for level<=1. Unlike 00ab5dc0 it has no
   midpoint selection or level+1 return. Missing height object or no eligible level returns minimum.
   The float gates are FCOMIP/JBE at 00ab62be..c2 and COMISS/JBE at 00ab62d2..d7; JLE branches at
   00ab62ca and 00ab62eb test signed integer levels. NaN/runtime policy is not inferred. */

int __thiscall Lot_SelectFloorLevelBelowHeight(void *this,float *localPosition,char validateSurface)

{
  bool bVar1;
  uint uVar2;
  int iVar3;
  float10 fVar4;
  char local_48;
  undefined1 local_47;
  undefined1 local_46;
  int local_44;
  float local_40;
  LotXZLevel local_3c;
  LotXZLevel local_30;
  float fStack_24;
  float local_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  local_44 = *(int *)((int)this + 0x17c);
  iVar3 = *(int *)((int)this + 0x180);
  if (*(int *)((int)this + 0x290) != 0) {
    local_40 = DAT_00fc24d8;
    local_3c.x = *localPosition;
    local_30.z = localPosition[1];
    local_3c.z = localPosition[2];
    fStack_24 = localPosition[3];
    local_3c.level = 0;
    local_30.x = local_3c.x;
    local_30.level = (int)local_3c.z;
    if ((*(int *)((int)this + 0x408) == 1) && (*(int *)((int)this + 0x40c) == 0x50)) {
      bVar1 = true;
    }
    else {
      bVar1 = false;
      if ((*(void **)((int)this + 0x294) != (void *)0x0) &&
         ((((0.0 <= local_3c.x && (local_3c.x <= (float)*(int *)((int)this + 0x174))) &&
           (0.0 <= local_3c.z)) && (local_3c.z <= (float)*(int *)((int)this + 0x178))))) {
        local_20 = local_3c.x;
        fStack_1c = local_30.z;
        fStack_18 = local_3c.z;
        fStack_14 = fStack_24;
        fVar4 = LotTerrainHeight_SampleLocalXZ(*(void **)((int)this + 0x294),local_3c.x,local_3c.z);
        local_40 = (float)(fVar4 + (float10)_DAT_01183ee4);
      }
    }
    local_20 = *localPosition;
    fStack_1c = localPosition[1];
    fStack_18 = localPosition[2];
    fStack_14 = localPosition[3];
    if (local_44 <= iVar3) {
      do {
        local_3c.level = iVar3;
        fVar4 = LotLevelHeight_SampleLocalPosition(*(void **)((int)this + 0x290),&local_3c);
        if ((fVar4 < (float10)fStack_1c + (float10)_DAT_01183ee4) &&
           ((iVar3 < 1 || (local_40 < fStack_1c)))) {
          if (validateSurface == '\0') {
            return iVar3;
          }
          if ((bVar1) && (iVar3 < 2)) {
            return iVar3;
          }
          local_48 = (char)(int)local_3c.x;
          local_30.level = local_3c.level + 1;
          local_47 = (undefined1)(int)local_3c.z;
          local_46 = (undefined1)local_3c.level;
          local_30.x = local_3c.x;
          local_30.z = local_3c.z;
          uVar2 = LotLevelSurface_TestCellMask(*(void **)((int)this + 0x290),&local_48,0xf,1);
          if (((char)uVar2 != '\0') &&
             (uVar2 = Lot_TestLowerLevelPropertyAtPosition(this,&local_30), (char)uVar2 == '\0')) {
            return iVar3;
          }
        }
        iVar3 = iVar3 + -1;
        if (iVar3 < local_44) {
          return local_44;
        }
      } while( true );
    }
  }
  return local_44;
}

