/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: original PC 1.67 portal contract. Original0x80 portal (position layout does not imply
   coordinate frame): GUID+8, serial+0x10; stored start/end{float X,float Z,int level}
   at+0x14/+0x20; cost float+0x2c; room uint16 pair+0x48/+0x4a initiallyffff; uint16flags+0x58 bit0
   one-way; variants vector+0x5c; AGS64+0x78. ECX this returned unchanged in EAX; RET0x44. */

void * __thiscall
Portal_Initialize(void *this,ulonglong objectId,uint serial,TS3WPortalXZLevel start,void *startSlot,
                 TS3WPortalXZLevel end,void *endSlot,float cost,uint unused,bool oneWay,
                 ulonglong ags,uint index)

{
  *(ulonglong *)((int)this + 8) = objectId;
  *(uint *)((int)this + 0x10) = serial;
  *(undefined ***)this = &PTR_LAB_00fee0c8;
  *(float *)((int)this + 0x14) = start.x;
  *(float *)((int)this + 0x18) = start.z;
  *(int *)((int)this + 0x1c) = start.level;
  *(float *)((int)this + 0x20) = end.x;
  *(int *)((int)this + 0x28) = end.level;
  *(float *)((int)this + 0x24) = end.z;
  *(float *)((int)this + 0x2c) = cost;
  *(undefined4 *)((int)this + 0x30) = *(undefined4 *)((int)startSlot + 8);
  *(undefined2 *)((int)this + 0x34) = *(undefined2 *)((int)startSlot + 0xc);
  *(undefined2 *)((int)this + 0x36) = *(undefined2 *)((int)startSlot + 0x10);
  *(undefined2 *)((int)this + 0x38) = *(undefined2 *)((int)startSlot + 0x14);
  *(undefined2 *)((int)this + 0x3a) = *(undefined2 *)((int)startSlot + 0x12);
  *(undefined4 *)((int)this + 0x3c) = *(undefined4 *)((int)endSlot + 8);
  *(undefined2 *)((int)this + 0x40) = *(undefined2 *)((int)endSlot + 0xc);
  *(undefined2 *)((int)this + 0x42) = *(undefined2 *)((int)endSlot + 0x10);
  *(undefined2 *)((int)this + 0x44) = *(undefined2 *)((int)endSlot + 0x14);
  *(undefined2 *)((int)this + 0x46) = *(undefined2 *)((int)endSlot + 0x12);
  *(undefined2 *)((int)this + 0x48) = 0xffff;
  *(undefined2 *)((int)this + 0x4a) = 0xffff;
  *(undefined4 *)((int)this + 0x4c) = 0;
  *(undefined4 *)((int)this + 0x50) = 0;
  *(undefined4 *)((int)this + 0x54) = 0;
  *(undefined2 *)((int)this + 0x58) = 0;
  *(undefined4 *)((int)this + 0x5c) = 0;
  *(undefined4 *)((int)this + 0x60) = 0;
  *(undefined4 *)((int)this + 100) = 0;
  *(char **)((int)this + 0x68) = "Routing/mPortalLocationVariants";
  *(uint *)((int)this + 0x6c) = index;
  *(undefined4 *)((int)this + 0x78) = (undefined4)ags;
  *(undefined4 *)((int)this + 0x70) = 0;
  *(undefined4 *)((int)this + 0x7c) = ags._4_4_;
  if (oneWay) {
    *(ushort *)((int)this + 0x58) = *(ushort *)((int)this + 0x58) | 1;
  }
  return this;
}

