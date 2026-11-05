/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 roof numeric instruction contract. thiscall ECX destination plus NINE 4-byte stack
   words; RET 0x24 cleans 36 bytes. Returns original this in EAX. Stores selected input
   fields/vtable 010734EC. Height owner's first word supplies grid storage; obtains height deltas
   for constructor's triangle. Calls MeshBuilder helper 006D0CE0 with normal index and writable
   normal+0x30; if AL is false forms fallback cross-product lanes from deltas/unit axes. ALWAYS
   calls the conditional approximately-45-degree frame adjuster afterward. No universal native
   vector normalization here. Full MeshBuilder channel producer/lifetime remains unexpanded static
   research; current source cross products and fixed lighting normals are separate comparisons. */

void * __thiscall
RoofPolygon_ConstructTriangleBase
          (void *this,uint normalIndex,void *meshBuilder,uint field0C,uint gridStride,uint field14,
          int cellX,int cellZ,uint field20,void *heightOwner)

{
  float *normal4;
  int iVar1;
  float fVar2;
  undefined4 uVar3;
  int iVar4;
  float fVar5;
  float fVar6;
  
  fVar2 = FLOAT_00f998f8;
  *(uint *)((int)this + 4) = normalIndex;
  *(int *)((int)this + 0x1c) = cellZ;
  *(void **)((int)this + 8) = meshBuilder;
  *(uint *)((int)this + 0x14) = field14;
  *(uint *)((int)this + 0xc) = field0C;
  *(uint *)((int)this + 0x20) = field20;
  *(int *)((int)this + 0x18) = cellX;
  *(void **)((int)this + 0x24) = heightOwner;
  *(undefined ***)this = &PTR_FUN_010734ec;
  *(uint *)((int)this + 0x10) = gridStride;
  iVar1 = *(int *)heightOwner;
  iVar4 = gridStride * cellZ + cellX;
  fVar6 = *(float *)(iVar1 + iVar4 * 4);
  fVar5 = *(float *)(iVar1 + 4 + ((cellZ + 1) * gridStride + cellX) * 4) - fVar6;
  fVar6 = *(float *)(iVar1 + iVar4 * 4 + 4) - fVar6;
  normal4 = (float *)((int)this + 0x30);
  uVar3 = FUN_006d0ce0(meshBuilder,normalIndex,normal4);
  if ((char)uVar3 == '\0') {
    *normal4 = fVar5 * 0.0 - fVar6 * fVar2;
    *(float *)((int)this + 0x34) = fVar2 * fVar2 - fVar2 * 0.0;
    *(float *)((int)this + 0x38) = fVar6 * fVar2 - fVar2 * fVar5;
    *(float *)((int)this + 0x3c) = fVar2 * fVar2 - fVar2 * fVar2;
  }
  RoofPolygon_AdjustDiagonalNormalFrame(normal4);
  return this;
}

