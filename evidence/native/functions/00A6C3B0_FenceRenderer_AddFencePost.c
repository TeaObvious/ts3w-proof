/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 fence resource/renderer and resolved virtual contract): ECX renderer; RET10
   four physical slots: product key pointer, LotXZLevel pointer, design/compositor words pointer,
   byte flag. Product lookup C8E760(default1), post model getter C94460; only nonzero model type
   lane continues. Fetch product height offset and +E0 flag, then A6B510 with the same
   floatX,floatZ,signedInt32level pointer. Additional product virtual+24 and optional lot+254
   callback B254A0 preserved. Posts and rail wall locators are distinct original input authorities.
    */

void __thiscall
FenceRenderer_AddFencePost
          (void *this,void *productKey,LotXZLevel *location,void *designWords,byte flag)

{
  void *this_00;
  char cVar1;
  int *piVar2;
  undefined4 *puVar3;
  byte flag6;
  float10 fVar4;
  undefined4 local_10;
  undefined4 local_c;
  int local_8;
  undefined4 local_4;
  
  local_10 = 0;
  local_c = 0;
  local_8 = 0;
  local_4 = 0;
  piVar2 = ProductCatalog_LookupFenceProduct(DAT_011ee034,productKey,1);
  puVar3 = (undefined4 *)FUN_00c94460((int)piVar2);
  local_10 = *puVar3;
  local_c = puVar3[1];
  local_8 = puVar3[2];
  local_4 = puVar3[3];
  if (local_8 != 0) {
    flag6 = piVar2[0x38] != 0;
    fVar4 = FUN_00c94480((int)piVar2);
    FenceRenderer_AddPostSceneModel
              (this,&local_10,productKey,location,designWords,(float)fVar4,flag6,flag);
    cVar1 = (**(code **)(*piVar2 + 0x24))();
    if ((cVar1 == '\0') &&
       (this_00 = *(void **)(*(int *)((int)this + 4) + 0x254), this_00 != (void *)0x0)) {
      FUN_00b254a0(this_00,&location->x);
    }
  }
  return;
}

