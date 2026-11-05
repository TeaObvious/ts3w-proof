/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Only database interface type34728492 can answer virtual+68
   filename for the supplied full key. DBPF database ownership is rejected here; an authored NMAP
   lookup is not an implementation of this API. Analyst-assigned helper names are not recovered
   original symbols. Original instructions govern decompiler ABI/register artifacts. */

undefined4 __cdecl
CAW_ResourceDirectoryNameForKey(undefined4 param_1,undefined4 param_2,int *param_3)

{
  uint in_EAX;
  undefined4 uVar1;
  void *unaff_retaddr;
  undefined1 *puStack_210;
  undefined1 auStack_208 [520];
  
  if (param_3 != (int *)0x0) {
    puStack_210 = (undefined1 *)0x108e4adb;
    in_EAX = (**(code **)(*param_3 + 0xc))();
    if (in_EAX == 0x34728492) {
      puStack_210 = auStack_208;
      in_EAX = (**(code **)(*param_3 + 0x68))(param_1);
      if ((char)in_EAX != '\0') {
        uVar1 = FUN_1006fb50(unaff_retaddr,(short *)&puStack_210);
        return CONCAT31((int3)((uint)uVar1 >> 8),1);
      }
    }
  }
  return in_EAX & 0xffffff00;
}

