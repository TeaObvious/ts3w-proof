/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 original contract. ECX interface (resource+40), UInt32 material hash,out retained
   MATD pointer, RET8, ALsuccess. Hash0 invokes virtual+14 default. Nonzero uses6D7D60 exact
   first-match search; negative ordinal false leaves output unchanged. A hit writes entry+10
   pointer, retains nonnull atvirtual0, returns whether nonnull. No model-resource or geometry-range
   selection. */

bool __thiscall MaterialSetInterface_AcquireByHash(void *this,uint materialHash,void *outMaterial)

{
  undefined4 *puVar1;
  undefined1 uVar2;
  int iVar3;
  
  if (materialHash == 0) {
    uVar2 = (**(code **)(*(int *)this + 0x14))(outMaterial);
    return (bool)uVar2;
  }
  iVar3 = MaterialSetResource_FindHashOrdinal((void *)((int)this + -0x40),materialHash);
  if (iVar3 < 0) {
    return false;
  }
  puVar1 = *(undefined4 **)(*(int *)((int)this + 0x18) + 0x10 + iVar3 * 0x18);
  *(undefined4 **)outMaterial = puVar1;
  if (puVar1 != (undefined4 *)0x0) {
    (**(code **)*puVar1)();
  }
  return puVar1 != (undefined4 *)0x0;
}

