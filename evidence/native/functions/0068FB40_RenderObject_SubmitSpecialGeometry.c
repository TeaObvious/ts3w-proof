/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 mesh-state instruction contract. cdecl same callback context. Selected-state
   pointer is tested but both branches call identical owner-based0060F810; it does not substitute
   selected indexed ranges here. Shares declaration/two-stream/indices setup. Exact specialized
   command semantics remain outside this selected state contract. */

void __cdecl RenderObject_SubmitSpecialGeometry(RenderDrawCallbackContext12 *context)

{
  void *pvVar1;
  void *this;
  uint uVar2;
  uint *puVar3;
  
  this = DAT_011cfcc8;
  pvVar1 = context->renderObject;
  if ((*(int *)((int)pvVar1 + 0x20) == 0) && (*(int *)((int)pvVar1 + 0x18) != 0)) {
    FUN_0060f5f0(DAT_011cfcc8,*(int *)((int)pvVar1 + 0x18));
    uVar2 = 0;
    puVar3 = (uint *)((int)pvVar1 + 0xc);
    do {
      if (puVar3[-2] != 0) {
        FUN_0060f660(this,uVar2,puVar3[-2],*puVar3,
                     *(uint *)(*(int *)(*(int *)((int)pvVar1 + 0x18) + 0x20) + (-0xc - (int)pvVar1)
                              + (int)puVar3));
      }
      uVar2 = uVar2 + 1;
      puVar3 = puVar3 + 1;
    } while (uVar2 < 2);
    FUN_0060f730(this,*(int *)((int)pvVar1 + 0x14));
    if (context->state != (GeometryState20 *)0x0) {
      FUN_0060f810(this,*(int *)((int)pvVar1 + 0x38));
      return;
    }
    FUN_0060f810(this,*(int *)((int)pvVar1 + 0x38));
  }
  return;
}

