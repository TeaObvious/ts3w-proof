/* Final Ghidra decompilation after semantic name/comment readback.
   Original identity is centralized in references/pc-167.md.
   ASM pair records the complete existing owned body; generated C is not a callable replacement.
   Function-local instruction notes explain the saved body/plate; generated statements are unchanged. */

/* Instruction contract: Value arguments are scalar low/high stack words. The preserved pointer-looking value parameter is never dereferenced. */
/* Instruction contract: The switch tag comes from [[arg1+4]+6], not a managed type token. Incoming ECX is overwritten before each typed call; RET 0C cleans three words. */



/* Analyst PC1.67 contract: dispatch by unsigned byte [[stack arg1+4]+6]. Tags 3/7 use UInt16, 4
   Int8, 5 UInt8, 6 Int16, 8 Int32, 9 UInt32, 10 Int64, 11 UInt64; table at 00D7CD44 has nine
   DWORDs. Other tags return EAX=0. Value words are scalar stack storage; the preserved
   pointer-looking decompiler parameter is not dereferenced. Typed callees receive global 011EF514
   in ECX, class-like arg1 and the low value word; tags 10/11 also receive the high word. This body
   overwrites incoming ECX before use and ends each path with RET 0C. Field result +0C is consumed
   as name by registered root candidates D7CE10/D7CEA0, which remain undefined; no flags composition
   or alias-selection guarantee follows from this dispatch. */

int * EnumFieldLookup_ByUnderlyingValue(int *param_1,undefined1 *param_2,uint param_3)

{
  int *piVar1;
  
  switch(*(undefined1 *)(param_1[1] + 6)) {
  case 3:
    piVar1 = EnumFieldCache_FindUInt16(DAT_011ef514,param_1,(uint)param_2);
    return piVar1;
  case 4:
    piVar1 = EnumFieldCache_FindInt8(DAT_011ef514,param_1,param_2);
    return piVar1;
  case 5:
    piVar1 = EnumFieldCache_FindUInt8(DAT_011ef514,param_1,param_2);
    return piVar1;
  case 6:
    piVar1 = EnumFieldCache_FindInt16(DAT_011ef514,param_1,(uint)param_2);
    return piVar1;
  case 7:
    piVar1 = EnumFieldCache_FindUInt16(DAT_011ef514,param_1,(uint)param_2);
    return piVar1;
  case 8:
    piVar1 = EnumFieldCache_FindInt32(DAT_011ef514,param_1,(uint)param_2);
    return piVar1;
  case 9:
    piVar1 = EnumFieldCache_FindUInt32(DAT_011ef514,param_1,(uint)param_2);
    return piVar1;
  case 10:
    piVar1 = EnumFieldCache_FindInt64(DAT_011ef514,param_1,(uint)param_2,param_3);
    return piVar1;
  case 0xb:
    piVar1 = EnumFieldCache_FindUInt64(DAT_011ef514,param_1,(uint)param_2,param_3);
    return piVar1;
  default:
    return (int *)0x0;
  }
}

