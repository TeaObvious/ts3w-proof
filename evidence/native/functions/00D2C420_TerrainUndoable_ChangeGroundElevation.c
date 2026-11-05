/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 thiscallfivephysicalwordsRET14hexALBoolean. NullboundlotB0fails;setsokouttrue,forms
   signedBYTEtileX/Z,level0;CB0710 actualrulecheck using1190734 BEFOREcharge. Refusalkeepsoktrue
   andreturnsfalse. Admission D2BE20signedtarget-oldheight;failure setsokfalse.
   SuccesscapturesfirstvertexD2C330,appliesD223F0with1190730,appendsnewchangedcoordinateonlyfirsttime,returnsAL1.
   Fullheight/cost/state/publicationownership notestablishedbyscalarresponseonly. */

bool __thiscall
TerrainUndoable_ChangeGroundElevation
          (void *this,int sampleX,int sampleZ,float targetHeight,undefined *ok,undefined *errors)

{
  int iVar1;
  int iVar2;
  undefined *puVar3;
  char cVar4;
  bool bVar5;
  int iVar6;
  undefined1 uVar7;
  int local_8;
  int local_4;
  
  puVar3 = ok;
  iVar2 = sampleX;
  if (*(int *)((int)this + 0xb0) == 0) {
    return false;
  }
  *ok = 1;
  uVar7 = (undefined1)sampleX;
  sampleX._0_3_ = (uint3)CONCAT11((undefined1)sampleZ,uVar7);
  cVar4 = FUN_00cb0710(*(void **)((int)this + 0xb0),(char *)&sampleX,targetHeight,DAT_01190734,
                       errors,0,0);
  if (cVar4 != '\0') {
    iVar6 = *(int *)(*(int *)((int)this + 0xb0) + 0x290);
    iVar1 = *(int *)(iVar6 + 0x24);
    bVar5 = TerrainUndoable_ChargeHeightDifference
                      (this,targetHeight -
                            *(float *)(*(int *)(iVar1 + 0x10) +
                                      ((((int)sampleX._2_1_ - *(int *)(iVar6 + 0x10)) *
                                        *(int *)(iVar1 + 4) + (int)(char)sampleX) *
                                       *(int *)(iVar1 + 8) + (int)sampleX._1_1_) * 4));
    if (bVar5) {
      iVar6 = FUN_00d2c330(this,iVar2,sampleZ,1);
      FUN_00d223f0(this,&sampleX,targetHeight,0.0,0.0,(uint *)&DAT_01190730,0,0,1);
      if ((*(byte *)(iVar6 + 0x10) & 1) == 0) {
        *(byte *)(iVar6 + 0x10) = *(byte *)(iVar6 + 0x10) | 1;
        local_8 = iVar2;
        local_4 = sampleZ;
        FUN_007def20((void *)((int)this + 0x114),&local_8);
      }
      return true;
    }
    *puVar3 = 0;
  }
  return false;
}

