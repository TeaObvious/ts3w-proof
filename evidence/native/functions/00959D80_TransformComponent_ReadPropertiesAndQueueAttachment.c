/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst original PC1.67 instruction contract. ECX Transform. Physical RET0Ch cleans THREE DWORDs
   although existing C declares two formal inputs; third-word role is not established. Reads
   position5E19D274/count3 and quaternionF24B36F0/count4. Parent reference5F6317D5 must read
   successfully and be unsigned in range; optional bone90661788,occupantC48803DB,point405DF7A1
   default0. Appends via9597E0(context-18h) with child/indexed parent/point/occupant/bone. Final low
   AL is position/quaternion conjunction, not all optional property statuses. */

byte __thiscall
TransformComponent_ReadPropertiesAndQueueAttachment(void *this,void *param_1,int param_2)

{
  int *piVar1;
  void *this_00;
  byte bVar2;
  byte bVar3;
  char cVar4;
  uint local_10;
  uint local_c;
  uint local_8;
  uint local_4;
  
  this_00 = param_1;
  piVar1 = *(int **)(param_2 + 0xc);
  local_10 = 3;
  bVar2 = NativePropertyStream_ReadSingleArray
                    (param_1,0x5e19d274,(uint *)((int)this + 0x20),&local_10);
  local_10 = 4;
  bVar3 = NativePropertyStream_ReadSingleArray
                    (this_00,0xf24b36f0,(uint *)((int)this + 0x10),&local_10);
  param_1 = (void *)0xffffffff;
  cVar4 = NativePropertyStream_ReadUInt32(this_00,0x5f6317d5,(uint *)&param_1);
  if ((cVar4 != '\0') && (param_1 < (void *)(piVar1[1] - *piVar1 >> 3))) {
    local_8 = local_8 & 0xffffff00;
    local_c = local_c & 0xffffff00;
    local_4 = 0;
    NativePropertyStream_ReadBoolean((int)this_00);
    NativePropertyStream_ReadBoolean((int)this_00);
    NativePropertyStream_ReadUInt32(this_00,0x405df7a1,&local_4);
    TransformContext_AppendAttachmentRow
              ((void *)(param_2 + -0x18),*(undefined4 *)(*(int *)((int)this + 4) + 8),
               *(undefined4 *)(*(int *)((int)this + 4) + 0xc),
               *(undefined4 *)(*piVar1 + (int)param_1 * 8),
               *(undefined4 *)(*piVar1 + 4 + (int)param_1 * 8),local_4,(char)local_8,(char)local_c);
  }
  return bVar2 & 1 & bVar3;
}

