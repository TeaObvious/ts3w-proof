/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst: original PC 1.67 portal contract. Full64 GUID lookup in graph lot map. Returns borrowed
   lot-graph pointer ornull; +0x8f lock callback activation is consumed by directional portal
   permission. */

void * __thiscall LotRouteGraph_FindLotByGuid(void *this,ulonglong lotId)

{
  undefined4 uVar1;
  void *pvVar2;
  
  uVar1 = LotRouting_HasAdmittedLotRecord(this,(uint)lotId,lotId._4_4_);
  if ((char)uVar1 == '\0') {
    return (void *)0x0;
  }
  pvVar2 = (void *)FUN_0062f2d0((void *)((int)this + 0x48),(uint *)&lotId);
  return pvVar2;
}

