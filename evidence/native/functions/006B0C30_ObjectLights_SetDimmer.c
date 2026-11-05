/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 object Lighting instruction contract. ECX object-light manager; THREE physical
   words UInt32GUIDlow/high,floatdimmer RETC; Boolean AL. Exact GUID map lookup; integer
   iterator/sentinel checks; visits source vector node+20..24 in order. Calls thresholded source
   setter with notify1; remembers ANY ALtrue. Only if any source changed calls downstream6C4E50;
   existing object with empty sources or all no-change still returnsAL1. Missing object returnsAL0.
   No finite check here, native threshold differs exact-update host policy; complete
   dispatch/downstream lifetime unexpanded. */

bool __thiscall
ObjectLights_SetDimmer(void *this,uint objectGuidLow,uint objectGuidHigh,float dimmer)

{
  undefined4 *puVar1;
  bool bVar2;
  bool bVar3;
  int iVar4;
  undefined4 *puVar5;
  uint local_10;
  uint local_c;
  uint local_8 [2];
  
  local_10 = objectGuidLow;
  local_c = objectGuidHigh;
  FUN_00a9c810((void *)((int)this + 4),local_8,&local_10);
  if ((local_8[0] != *(uint *)(*(int *)((int)this + 8) + *(int *)((int)this + 0xc) * 4)) &&
     (local_8[0] != 0xfffffff0)) {
    puVar5 = *(undefined4 **)(local_8[0] + 0x20);
    puVar1 = *(undefined4 **)(local_8[0] + 0x24);
    bVar2 = false;
    if (puVar5 != puVar1) {
      do {
        bVar3 = LightSource_SetDimmerAboveThreshold((void *)*puVar5,dimmer,1);
        if (bVar3) {
          bVar2 = true;
        }
        puVar5 = puVar5 + 1;
      } while (puVar5 != puVar1);
      if (bVar2) {
        iVar4 = FUN_006e9640();
        FUN_006c4e50(*(void **)(iVar4 + 0xd4),objectGuidLow,objectGuidHigh);
      }
    }
    return true;
  }
  return false;
}

