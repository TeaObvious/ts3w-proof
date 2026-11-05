/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 object Lighting instruction contract. ECX Lighting component; reader/context TWO
   stack words RET8; returns reader+14 raw status BYTE in AL. Unsigned context WORD+6>=14 reads
   UInt16 key-table index then resolves via context+10 into component key16+8; older branch reads
   raw key via7D7760. Unsigned context WORD+4>=2 reads dimmer+18 then RGB3+1C, otherwise leaves
   those existing fields untouched. Primitive status accumulated but no local rollback/early
   failure. No finite check, malformed-value sanitization or call to renderer here. */

byte __thiscall
LightingComponent_ReadSavedResourceAndControls(void *this,void *reader,void *context)

{
  void *this_00;
  void *this_01;
  void *pvVar1;
  bool bVar2;
  
  pvVar1 = context;
  this_01 = reader;
  this_00 = *(void **)((int)context + 0x10);
  if (*(ushort *)((int)context + 6) < 0xe) {
    bVar2 = Stream_ReadResourceKeyTGI
                      (*(void **)((int)reader + 8),(void *)((int)this + 8),
                       *(uint *)((int)reader + 0x10));
    StreamReader_AccumulateStatus(this_01,bVar2);
  }
  else {
    bVar2 = Stream_ReadUInt16(*(void **)((int)reader + 8),(ushort *)&reader,
                              *(uint *)((int)reader + 0x10));
    StreamReader_AccumulateStatus(this_01,bVar2);
    FUN_007d7190(this_00,(ushort *)&reader,(undefined4 *)((int)this + 8));
  }
                    /* Unsigned WORD component-version gate2; older versions preserve existing
                       dimmer/RGB fields. */
  if (1 < *(ushort *)((int)pvVar1 + 4)) {
    bVar2 = Stream_ReadUInt32(*(void **)((int)this_01 + 8),(uint *)((int)this + 0x18),
                              *(uint *)((int)this_01 + 0x10));
    StreamReader_AccumulateStatus(this_01,bVar2);
    FUN_007d7b60(this_01,(uint *)((int)this + 0x1c));
  }
  return *(byte *)((int)this_01 + 0x14);
}

