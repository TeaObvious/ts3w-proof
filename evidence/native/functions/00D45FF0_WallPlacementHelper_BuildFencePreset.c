/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 ECX helper + productKey pointer/presetId DWORD, RET8 void. Global product lookup C8E760
   uses allowDefault1. Nonnull product and C94AC0 combined preset count>0 gate A63B20(lot
   athelper+8, productKey,presetId, outputhelper+10). The supplied number is a FULL PRESET ID
   resolved byC94780, not assumed vector ordinal. Actual default caller D3AEC6 supplies C94510's
   FIRST AUTHORED ID when incoming diffuse/specular/design key type lanes are all0. A selector can
   also receive a custom ID; this is not a proof that authored catalogs contain the entire native
   preset bank. */

void __thiscall WallPlacementHelper_BuildFencePreset(void *this,uint *productKey,uint presetId)

{
  void *this_00;
  uint uVar1;
  
  this_00 = ProductCatalog_LookupFenceProduct(DAT_011ee034,productKey,1);
  if (this_00 != (void *)0x0) {
    uVar1 = FenceProduct_CountPresetRows(this_00);
    if (uVar1 != 0) {
      FencePreset_BuildForProductKey
                (*(int *)((int)this + 8),productKey,presetId,(void *)((int)this + 0x10));
    }
  }
  return;
}

