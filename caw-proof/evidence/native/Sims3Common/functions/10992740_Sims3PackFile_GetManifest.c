/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Sims3PackFile_GetManifest. Export ordinal(s):
   2409. Entry VA: 0x10992740. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000A1C. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

undefined4 __cdecl Sims3PackFile_GetManifest(void *param_1)

{
  undefined4 uVar1;
  int unaff_ESI;
  undefined *local_10;
  undefined *local_c;
  undefined2 *local_8;
  char *local_4;
  
                    /* 0x992740  2409  Sims3PackFile_GetManifest */
  local_10 = &_Dst_10ca8244;
  local_c = &_Dst_10ca8244;
  local_4 = "CLRHosting/Sims3PackFile/GetManifest/xml";
  local_8 = &DAT_10ca8246;
  FUN_107b6c80(param_1,&local_10);
  uVar1 = Ordinal_2(local_10);
  if ((2 < (int)((int)local_c - unaff_ESI & 0xfffffffeU)) && (unaff_ESI != 0)) {
    FUN_10918e90(unaff_ESI);
  }
  return uVar1;
}

