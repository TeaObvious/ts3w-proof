/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 fence resource/renderer and resolved virtual contract): ECX renderer; RET10
   four physical slots: product key pointer, six-byte WallLocator pointer, design/compositor words
   pointer, byte flag. Product lookup C8E760 with default flag1. Compare locator endpoint X/Z
   equality: axis-aligned uses getter C969D0, diagonal uses6AB290. Fetch product height offset
   C94480 and product+E0 flag; invoke A6B020 with actual wall locator. No FencePostLayer endpoint
   epsilon join or frontend row-confidence tier occurs here. */

void __thiscall
FenceRenderer_AddFenceRail
          (void *this,void *productKey,char *wallLocator6,void *designWords,byte flag)

{
  void *pvVar1;
  undefined4 *puVar2;
  byte flag6;
  float10 fVar3;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  pvVar1 = ProductCatalog_LookupFenceProduct(DAT_011ee034,productKey,1);
  if ((wallLocator6[3] == *wallLocator6) || (wallLocator6[4] == wallLocator6[1])) {
    puVar2 = (undefined4 *)FUN_00c969d0((int)pvVar1);
  }
  else {
    puVar2 = (undefined4 *)FUN_006ab290((int)pvVar1);
  }
  local_10 = *puVar2;
  local_c = puVar2[1];
  local_8 = puVar2[2];
  local_4 = puVar2[3];
  flag6 = *(int *)((int)pvVar1 + 0xe0) != 0;
  fVar3 = FUN_00c94480((int)pvVar1);
  FenceRenderer_AddRailSceneModel
            (this,&local_10,productKey,wallLocator6,designWords,(float)fVar3,flag6,flag);
  return;
}

