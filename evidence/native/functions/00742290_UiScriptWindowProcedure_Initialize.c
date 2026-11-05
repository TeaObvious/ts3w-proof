/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static. ECX allocated0x40-byte procedure, two incoming DWORDs/RET
   8, EAX returns receiver. Installs primary010021C8 (virtual 0x18 is742320) and secondary010021AC;
   initializes set state/count, aggregate mask +0x30=0 and attached window +34=0. Stores second word
   Host +38 and first registry+3C. Fields+20/+24 are exact float1 and2 fromF998F8/103FD88. This
   producer establishes actual retained registry/window/host relationships; not a CLR context or
   original public type declaration. */

void * __thiscall UiScriptWindowProcedure_Initialize(void *this,void *registry,void *host)

{
  float fVar1;
  
  fVar1 = FLOAT_00f998f8;
  *(undefined ***)((int)this + 4) = &PTR_LAB_00fbb1fc;
  *(undefined4 *)((int)this + 8) = 0;
  *(undefined1 *)((int)this + 0xc) = 0;
  *(undefined ***)this = &PTR_CountedReference_Retain_010021c8;
  *(undefined ***)((int)this + 4) = &PTR_LAB_010021ac;
  *(float *)((int)this + 0x20) = fVar1;
  *(undefined4 *)((int)this + 0x24) = DAT_0103fd88;
  *(char **)((int)this + 0x2c) = "Scripting/EventTypeSet";
  *(undefined4 *)((int)this + 0x1c) = 0;
  *(undefined4 *)((int)this + 0x28) = 0;
  *(undefined4 *)((int)this + 0x18) = 1;
  *(undefined4 **)((int)this + 0x14) = &DAT_0114d900;
  *(undefined4 *)((int)this + 0x30) = 0;
  *(undefined4 *)((int)this + 0x34) = 0;
  *(void **)((int)this + 0x38) = host;
  *(void **)((int)this + 0x3c) = registry;
  return this;
}

