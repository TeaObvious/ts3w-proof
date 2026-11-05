/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 instruction-level observation: Core request looks up a nonzero requested state hash in
   the driver graph here; missing state leads to result -3. Local source: the reviewed original
   graph lookup. TS3W.exe PC1.67.
   
   Analyst note (PC1.67 SACS migration contract): ECX machine, one hash dword RET4; EAX matching
   state pointer or0. Used by saved-walker state restoration. A hash identity is not a chunk index
   or an object GUID; missing saved state can resolve null. Existing bounded annotations preserved.
    */

undefined4 __fastcall SACS_FindGraphStateByHash(int param_1)

{
  int local_8 [2];
  
  UInt32PairMap_Find((void *)(param_1 + 0x80),local_8,(uint *)&stack0x00000004);
  if (local_8[0] != *(int *)(*(int *)(param_1 + 0x84) + *(int *)(param_1 + 0x88) * 4)) {
    return *(undefined4 *)(local_8[0] + 4);
  }
  return 0;
}

