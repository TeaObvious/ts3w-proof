/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 object sound admission. ECX=16-byte-aligned80-byte component storage, ownerObject
   RET4, returns SAME storage EAX. Writes owner4/vtable0, clears vector10..1F, word48 and
   bytes4C/4D; vector begin20=end24=inline34, capacity28=inline34+20 (ONE row), inline
   pointer30=inline34. Alloc label2C final1044608. No eight-row preallocation: cap8 is independent
   admission policy. Untouched fields are not asserted zero. Byte4C starts inactive. */

void * __thiscall ObjectSound_ConstructComponent(void *this,void *ownerObject)

{
  int iVar1;
  
  *(void **)((int)this + 4) = ownerObject;
  *(undefined ***)this = &PTR_LAB_01044628;
  *(char **)((int)this + 0x2c) = "EASTL";
  iVar1 = (int)this + 0x34;
  *(int *)((int)this + 0x30) = iVar1;
  *(int *)((int)this + 0x24) = iVar1;
  *(int *)((int)this + 0x20) = iVar1;
  *(int *)((int)this + 0x28) = (int)this + 0x48;
  *(char **)((int)this + 0x2c) = "EASTL fixed_vector";
  *(undefined4 *)((int)this + 0x48) = 0;
  *(undefined1 *)((int)this + 0x4c) = 0;
  *(undefined1 *)((int)this + 0x4d) = 0;
  *(undefined4 *)((int)this + 0x10) = 0;
  *(undefined4 *)((int)this + 0x14) = 0;
  *(undefined4 *)((int)this + 0x18) = 0;
  *(undefined4 *)((int)this + 0x1c) = 0;
  *(char **)((int)this + 0x2c) = "Audio/AudioComponent/Instances";
  return this;
}

