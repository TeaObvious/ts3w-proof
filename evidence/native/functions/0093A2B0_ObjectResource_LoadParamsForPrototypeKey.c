/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 original static instructions. cdecl2DWORDargs/RET; lowALresult. Copy16bytekey.
   OBJK02DC343F loads directly through72F140service virtual0 with IID02DC3450/output; OBJD319E4F1D
   uses live catalogC8EBB0 then copies product+88/+8C/+90/+94 key.
   Otherfamilies/missingcatalogproduct false. It does not reparse OBJD in this body or select
   exclusive renderer. Full genericresource precedence/lifetime remains resource-service contract.
    */

uint __cdecl ObjectResource_LoadParamsForPrototypeKey(uint *param_1,undefined4 param_2)

{
  int iVar1;
  undefined4 *puVar2;
  uint uVar3;
  uint local_10;
  uint local_c;
  uint local_8;
  uint local_4;
  
  local_10 = *param_1;
  local_c = param_1[1];
  local_8 = param_1[2];
  local_4 = param_1[3];
  if (local_8 == 0x2dc343f) {
LAB_0093a322:
    puVar2 = (undefined4 *)FUN_0072f140();
    uVar3 = (**(code **)*puVar2)(&local_10,0x2dc3450,param_2);
    return uVar3;
  }
  if ((local_8 == 0x319e4f1d) && (DAT_011ee034 != (void *)0x0)) {
    iVar1 = ObjectCatalog_FindByTypedKey(DAT_011ee034,param_1);
    param_1 = (uint *)0x0;
    if (iVar1 != 0) {
      local_10 = *(uint *)(iVar1 + 0x88);
      local_c = *(uint *)(iVar1 + 0x8c);
      local_8 = *(uint *)(iVar1 + 0x90);
      local_4 = *(uint *)(iVar1 + 0x94);
      goto LAB_0093a322;
    }
  }
  return (uint)param_1 & 0xffffff00;
}

