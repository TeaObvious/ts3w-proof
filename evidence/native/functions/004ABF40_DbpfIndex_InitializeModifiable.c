/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 original DBPF role: Initialize index state, hash storage and concrete
   vtable00FB3920. Exact lookup+28, assignment+2C, removal+30, raw read+34, write+38. ABI/body
   unchanged. */

void __thiscall DbpfIndex_InitializeModifiable(void *this,undefined4 param_1)

{
  float fVar1;
  
  fVar1 = FLOAT_00f998f8;
  *(undefined ***)this = &PTR_FUN_00fb3920;
  *(undefined4 *)((int)this + 4) = param_1;
  *(float *)((int)this + 0x18) = fVar1;
  *(undefined4 *)((int)this + 0x1c) = DAT_0103fd88;
  *(undefined4 *)((int)this + 0x24) = param_1;
  *(undefined4 *)((int)this + 0x28) = 0;
  *(char **)((int)this + 0x2c) = "ResourceSystem/ResourceMan/PackedFile/IndexMap";
  *(undefined4 *)((int)this + 0x10) = 1;
  *(undefined4 **)((int)this + 0xc) = &DAT_0114d900;
  *(undefined4 *)((int)this + 0x14) = 0;
  *(undefined4 *)((int)this + 0x20) = 0;
  return;
}

