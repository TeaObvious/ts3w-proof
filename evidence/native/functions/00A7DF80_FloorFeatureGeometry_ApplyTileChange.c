/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst contract (original PC1.67; instruction-checked selected branches): ECX=this; stack x, z,
   on, mask (low byte/word roles). Drawn-column UInt64 test uses zero-extended z with the 64-bit
   shift helper. LotLevelSurface_TestCellMask with mask0F gates on-fades; admitted on
   starts/replaces exact x/z/mask fade, marks a newly drawn tile dirty and sets bit. Other changes
   start an off-fade only if already drawn. Caller is responsible for valid coordinates. No gameplay
   puddle admission or evaporation alarm is implemented here. */

void __thiscall
FloorFeatureGeometry_ApplyTileChange
          (void *this,int param_1,undefined4 param_2,char param_3,undefined4 param_4)

{
  uint *puVar1;
  undefined4 uVar2;
  undefined1 uVar3;
  uint uVar4;
  uint uVar5;
  byte bVar6;
  uint uVar7;
  longlong lVar8;
  
  bVar6 = (byte)param_2;
  lVar8 = __allshl(bVar6,0);
  uVar2 = param_2;
  uVar7 = (uint)((ulonglong)lVar8 >> 0x20);
  uVar4 = (uint)lVar8;
  puVar1 = (uint *)(*(int *)((int)this + 0x214) + param_1 * 8);
  uVar3 = (undefined1)param_1;
  param_2._3_1_ = SUB41(uVar2,3);
  param_2._0_3_ = CONCAT12(*(undefined1 *)((int)this + 0x2a0),CONCAT11(bVar6,uVar3));
  uVar5 = LotLevelSurface_TestCellMask
                    (*(void **)(*(int *)(*(int *)((int)this + 0x29c) + 0x18) + 0x290),
                     (char *)&param_2,0xf,1);
  if (((char)uVar5 != '\0') && (param_3 != '\0')) {
    FloorFeatureGeometry_StartFade(this,uVar3,bVar6,1,(short)param_4);
    if ((*puVar1 & uVar4) == 0 && (puVar1[1] & uVar7) == 0) {
      *(undefined1 *)((int)this + 0x210) = 1;
    }
    *puVar1 = *puVar1 | uVar4;
    puVar1[1] = puVar1[1] | uVar7;
    return;
  }
  if ((*puVar1 & uVar4) != 0 || (puVar1[1] & uVar7) != 0) {
    FloorFeatureGeometry_StartFade(this,uVar3,bVar6,0,(short)param_4);
  }
  return;
}

