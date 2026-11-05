/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 original static instructions. Physical ECX lot plus1stackDWORD containing lowInt16 room
   key/RET4. Looks up lot+178 hash state and compares iterator with bucket sentinel. LowAL boolean
   only. Original stored fastcall prototype omitted stack key; corrected to thiscall explicit
   roomWord. Selection caller at A4D812 uses this on level0 to choose +6 height branch; name is
   analyst contextual role, not a recovered map symbol. */

bool __thiscall LotRooms_TestHeightExtensionMembership(void *this,dword roomWord)

{
  int iVar1;
  int *piVar2;
  undefined4 local_8 [2];
  
  iVar1 = *(int *)(*(int *)((int)this + 0x17c) + *(int *)((int)this + 0x180) * 4);
  piVar2 = (int *)FUN_00ae43c0((void *)((int)this + 0x178),local_8,(short *)&roomWord);
  return *piVar2 != iVar1;
}

