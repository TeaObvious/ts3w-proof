/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static. Actual caller-clean one-UInt32 identity unregister helper;
   ignored output. Acquires factory service, virtual+14 lookup(identity); only nonnull result is
   removed through service virtual+8, then wrapper virtual0(1). Ordering is lookup then removal then
   destruction. Complete body ends007E2C73; no managed constructor registry/pool policy is inferred
   here. */

void __cdecl UiCustomControlFactory_Unregister(uint classIdentity)

{
  int *piVar1;
  undefined4 *puVar2;
  
  piVar1 = (int *)FUN_004d8eb0();
  puVar2 = (undefined4 *)(**(code **)(*piVar1 + 0x14))(classIdentity);
  if (puVar2 != (undefined4 *)0x0) {
    (**(code **)(*piVar1 + 8))(puVar2);
    (**(code **)*puVar2)(1);
  }
  return;
}

