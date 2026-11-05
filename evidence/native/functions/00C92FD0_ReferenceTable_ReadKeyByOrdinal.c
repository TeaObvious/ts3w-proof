/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 roof ordinal thunk contract): Physical entry C92FD0 owns only five bytes:
   JMP0099A660. This is a forwarding thunk to the already canonical ReferenceTable_ReadKeyByOrdinal
   at99A660, not a second full ordinal implementation. Ghidra actual C expands the thunk target.
   Target instructions establish cdecl three pointer words, caller cleanup12, UInt32 ordinal and
   unsigned ordinal<count ((end-begin)>>4),16bytecopy/AL1 on valid, no output copy/AL0 otherwise.
   Upper EAX remains an artifact; accumulated stream status is separate. Original CRST readerC9A9F0
   invokes this entry twice for version>=2 and immediately cleans up on AL0. Reuse the
   complete99A660 ASM/C pair for implementation instructions; no1024 cap or signed-negative ordinal
   interpretation. */

uint __cdecl ReferenceTable_ReadKeyByOrdinal(void *param_1,int *param_2,undefined4 *param_3)

{
  int iVar1;
  int iVar2;
  undefined4 uVar3;
  bool readSucceeded;
  undefined4 *puVar4;
  uint uStack_4;
  
  iVar1 = param_2[1];
  iVar2 = *param_2;
  uStack_4 = 0;
  readSucceeded =
       Stream_ReadUInt32(*(void **)((int)param_1 + 8),&uStack_4,*(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,readSucceeded);
  if (uStack_4 < (uint)(iVar1 - iVar2 >> 4)) {
    puVar4 = (undefined4 *)(uStack_4 * 0x10 + *param_2);
    *param_3 = *puVar4;
    param_3[1] = puVar4[1];
    param_3[2] = puVar4[2];
    uVar3 = puVar4[3];
    param_3[3] = uVar3;
    return CONCAT31((int3)((uint)uVar3 >> 8),1);
  }
  return uStack_4 & 0xffffff00;
}

