/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Corrected PC 1.67 cross-subsystem global accessor. Original bytes A1 BC 5B 1D 01 C3 at
   0x00769390: mov eax,[0x011D5BBC]; ret. Raw Audio_StartSoundImpl calls this at 0x008630F5 and then
   uses interface vtable +0x58; SACS request/core paths also call this address, as do many other
   subsystems. The earlier SACS_GetManager name was too specific. Exact interface type and ownership
   remain unresolved. Original TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3. */

undefined4 GetGlobalInterfacePointer_11D5BBC(void)

{
  return DAT_011d5bbc;
}

