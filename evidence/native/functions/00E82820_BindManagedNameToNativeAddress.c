/* Retained genuine /TS3W.exe C export; current function identifiers checked against the November 5 name snapshot.
   Earlier body/ABI/variable qualifications remain; no runtime observation. */

/* Retained historical annotation 1, previous canonical/import C line 6;
   commentary from that earlier export, preserved without changing the genuine C suffix. */
/* Verified PC 1.67 registration path: Called by table consumer once per non-null eight-byte record
   with managed-name string and function pointer. It forwards to 0x00E48380/0x00E45BD0; their full
   lookup semantics remain to be traced. Source:
   evidence/bindings/consumer-trace.md. */



/* Verified PC 1.67 registration path: Called by table consumer once per non-null eight-byte record
   with managed-name string and function pointer. It forwards to 0x00E48380/0x00E45BD0; their full
   lookup semantics remain to be traced. Source:
   /home/lego/WorldTool/build/ts3w-proof-20261012/registration-audit; TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3. */

void __cdecl BindManagedNameToNativeAddress(char *param_1,undefined4 param_2)

{
  undefined4 uVar1;
  undefined4 extraout_ECX;
  int iVar2;
  
  RuntimeMetadataLock_Enter();
  iVar2 = 0;
  uVar1 = FUN_00e48380(param_1);
  InsertOrUpdateHashTableEntry
            (extraout_ECX,DAT_011f536c,(undefined4 *)DAT_011f536c,uVar1,param_2,iVar2);
  RuntimeMetadataLock_Leave();
  return;
}

