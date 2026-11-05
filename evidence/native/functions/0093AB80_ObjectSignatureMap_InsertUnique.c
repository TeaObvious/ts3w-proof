/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Analyst PC1.67 object signature-map instruction contract. Complete97-byte body. ECX resource
   owner, three stackwords lowKey,highKey,value,RET0C; onlyAL0/1 is result, upperEAXunspecified.
   Builds local full64key/LOW32value record, invokes already-reviewed U64PairMap_InsertUnique
   onowner+28. Incoming value is captured before overwriting ONLYLOWBYTE of its stack slot with0 for
   that generic helper's unused third word; this is NOT truncating storedvalue to a multiple256.
   Remaining high value-lane scratch is not an authored external input; writer/lookup consumeLOW32.
   Existing-key insertedBytefalse returnsAL0, firstvalueunchanged. New insertion
   calls731BE0(owner,(*(UInt32*)(owner+20))+1C) then returnsAL1; deeper accounting notification
   semantics remain unexpanded. No rollback, replacement or complete allocation-failure safety
   follows. */

byte __thiscall
ObjectSignatureMap_InsertUnique(void *this,uint instanceLow,uint instanceHigh,uint value)

{
  undefined1 local_1c [8];
  char local_14;
  uint local_10;
  uint local_c;
  uint local_8;
  
  local_8 = value;
  local_10 = instanceLow;
  local_c = instanceHigh;
                    /* Only unused helper-word low byte is cleared AFTER EDX captured original
                       value. Stored value at local pair+8 remains original fullUInt32. */
  value = value & 0xffffff00;
  U64PairMap_InsertUnique((void *)((int)this + 0x28),local_1c,&local_10,value);
  if (local_14 != '\0') {
    FUN_00731be0(this,*(int *)((int)this + 0x20) + 0x1c);
    return 1;
  }
  return 0;
}

