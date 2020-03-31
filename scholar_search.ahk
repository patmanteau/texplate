!+s::
clipBak := ClipboardAll
Send, ^c
ClipWait,2

Run, https://scholar.google.com/scholar?hl=de&q=%ClipBoard%

ClipBoard := clipBak
return
