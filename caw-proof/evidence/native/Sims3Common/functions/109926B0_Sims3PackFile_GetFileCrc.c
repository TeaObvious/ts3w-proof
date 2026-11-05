/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Sims3PackFile_GetFileCrc. Export ordinal(s):
   2405. Entry VA: 0x109926b0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000A22. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

undefined8 __cdecl Sims3PackFile_GetFileCrc(void *param_1,ushort param_2)

{
  int iVar1;
  
                    /* 0x9926b0  2405  Sims3PackFile_GetFileCrc */
  iVar1 = FUN_107b4260(param_1,param_2);
  if (iVar1 != 0) {
    return *(undefined8 *)(iVar1 + 0x18);
  }
  return 0;
}

