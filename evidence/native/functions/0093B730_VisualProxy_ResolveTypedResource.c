/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static; analyst-assigned name. Physical cdecl source16-byte key
   pointer, UInt32 type, writable16-byte key pointer; plainRET, AL Boolean only. Gets global
   resource manager4AFE80; manager virtual+C receives(sourceKey,&resource,0,0,0,0). On successful
   load query resource virtual+C for interfaceB7B8BAAF, retain via interface virtual0, call93B6A0
   for physical first requested-type key, then release interface/resource via virtual+4. Manager
   missing/load failure returnsAL0 after cleanup. This is resource loading plus typed proxy
   traversal, not a key cast. A successful manager load is assumed to supply the requested
   interface: missing resource/query result is passed as null into93B6A0, whose body dereferences
   it. No generic safe-null fallback is invented. */

bool __cdecl VisualProxy_ResolveTypedResource(void *sourceKey,uint resourceType,void *outKey)

{
  char cVar1;
  bool bVar2;
  int *piVar3;
  int *piVar4;
  int *local_4;
  
  local_4 = (int *)0x0;
  piVar3 = (int *)FUN_004afe80();
  piVar4 = local_4;
  if (piVar3 != (int *)0x0) {
    if (local_4 != (int *)0x0) {
      local_4 = (int *)0x0;
      (**(code **)(*piVar4 + 4))();
    }
    cVar1 = (**(code **)(*piVar3 + 0xc))(sourceKey,&local_4,0,0,0,0);
    if (cVar1 != '\0') {
      if (local_4 == (int *)0x0) {
        piVar4 = (int *)0x0;
      }
      else {
        piVar4 = (int *)(**(code **)(*local_4 + 0xc))(0xb7b8baaf);
        if (piVar4 != (int *)0x0) {
          (**(code **)*piVar4)();
        }
      }
      bVar2 = VisualProxy_FindFirstResourceOfType(piVar4,resourceType,outKey);
      if (piVar4 != (int *)0x0) {
        (**(code **)(*piVar4 + 4))();
      }
      if (local_4 != (int *)0x0) {
        (**(code **)(*local_4 + 4))();
      }
      return bVar2;
    }
  }
  if (local_4 != (int *)0x0) {
    (**(code **)(*local_4 + 4))();
  }
  return false;
}

