; Adiciona botões 'Inserir' e 'Visualizar' na GUI (interface gráfica do usuário)
Gui, Add, Button, x10 y10 w100 h30 gInserir, Inserir
Gui, Add, Button, x120 y10 w100 h30 gVisualizar, Visualizar

; Mostra a GUI com tamanho e título especificados
Gui, Show, w240 h50, Exemplo

; Função para criar a tela de inserção de dados
Inserir:
    ; Destroi a GUI atual
    Gui, Destroy

    ; Adiciona campos de texto e campos de edição para 'Nome' e 'Idade'
    Gui, Add, Text, x10 y10, Nome:
    Gui, Add, Edit, x60 y10 w180 h20 vNome
    Gui, Add, Text, x10 y40, Idade:
    Gui, Add, Edit, x60 y40 w180 h20 vIdade

    ; Adiciona botão 'Gravar'
    Gui, Add, Button, x10 y70 w240 h30 gGravar, Gravar

    ; Mostra a GUI de inserção de dados
    Gui, Show, w250 h110, Inserir Dados
return

; Função para gravar os dados no arquivo 'dados.txt'
Gravar:
    ; Recupera os valores inseridos nos campos de edição
    Gui, Submit, NoHide

    ; Adiciona os valores de 'Nome' e 'Idade' ao arquivo 'dados.txt' no Desktop
    FileAppend, %Nome%`t%Idade%`n, %A_Desktop%\dados.txt

    ; Mostra uma mensagem informando que os dados foram gravados com sucesso
    MsgBox, Dados gravados com sucesso!

    ; Destroi a GUI atual e volta para a tela inicial
    Gui, Destroy
    Goto, Start
return

; Função para abrir o arquivo 'dados.txt'
Visualizar:
    Run, %A_Desktop%\dados.txt
return

; Função para criar a tela inicial com botões 'Inserir' e 'Visualizar'
Start:
    Gui, Destroy
    Gui, Add, Button, x10 y10 w100 h30 gInserir, Inserir
    Gui, Add, Button, x120 y10 w100 h30 gVisualizar, Visualizar
    Gui, Show, w240 h50, Exemplo
return

; Função para encerrar o aplicativo quando a janela for fechada
GuiClose:
    ExitApp
return
