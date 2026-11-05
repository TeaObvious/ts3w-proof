/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 mesh-state instruction contract. cdecl callback context12, firstword
   renderObject,second selectedstate,thirdpacket retained byproducer. Binds declaration/two streams
   and indices. Indexed path uses selected+4 startIndex,+8 minVertexIndex,+C vertexCount,+10
   primitiveCount, else base owner+40/+44/+48/+4C. Primitive type owner+38 and signed
   baseVertexIndex owner+3C unchanged. Nonindexed branch uses base fields, doesnot consume selected
   range; earlier packet function still zero-count-suppresses selected records. Source declaration
   supplies stride. Draw result ignored here. */

void __cdecl RenderObject_SubmitSelectedGeometryRange(RenderDrawCallbackContext12 *context)

{
  void *pvVar1;
  GeometryState20 *pGVar2;
  void *this;
  uint uVar3;
  uint *puVar4;
  uint uVar5;
  uint uVar6;
  uint uVar7;
  
  this = DAT_011cfcc8;
  pvVar1 = context->renderObject;
  if ((*(int *)((int)pvVar1 + 0x20) == 0) && (*(int *)((int)pvVar1 + 0x18) != 0)) {
    FUN_0060f5f0(DAT_011cfcc8,*(int *)((int)pvVar1 + 0x18));
    uVar3 = 0;
    puVar4 = (uint *)((int)pvVar1 + 0xc);
    do {
      uVar5 = puVar4[-2];
      if (uVar5 == 0) {
        uVar7 = 0;
        uVar6 = 0;
        uVar5 = 0;
      }
      else {
        uVar7 = *(uint *)(*(int *)(*(int *)((int)pvVar1 + 0x18) + 0x20) + (-0xc - (int)pvVar1) +
                         (int)puVar4);
        uVar6 = *puVar4;
      }
      FUN_0060f660(this,uVar3,uVar5,uVar6,uVar7);
      uVar3 = uVar3 + 1;
      puVar4 = puVar4 + 1;
    } while (uVar3 < 2);
    FUN_0060f730(this,*(int *)((int)pvVar1 + 0x14));
    if (*(int *)((int)pvVar1 + 0x14) != 0) {
      pGVar2 = context->state;
      if (pGVar2 == (GeometryState20 *)0x0) {
        uVar3 = *(uint *)((int)pvVar1 + 0x4c);
        uVar5 = *(uint *)((int)pvVar1 + 0x40);
        uVar7 = *(uint *)((int)pvVar1 + 0x48);
        uVar6 = *(uint *)((int)pvVar1 + 0x44);
      }
      else {
        uVar3 = pGVar2->primitiveCount;
        uVar5 = pGVar2->startIndex;
        uVar7 = pGVar2->vertexCount;
        uVar6 = pGVar2->minVertexIndex;
      }
      RenderDevice_SubmitIndexedRange
                (this,*(uint *)((int)pvVar1 + 0x38),*(int *)((int)pvVar1 + 0x3c),uVar6,uVar7,uVar5,
                 uVar3);
      return;
    }
    FUN_0060f790(this,*(int *)((int)pvVar1 + 0x38),*(undefined4 *)((int)pvVar1 + 0x3c),
                 *(undefined4 *)((int)pvVar1 + 0x48));
  }
  return;
}

