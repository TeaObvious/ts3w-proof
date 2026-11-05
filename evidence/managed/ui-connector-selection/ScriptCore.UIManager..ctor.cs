// Original PC 1.67 S3SA ScriptCore:06000E5B; assembly identity: ../reference-inputs.json
// Annotated ILSpy view; the original projection below is retained verbatim.
// Complete 23-byte constructor: base construction, CurrentDomain.SetData("UIManager", this).
// No constructor activation, actual shared domain or native module selection is established.

using System;

public UIManager()
{
	AppDomain.CurrentDomain.SetData("UIManager", this);
}
