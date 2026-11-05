/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: LotWrap_IsOverlapped. Export ordinal(s): 1920.
   Entry VA: 0x10986810. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000AA5. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

bool __cdecl LotWrap_IsOverlapped(void *param_1,int *param_2)

{
  uint uVar1;
  int local_10;
  int local_c;
  int local_8;
  int local_4;
  
                    /* 0x986810  1920  LotWrap_IsOverlapped */
  if (param_1 != (void *)0x0) {
    local_10 = *param_2;
    local_c = param_2[1];
    local_8 = param_2[2];
    local_4 = param_2[3];
    uVar1 = FUN_100812d0(param_1,&local_10);
    return (char)uVar1 != '\0';
  }
  return false;
}

