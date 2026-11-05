/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: original PC 1.67 portal contract. Full64 GUID lookup in graph lot map. Returns borrowed
   lot-graph pointer ornull; +0x8f lock callback activation is consumed by directional portal
   permission. */

void * __thiscall LotRouteGraph_FindLotByGuid(void *this,ulonglong lotId)

{
  undefined4 uVar1;
  void *pvVar2;
  
  uVar1 = FUN_00629360(this,(uint)lotId,lotId._4_4_);
  if ((char)uVar1 == '\0') {
    return (void *)0x0;
  }
  pvVar2 = (void *)FUN_0062f2d0((void *)((int)this + 0x48),(uint *)&lotId);
  return pvVar2;
}

