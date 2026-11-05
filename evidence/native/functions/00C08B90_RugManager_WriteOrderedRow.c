/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 original static instructions. Physical stdcall2stackDWORDs/RET8, inputs record/context.
   Writes UInt64owner fromrecord+10/+14 with context endian, accumulates status, then C08610
   compact8bytes. Total wire row16bytes; callback return not used as a whole-manager success
   Boolean. */

void RugManager_WriteOrderedRow(void *param_1,void *param_2)

{
  byte readSucceeded;
  
  readSucceeded =
       FUN_004de0c0(*(int **)((int)param_2 + 8),*(undefined8 *)((int)param_1 + 0x10),
                    *(int *)((int)param_2 + 0x10));
  StreamReader_AccumulateStatus(param_2,readSucceeded);
  RugRecord_WriteCompactFields(param_1,param_2);
  return;
}

