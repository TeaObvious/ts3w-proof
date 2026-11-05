/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Original CAW 1.22.10 Sims3Common.dll: INI value callback writes section/key/value
   through1038AB80, accounting for each successful write. Original instruction
   range1038B980..1038B9AC. Analyst-assigned helper names are not recovered original symbols.
   Original instructions govern decompiler ABI/register artifacts. */

undefined4 __cdecl CAW_ConfigRegistryLoadValue(short *param_1,short *param_2,int param_3)

{
  char cVar1;
  undefined3 extraout_var;
  
  cVar1 = CAW_ConfigRegistryStoreValue
                    (*(void **)(param_3 + 4),*(short **)(param_3 + 8),param_1,param_2);
  if (cVar1 != '\0') {
    *(int *)(param_3 + 0xc) = *(int *)(param_3 + 0xc) + 1;
    return 1;
  }
  return CONCAT31(extraout_var,1);
}

