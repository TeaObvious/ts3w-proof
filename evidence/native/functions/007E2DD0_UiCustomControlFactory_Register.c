/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static. Actual caller-clean one-DWORD registration helper, return
   ignored by complete00779670 caller. Allocates8bytes through existing allocator, installs wrapper
   vtable0101C63C and writes incoming class identity at wrapper+4 when nonnull. Acquires actual
   factory service through004D8EB0 and invokes virtual+4(wrapper,0); allocation-null branch still
   invokes the service with two zeros. Exact complete body ends007E2E21; no universal
   allocation-success guarantee or invented internal registry/hash-map semantics. Existing foreign
   helper/virtual prototypes remain unchanged.
   
   Decompiler defect: actual allocator call pushes six DWORD words (8, diagnostic-label pointer, 0,
   0, 0, 0), then cleans24bytes. Displayed FUN_004E4500 three-argument C prototype is incomplete
   foreign metadata and is deliberately not changed. Complete original instructions are
   authoritative for all six words; no allocation arguments are dropped from the verified ABI. */

void __cdecl UiCustomControlFactory_Register(uint classIdentity)

{
  undefined4 *puVar1;
  int *piVar2;
  
  puVar1 = (undefined4 *)FUN_004e4500(8,"UI/Sims3CustomProxyControlFactory",0);
  if (puVar1 != (undefined4 *)0x0) {
    *puVar1 = &PTR_LAB_0101c63c;
    puVar1[1] = classIdentity;
    piVar2 = (int *)FUN_004d8eb0();
    (**(code **)(*piVar2 + 4))(puVar1,0);
    return;
  }
  piVar2 = (int *)FUN_004d8eb0();
  (**(code **)(*piVar2 + 4))(0,0);
  return;
}

