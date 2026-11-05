/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 original DBPF role: Provider vtable+64 factory allocates48 bytes, constructs
   through4ABF40, and returns the resulting index or null. No allocation/body change. */

undefined4 __fastcall PackedFile_CreateModifiableIndex(int param_1)

{
  undefined4 *this;
  undefined4 uVar1;
  
  this = FUN_004e4300(0x30,*(int **)(param_1 + 0x10),
                      "ResourceSystem/ResourceMan/PackedFile/IndexModifiable");
  if (this != (undefined4 *)0x0) {
    uVar1 = DbpfIndex_InitializeModifiable(this,*(undefined4 *)(param_1 + 0x10));
    return uVar1;
  }
  return 0;
}

