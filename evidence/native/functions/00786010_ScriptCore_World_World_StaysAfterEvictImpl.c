/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163b18 (original PC1.67 TS3W.exe).
   ScriptCore.World::World_StaysAfterEvictImpl [assembly=ScriptCore token=0x06000865; objId:
   System.UInt64; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst note (PC1.67 catalog/template instruction contract): Existing managed registration
   identity preserved. Physicalcdecl UInt64 objectID aslow/highstackwords; ALboolreturn plainRET.
   Find borrowed object in registry, key+18 resolvesC8EBB0, return product+A8 movement bit1. Null
   registry/object/product returnsAL0. This independent consumer establishes movement-word meaning,
   not object-bit masks or gameplay household policy. */

bool __cdecl ScriptCore_World__World_StaysAfterEvictImpl(uint objectIdLow,uint objectIdHigh)

{
  void *pvVar1;
  int iVar2;
  
  pvVar1 = ObjectRegistry_GetGlobal();
  if (pvVar1 != (void *)0x0) {
    pvVar1 = ObjectRegistry_FindBorrowed(pvVar1,CONCAT44(objectIdHigh,objectIdLow));
    if (pvVar1 != (void *)0x0) {
      iVar2 = ObjectCatalog_FindByTypedKey(DAT_011ee034,(uint *)((int)pvVar1 + 0x18));
      if (iVar2 != 0) {
                    /* Analyst: Movement word+A8 bit1 is the stays-after-eviction result. */
        return (bool)((byte)(*(uint *)(iVar2 + 0xa8) >> 1) & 1);
      }
    }
  }
  return false;
}

