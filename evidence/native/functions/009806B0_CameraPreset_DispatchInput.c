/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 original instruction review. Analyst-assigned name. thiscall input event family and event
   pointer; only family0x5ece0000 dispatches. Event DWORD+4 cases042c0000..4 smooth
   recall,042c0ff0..4 immediate recall,042c00f0..4 capture slots0..4. Physical keyboard binding
   producer remains open. Calls are memory preset operations; a filesystem-save contract is not
   inferred. */

void __thiscall CameraPreset_DispatchInput(void *this,int param_1,int param_2)

{
  uint uVar1;
  
  if (param_1 == 0x5ece0000) {
    uVar1 = *(uint *)(param_2 + 4);
    if (uVar1 < 0x42c0ff1) {
      if (uVar1 == 0x42c0ff0) {
        CameraPreset_RestoreSlot(0,'\0');
        return;
      }
      switch(uVar1) {
      case 0x42c0000:
        CameraPreset_RestoreSlot(0,'\x01');
        return;
      case 0x42c0001:
        CameraPreset_RestoreSlot(1,'\x01');
        return;
      case 0x42c0002:
        CameraPreset_RestoreSlot(2,'\x01');
        return;
      case 0x42c0003:
        CameraPreset_RestoreSlot(3,'\x01');
        return;
      case 0x42c0004:
        CameraPreset_RestoreSlot(4,'\x01');
        return;
      case 0x42c00f0:
        CameraPreset_CaptureCurrentPose(this,0);
        break;
      case 0x42c00f1:
        CameraPreset_CaptureCurrentPose(this,1);
        return;
      case 0x42c00f2:
        CameraPreset_CaptureCurrentPose(this,2);
        return;
      case 0x42c00f3:
        CameraPreset_CaptureCurrentPose(this,3);
        return;
      case 0x42c00f4:
        CameraPreset_CaptureCurrentPose(this,4);
        return;
      }
    }
    else {
      switch(uVar1) {
      case 0x42c0ff1:
        CameraPreset_RestoreSlot(1,'\0');
        return;
      case 0x42c0ff2:
        CameraPreset_RestoreSlot(2,'\0');
        return;
      case 0x42c0ff3:
        CameraPreset_RestoreSlot(3,'\0');
        return;
      case 0x42c0ff4:
        CameraPreset_RestoreSlot(4,'\0');
        return;
      }
    }
  }
  return;
}

