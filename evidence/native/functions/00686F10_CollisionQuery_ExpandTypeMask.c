/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Static PC1.67 original instruction comparison; 63 complete owned bytes/20 actual Listing
   instructions. No runtime execution.
   One stack word and plain RET. Unsigned range gate for codes11..16 uses six original table targets
   at00686F50:11->0xFFFF,12->0x70,13->3,14->0x104,15->6,16->0x8FFFF. Other values execute SHL EAX,CL
   from EAX1, with x86 five-bit shift count. Do not exchange code15/code16 based on case block
   physical order. */

int __cdecl CollisionQuery_ExpandTypeMask(undefined4 param_1)

{
  switch(param_1) {
  case 0xb:
    return 0xffff;
  case 0xc:
    return 0x70;
  case 0xd:
    return 3;
  case 0xe:
    return 0x104;
  case 0xf:
    return 6;
  case 0x10:
    return 0x8ffff;
  default:
    return 1 << ((byte)param_1 & 0x1f);
  }
}

