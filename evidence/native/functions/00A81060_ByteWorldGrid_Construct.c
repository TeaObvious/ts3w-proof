/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 ECXgrid+allocationTag RET4 EAXthis (MOV EAX,ECX atA81064), not void. 32byte object:
   vtable1063204, rawwidth/depth/levels4/8/C zero; vector begin/end/capacity10/14/18 zero;
   allocationTag1C defaultsF9997C ifnull. Vtablewords verified[ABA310,A82C60,A82D30]. This is dense
   raw byte World3DArray, NOT block-compressed ByteTileGrid_CellPointerA8B3B0. */

undefined * __thiscall ByteWorldGrid_Construct(void *this,char *allocationTag)

{
  *(undefined4 *)((int)this + 4) = 0;
  *(undefined4 *)((int)this + 8) = 0;
  *(undefined4 *)((int)this + 0xc) = 0;
  *(undefined ***)this = &PTR_FUN_01063204;
  if (allocationTag == (char *)0x0) {
    allocationTag = "EASTL";
  }
  *(undefined4 *)((int)this + 0x10) = 0;
  *(undefined4 *)((int)this + 0x14) = 0;
  *(undefined4 *)((int)this + 0x18) = 0;
  *(char **)((int)this + 0x1c) = allocationTag;
  return this;
}

