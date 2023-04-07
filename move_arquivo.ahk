#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Mostra uma caixa de diálogo para selecionar um arquivo
FileSelectFile, SourcePath, 3,, Escolha o arquivo para mover, *.*
if SourcePath =
{
    MsgBox, Nenhum arquivo selecionado.
    ExitApp
}

; Mostra uma caixa de diálogo para selecionar a pasta de destino
FileSelectFolder, DestPath, , 3, Escolha a pasta de destino
if DestPath =
{
    MsgBox, Nenhuma pasta de destino selecionada.
    ExitApp
}

; Move o arquivo para a pasta de destino
FileMove, %SourcePath%, %DestPath%
if ErrorLevel
{
    MsgBox, Houve um erro ao mover o arquivo.
}
else
{
    MsgBox, Arquivo movido com sucesso.
}

ExitApp
