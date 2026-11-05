/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): ECX context,marker/value RET8. Corrected stack
   prototype and all three virtual stream-call signatures. Savecurrentposition, seekmarker,
   writeUInt32value under context byte order, seekback; any seek/position failure clears context
   status. Originalbytes unchanged. */

void __thiscall Stream_BackpatchUInt32(void *this,uint arg0,uint arg1)

{
  byte bVar1;
  uint offset;
  
  offset = (**(code **)(**(int **)((int)this + 8) + 0x24))((undefined *)*(int **)((int)this + 8),0);
  if ((offset != 0xffffffff) &&
     (bVar1 = (**(code **)(**(int **)((int)this + 8) + 0x28))
                        ((undefined *)*(int **)((int)this + 8),arg0,0), bVar1 != 0)) {
    bVar1 = Stream_WriteUInt32(*(void **)((int)this + 8),arg1,*(uint *)((int)this + 0x10));
    StreamReader_AccumulateStatus(this,bVar1);
    bVar1 = (**(code **)(**(int **)((int)this + 8) + 0x28))
                      ((undefined *)*(int **)((int)this + 8),offset,0);
    if (bVar1 != 0) {
      return;
    }
  }
  *(undefined1 *)((int)this + 0x14) = 0;
  return;
}

