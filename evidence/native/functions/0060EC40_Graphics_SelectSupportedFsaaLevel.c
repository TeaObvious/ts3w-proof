/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 original contract. ECX graphics manager; UInt32 requested level RET4, UInt32
   result. While nonzero andinvalid(deviceNULL,level>16 or IDirect3D9 CheckDeviceMultiSampleType
   HRESULT<0), decrements. Level0 returns0 without checking. Original tableFE8AD8 maps levels to API
   enums. */

uint __thiscall Graphics_SelectSupportedFsaaLevel(void *this,uint requestedLevel)

{
  int iVar1;
  
  while ((requestedLevel != 0 &&
         (((*(int *)((int)this + 8) == 0 || (0x10 < requestedLevel)) ||
          (iVar1 = (**(code **)(**(int **)((int)this + 8) + 0x2c))
                             (*(int **)((int)this + 8),*(undefined4 *)((int)this + 0x40),
                              **(undefined4 **)((int)this + 0xe0),
                              (*(undefined4 **)((int)this + 0xe0))[0x55],
                              *(undefined1 *)((int)this + 0x24),
                              *(undefined4 *)(&DAT_00fe8ad8 + requestedLevel * 4),0), iVar1 < 0)))))
  {
    requestedLevel = requestedLevel - 1;
  }
  return requestedLevel;
}

