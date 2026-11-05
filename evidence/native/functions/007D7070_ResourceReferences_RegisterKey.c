/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 construction persistence contract): ECX context,key and low-byte markLocal
   flag RET8. Lookup existing key; missing key uses context count+C before insertion. If flag
   lowbyte nonzero, insert truncatedUInt16handle into local set at+40. ReturnUInt32handle.
   WritersB1AB50,B18BE0,B6FF20 explicitly narrow the returned value, independent from read-context
   width. Project max-handle allocation and ordered in-band list differ. */

uint __thiscall ResourceReferences_RegisterKey(void *this,uint *param_1,uint param_2)

{
  uint *puVar1;
  uint uVar2;
  int local_24 [3];
  uint local_18;
  uint local_14;
  uint local_10;
  uint local_c;
  uint local_8;
  
  puVar1 = param_1;
  FUN_005ed9e0(this,local_24,param_1);
  if (local_24[0] == *(int *)(*(int *)((int)this + 4) + *(int *)((int)this + 8) * 4)) {
    local_14 = puVar1[1];
    local_18 = *puVar1;
    local_10 = puVar1[2];
    uVar2 = *(uint *)((int)this + 0xc);
    local_c = puVar1[3];
    param_1 = (uint *)((uint)param_1 & 0xffffff00);
    local_8 = uVar2;
    FUN_00700890(this,local_24,&local_18);
  }
  else {
    uVar2 = *(uint *)(local_24[0] + 0x10);
  }
  if ((char)param_2 != '\0') {
    param_1 = (uint *)(uVar2 & 0xffff);
    param_2 = param_2 & 0xffffff00;
    LocalHandleSet_InsertUnique((void *)((int)this + 0x40),local_24,(ushort *)&param_1,param_2);
  }
  return uVar2;
}

