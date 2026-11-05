/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 object Lighting instruction contract. ECX Lighting component; TWO stack pointers
   writer/context; RET8; returns writer+14 raw status BYTE in AL. Resolves component key16 at+8 via
   context+10 service, narrows resultAX to UInt16 and calls Stream_WriteUInt16, accumulates raw
   primitive status; writes component+18 float via4DE390, accumulates; writes RGB3 from+1C
   via7D7B90. No local finite/colour/default validation, early failure branch or rollback. Full
   key-table and stream helper contracts remain separate. */

byte __thiscall
LightingComponent_WriteSavedResourceAndControls(void *this,void *writer,void *context)

{
  byte bVar1;
  uint uVar2;
  
  uVar2 = thunk_FUN_007d7070(*(void **)((int)context + 0x10),(uint *)((int)this + 8),0);
  bVar1 = Stream_WriteUInt16(*(void **)((int)writer + 8),(ushort)uVar2,*(uint *)((int)writer + 0x10)
                            );
  StreamReader_AccumulateStatus(writer,bVar1);
  bVar1 = FUN_004de390(*(int **)((int)writer + 8),*(undefined4 *)((int)this + 0x18),
                       *(uint *)((int)writer + 0x10));
  StreamReader_AccumulateStatus(writer,bVar1);
  FUN_007d7b90(writer,(uint *)((int)this + 0x1c));
  return *(byte *)((int)writer + 0x14);
}

