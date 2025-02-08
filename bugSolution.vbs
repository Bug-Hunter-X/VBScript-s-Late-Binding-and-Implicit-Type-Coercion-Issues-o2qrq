To fix the late binding problem, always check if the object exists before using it:

```vbscript
On Error Resume Next
Set obj = CreateObject("Some.Object.That.Might.Not.Exist")
If Err.Number <> 0 Then
  MsgBox "Object not found!"
  Err.Clear
  Exit Sub
End If
' ... use obj ...
On Error GoTo 0
```

For type coercion, be explicit about your data types.  Use the `CInt`, `CDbl`, etc. functions to convert string values to the appropriate numeric type before performing calculations:

```vbscript
x = CInt("10") + 5
MsgBox x ' Shows 15
```

Always validate user inputs and ensure data types are handled correctly to avoid unexpected results and runtime errors.