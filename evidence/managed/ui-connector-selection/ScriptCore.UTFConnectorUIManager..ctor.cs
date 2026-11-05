// Original PC 1.67 S3SA ScriptCore:06000F3C; assembly identity: ../reference-inputs.json
// Annotated ILSpy view; the original projection below is retained verbatim.
// Complete 23-byte constructor: same key spelling, a different concrete receiver type.
// No constructor activation, actual shared domain, overwrite order or module alias is established.

using System;

public UTFConnectorUIManager()
{
	AppDomain.CurrentDomain.SetData("UIManager", this);
}
