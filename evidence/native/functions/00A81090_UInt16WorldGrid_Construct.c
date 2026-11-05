/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 ECXgrid+allocationTag RET4 EAXthis (MOV EAX,ECX atA81094). Same raw32byte header/vector
   layout as byte variant but ushortelements, vtable1063210 verified[ABA310,A82D40,A82E20]. No
   minimum/origin field is stored here: lot live signedminimum supplies addressing origin. */

undefined * __thiscall UInt16WorldGrid_Construct(void *this,char *allocationTag)

{
  *(undefined4 *)((int)this + 4) = 0;
  *(undefined4 *)((int)this + 8) = 0;
  *(undefined4 *)((int)this + 0xc) = 0;
  *(undefined ***)this = &PTR_FUN_01063210;
  if (allocationTag == (char *)0x0) {
    allocationTag = "EASTL";
  }
  *(undefined4 *)((int)this + 0x10) = 0;
  *(undefined4 *)((int)this + 0x14) = 0;
  *(undefined4 *)((int)this + 0x18) = 0;
  *(char **)((int)this + 0x1c) = allocationTag;
  return this;
}

