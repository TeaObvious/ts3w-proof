/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Shared tiny field getter: MOV EAX,[ECX+5C]; RET, no stackwords, fullUInt32. Generic field-offset
   analyst name deliberately does not imply every caller has preset layout. Actual00B311FF caller
   uses queried05DE1935 design interface; constructor005BFAC0/reader005C0110/writer005BF830
   establish that presets own saved subsort at5C. No mask, sign extension or defaulting in getter.
    */

uint __thiscall UInt32Field5C_Get(void *this)

{
  return *(uint *)((int)this + 0x5c);
}

