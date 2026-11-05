/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* PC 1.67 lot spatial resource / main-entrance boundary review (2026-10-17). Four stack words are
   type/group/instanceLow/instanceHigh; plainRET leaves caller cleanup (ADD ESP,0x10 at00631FA3).
   Physical shifts/OR return EDX:EAX as truncatingUInt64
   ((((instance64<<8)|byte(group))<<7)|(type&0x7F))<<1|1 without an output-pointer store. Getter
   type2/grouphex12/high0 becomes(UInt64(UInt32(selectedWord))<<16)|0x1205. Packing bits do not
   prove serialized header field equals a live routing selection. Complete actual C/Listing and
   pristine PE support the selected observations.
   Names/IDs/prototypes/types/body/bytes/Listing/flow/analysis otherwise remain unchanged; current
   managed resource/cache policy is preserved. */

ulonglong __cdecl PackTypedObjectIdentifier(uint param_1,byte param_2,uint param_3,int param_4)

{
  return CONCAT44(((param_4 << 8 | param_3 >> 0x18) << 7 | (param_3 & 0xffffff) >> 0x11) << 1 |
                  (param_3 << 8 & 0x1ffffff) >> 0x18,
                  ((param_3 << 8 | (uint)param_2) << 7 | param_1 & 0x7f) * 2) | 1;
}

