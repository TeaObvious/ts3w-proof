/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 VisualState current component writer. ECX component; stack4 writer, physical
   stack8 unused context word, RET8, sticky writer status in AL. Writes low UInt16 of flags at
   component+8, then full UInt32 geometry state+14 and word+C, accumulating each primitive status.
   No component-version gate, finite/default validation or rollback here. The unused word is
   raw32/undefined4 with no signedness or consumed value claimed. Existing component dispatcher
   supplies the second slot. Original instructions/bytes and all child metadata remain unchanged. */

byte __thiscall
VisualState_WriteSavedComponentState(void *this,void *writer,undefined4 unusedContextWord)

{
  byte bVar1;
  
  bVar1 = Stream_WriteUInt16(*(void **)((int)writer + 8),*(ushort *)((int)this + 8),
                             *(uint *)((int)writer + 0x10));
  StreamReader_AccumulateStatus(writer,bVar1);
  bVar1 = Stream_WriteUInt32(*(void **)((int)writer + 8),*(uint *)((int)this + 0x14),
                             *(uint *)((int)writer + 0x10));
  StreamReader_AccumulateStatus(writer,bVar1);
  bVar1 = Stream_WriteUInt32(*(void **)((int)writer + 8),*(uint *)((int)this + 0xc),
                             *(uint *)((int)writer + 0x10));
  StreamReader_AccumulateStatus(writer,bVar1);
  return *(byte *)((int)writer + 0x14);
}

