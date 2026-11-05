/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst original DBPF index closure: PC1.67 physical signature correction only: stdcall three
   stackDWORDs RET0C, existing node/key storage and EAXpointer retained; thirdslot is opaque/ignored
   in complete57-byte body. All10 physical callers push node,key,thirdword. Hash-chain compares all
   four keywords and follows node+20. No new parser semantics.
   
   Analyst PC1.67 original DBPF role: Search bucket chain: compare all four keyword DWORDs, follow
   node+20; return matching node or null. Third physical stack DWORD is ignored, retained opaque;
   stdcall three words RET0C. */

int * DbpfIndex_FindBucketNode(int *param_1,int *param_2,uint ignoredStackWord)

{
  if (param_1 != (int *)0x0) {
    do {
      if ((((*param_2 == *param_1) && (param_2[2] == param_1[2])) && (param_2[3] == param_1[3])) &&
         (param_2[1] == param_1[1])) {
        return param_1;
      }
      param_1 = (int *)param_1[8];
    } while (param_1 != (int *)0x0);
  }
  return (int *)0x0;
}

