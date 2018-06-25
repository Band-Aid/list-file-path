set fso=createobject("scripting.filesystemobject")
fname=fso.GetSpecialFolder(2) & "\" & fso.GetTempName() & ".txt"
for each line in WScript.Arguments
set kaigara=createobject("wscript.shell")
	msg=msg & line & vbcrlf
next

set outfile=fso.createtextfile(fname)
outfile.write msg
kaigara.run fname
