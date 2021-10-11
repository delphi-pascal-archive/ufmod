{ *** kernel32 *** }
function WaitForSingleObject(
	hObject, dwTimeout: Integer):
	Integer; stdcall; external 'kernel32.dll';
function CloseHandle(
	hObject: Integer):
	Integer; stdcall; external 'kernel32.dll';
function CreateThread(
	lpThreadAttributes: Pointer;
	dwStackSize: Integer;
	lpStartAddress: Pointer;
	lpParameter: Pointer;
	dwCreationFlags: Integer;
	lpThreadId: Pointer):
	Integer; stdcall; external 'kernel32.dll';
function SetThreadPriority(
	hThread, nPriority: Integer):
	Integer; stdcall; external 'kernel32.dll';
function HeapAlloc(
	hHeap, dwFlags, dwBytes: Integer):
	Integer; stdcall; external 'kernel32.dll';
function HeapCreate(
	flOptions, dwInitialSize, dwMaximumSize: Integer):
	Integer; stdcall; external 'kernel32.dll';
function HeapDestroy(
	hHeap: Integer):
	Integer; stdcall; external 'kernel32.dll';
function Sleep(
	cMillis: Integer):
	Integer; stdcall; external 'kernel32.dll';
function FindResourceA(
	hModule: Integer;
	lpName, lpType: PChar):
	Integer; stdcall; external 'kernel32.dll';
function LoadResource(
	hModule, hrsrc: Integer):
	Integer; stdcall; external 'kernel32.dll';
function SizeofResource(
	hModule, hrsrc: Integer):
	Integer; stdcall; external 'kernel32.dll';
function CreateFileA(
	lpFileName: PChar;
	dwDesiredAccess, dwShareMode: Integer;
	lpSecurityAttributes: Pointer;
	dwCreationDistribution, dwFlagsAndAttributes, hTemplateFile: Integer):
	Integer; stdcall; external 'kernel32.dll';
function CreateFileW(
	lpFileName: PWideChar;
	dwDesiredAccess, dwShareMode: Integer;
	lpSecurityAttributes: Pointer;
	dwCreationDistribution, dwFlagsAndAttributes, hTemplateFile: Integer):
	Integer; stdcall; external 'kernel32.dll';
function ReadFile(
	hFile: Integer;
	lpBuffer: Pointer;
	nNumberOfBytesToRead: Integer;
	lpNumberOfBytesRead, lpOverlapped: Pointer):
	Integer; stdcall; external 'kernel32.dll';
function SetFilePointer(
	hFile, lDistanceToMove: Integer;
	lpDistanceToMoveHigh: Pointer;
	dwMoveMethod: Integer):
	Integer; stdcall; external 'kernel32.dll';

{ *** winmm *** }
function waveOutClose(
	hwo: Integer):
	Integer; stdcall; external 'winmm.dll';
function waveOutGetPosition(
	hwo: Integer;
	pmmt: Pointer;
	cbmmt: Integer):
	Integer; stdcall; external 'winmm.dll';
function waveOutOpen(
	phwo: Pointer;
	uDeviceID: Integer;
	pwfx: Pointer;
	dwCallback, dwCallbackInstance, fdwOpen: Integer):
	Integer; stdcall; external 'winmm.dll';
function waveOutPrepareHeader(
	hwo: Integer;
	pwh: Pointer;
	cbwh: Integer):
	Integer; stdcall; external 'winmm.dll';
function waveOutReset(
	hwo: Integer):
	Integer; stdcall; external 'winmm.dll';
function waveOutUnprepareHeader(
	hwo: Integer;
	pwh: Pointer;
	cbwh: Integer):
	Integer; stdcall; external 'winmm.dll';
function waveOutWrite(
	hwo: Integer;
	pwh: Pointer;
	cbwh: Integer):
	Integer; stdcall; external 'winmm.dll';