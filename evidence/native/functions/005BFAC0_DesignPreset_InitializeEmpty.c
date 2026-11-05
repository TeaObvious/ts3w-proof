/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst role, original PC1.67. ECX newly allocated preset owner; initializes intrusive reference
   field, null lists and empty native UTF16 preset string, then final preset vtable. No parsing or
   selected saved preset content is installed by this constructor. Missing-CASP replacement
   in005E9DA0 uses it to replace saved preset state.
   
   PC1.67 instruction-verified constructor ABI: ECX receiver, no stack arguments/plainRET, fullEAX
   returns SAME receiver (MOV EAX,ECX atentry). Reader005C015A consumes that EAX as newly
   initialized preset; this is not void. Field5C is initialized to2 at005BFB1B. This constructor
   default differs from lookup-failure0 and from saved header values; no range masking is applied.
   Existing empty tree and intrusive reference initialization remain as annotated. */

undefined * __thiscall DesignPreset_InitializeEmpty(void *this)

{
  *(undefined ***)this = &PTR_FUN_00fb3c14;
  LOCK();
  *(undefined4 *)((int)this + 4) = 0;
  UNLOCK();
  *(undefined4 *)((int)this + 8) = 0;
  *(undefined4 *)((int)this + 0xc) = 0;
  *(undefined4 *)((int)this + 0x10) = 0;
  *(undefined4 *)((int)this + 0x14) = 0;
  *(undefined4 *)((int)this + 0x20) = 0;
  *(undefined4 *)((int)this + 0x24) = 0;
  *(undefined4 *)((int)this + 0x1c) = 0;
  *(undefined4 *)((int)this + 0x18) = 0;
  *(undefined ***)this = &PTR_FUN_00fe3b00;
  *(undefined4 *)((int)this + 0x28) = 0;
  *(char **)((int)this + 0x38) = "CAS/DesignModePresetResource/mPresetXml";
  *(undefined2 **)((int)this + 0x34) = &DAT_011c8e56;
  *(undefined1 **)((int)this + 0x2c) = &DAT_011c8e54;
  *(undefined1 **)((int)this + 0x30) = &DAT_011c8e54;
  *(undefined4 *)((int)this + 0x3c) = 0;
  *(undefined4 *)((int)this + 0x40) = 0;
  *(undefined4 *)((int)this + 0x44) = 0;
  *(char **)((int)this + 0x48) = "CAS/DesignModePresetResource/RegdCompositors";
  *(undefined4 *)((int)this + 0x5c) = 2;
  *(undefined4 *)((int)this + 0x4c) = 0;
  *(undefined4 *)((int)this + 0x50) = 0;
  *(undefined4 *)((int)this + 0x54) = 0;
  *(undefined4 *)((int)this + 0x58) = 0;
  return this;
}

