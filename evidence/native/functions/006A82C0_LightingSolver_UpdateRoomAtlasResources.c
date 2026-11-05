/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Static PC1.67: ECX solver input, no consumed stack argument or incoming EDX before overwrite,
   plain RET; stored fastcall analysis remains unchanged. If byte solver+280 is0 calls6A7ED0, then
   traverses retained room nodes and conditionally updates room/resource owners. No direct allocator
   offset/limit/stride initialization; opaque descendants remain separate. */

void __fastcall LightingSolver_UpdateRoomAtlasResources(int *param_1)

{
  int *piVar1;
  int iVar2;
  int iVar3;
  void *pvVar4;
  int *piVar5;
  
  if ((char)param_1[0xa0] == '\0') {
    LightingSolver_RefreshRoomAtlasTiles(param_1);
  }
  piVar5 = (int *)param_1[0x8d];
  iVar2 = piVar5[param_1[0x8e]];
  iVar3 = *piVar5;
  if (iVar3 == 0) {
    piVar5 = piVar5 + 1;
    iVar3 = *piVar5;
    while (iVar3 == 0) {
      piVar5 = piVar5 + 1;
      iVar3 = *piVar5;
    }
    iVar3 = *piVar5;
  }
  while (iVar3 != iVar2) {
    pvVar4 = *(void **)(iVar3 + 0x10);
    if ((pvVar4 != (void *)0x0) && (*(void **)(*param_1 + 0xd4) != (void *)0x0)) {
      FUN_006c5640(*(void **)(*param_1 + 0xd4),param_1[0x24],param_1[0x25],param_1[0x22],pvVar4);
      FUN_006a3eb0(pvVar4);
    }
    iVar3 = *(int *)(iVar3 + 0x80);
    while (iVar3 == 0) {
      piVar1 = piVar5 + 1;
      piVar5 = piVar5 + 1;
      iVar3 = *piVar1;
    }
  }
  return;
}

