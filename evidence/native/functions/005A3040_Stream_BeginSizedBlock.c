/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): ECX stream context, no stack args. Query original
   stream position at virtual24 with origin0, writeUInt32zero placeholder, return saved position.
   Indirect thiscall ABI explicitly carries stream receiver and origin stack word. */

uint __fastcall Stream_BeginSizedBlock(void *param_1)

{
  byte readSucceeded;
  uint uVar1;
  
  uVar1 = (**(code **)(**(int **)((int)param_1 + 8) + 0x24))
                    ((undefined *)*(int **)((int)param_1 + 8),0);
  readSucceeded = Stream_WriteUInt32(*(void **)((int)param_1 + 8),0,*(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,readSucceeded);
  return uVar1;
}

