Late Binding can cause unexpected errors if the object or method you are trying to access does not exist.  For example:

```vbscript
Set obj = CreateObject("Some.Object.That.Might.Not.Exist")
' ... use obj ...
```

If "Some.Object.That.Might.Not.Exist" isn't registered correctly, this will fail silently or throw a runtime error only when that line is reached, making debugging harder.

Another issue is implicit type coercion, VBScript is quite lenient, but this can lead to unexpected results:

```vbscript
x = "10" + 5
MsgBox x ' Shows "105", not 15
```

This is because the + operator performs string concatenation rather than numeric addition.  Careless use of data types in VBScript can be another common source of problems.