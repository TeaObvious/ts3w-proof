/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Physical ECX tool, one base-constructor argument DWORD, RET4; EAX receiver. Calls CD34D0 before
   derived initialization, installs vtable01084CB0, clears selection/multi flags, hover5C=FFFFFFFF
   and acceptedY68=-100. Distinct from nearby undefined D0E9E0 four-byte flag getter. Native
   tool-manager reuse across activations remains outside the selected body. */

void * __thiscall RoofPitch_Construct(void *this,undefined4 param_1)

{
  float fVar1;
  
  FUN_00cd34d0(this,param_1);
  fVar1 = FLOAT_00f998f8;
  *(undefined ***)this = &PTR_FUN_01084cb0;
  *(undefined ***)((int)this + 8) = &PTR_LAB_010831ac;
  *(undefined4 *)((int)this + 0x34) = 0;
  *(float *)((int)this + 0x48) = fVar1;
  *(undefined4 *)((int)this + 0x4c) = DAT_0103fd88;
  *(char **)((int)this + 0x54) = "World/UserToolRoofPitch/RoofIDSet";
  *(undefined4 *)((int)this + 0x44) = 0;
  *(undefined4 *)((int)this + 0x50) = 0;
  *(undefined4 *)((int)this + 0x40) = 1;
  *(undefined4 **)((int)this + 0x3c) = &DAT_0114d900;
  *(undefined1 *)((int)this + 0x58) = 0;
  *(undefined1 *)((int)this + 0x59) = 0;
  *(undefined4 *)((int)this + 0x5c) = 0xffffffff;
  *(undefined4 *)((int)this + 0x68) = 0xffffff9c;
  return this;
}

