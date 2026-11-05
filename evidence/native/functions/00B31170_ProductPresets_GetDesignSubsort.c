/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 thiscall manager plus one FULLUInt32 presetID RET4, fullEAX subsort. Existing
   critical-section28 guards selection. If productA4 exists and ID!=FFFFFFFF, delegatesC99BD0;
   IDFFFFFFFF selects active design keyB8 when its typeC0 is nonzero, resolves
   resource/interface05DE1935, calls00410500, releases before unlock and returns unchangedUInt32.
   Missing source/lookup returns0 AFTER unlock. This0 is not constructor field default2. Genuine C
   may alias resource output and ID stackword across virtual calls; these are not a pointer-typed
   public ID contract. */

uint __thiscall ProductPresets_GetDesignSubsort(void *this,uint presetId)

{
  LPCRITICAL_SECTION this_00;
  char cVar1;
  int *piVar2;
  uint uVar3;
  
  this_00 = (LPCRITICAL_SECTION)((int)this + 0x28);
  FUN_004e1c00(this_00,(uint *)&DAT_0106c8a4);
  if (*(void **)((int)this + 0xa4) != (void *)0x0) {
    if (presetId != 0xffffffff) {
      uVar3 = PatternProduct_GetPresetSubsortMask(*(void **)((int)this + 0xa4),presetId);
      FUN_004e1cc0(this_00);
      return uVar3;
    }
    if (*(int *)((int)this + 0xc0) != 0) {
      piVar2 = (int *)FUN_004afe80();
      cVar1 = (**(code **)(*piVar2 + 0xc))((int)this + 0xb8,&presetId,0,0,0,0);
      if (cVar1 != '\0') {
        if ((presetId != 0) &&
           (piVar2 = (int *)(**(code **)(*(int *)presetId + 0xc))(0x5de1935), piVar2 != (int *)0x0))
        {
          uVar3 = UInt32Field5C_Get(piVar2);
          (**(code **)(*piVar2 + 4))();
          FUN_004e1cc0(this_00);
          return uVar3;
        }
        (**(code **)(*(int *)presetId + 4))();
      }
    }
  }
  FUN_004e1cc0(this_00);
  return 0;
}

