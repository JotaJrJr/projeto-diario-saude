# projeto_diarios_saude

## Revisar banco de dados para relação com usuário depois

Projeto criado com intuito de armazenar e monitorar "diários" de saúde em áreas diversas do usuário, ideia veio da minha cunhada Bertha
Tentar explorar : 

Diabetes
Doença de Crohn
Pressão
Ciclo Menstrual
Saúde Mental
Medicações
Alergias 
Insônia / Distúrbios
Hipertensão
Rotina Skin Care / Cabelo
Diários Generalizados























Rotina de Skin Care é um ritual contínuo para tratamento para cada tipo de pele em específico.

Para peles oleósas, mista, seca e extra seca.

Intuito

Tratamentos distintos entre noturno e diuno, opção de cirar lembrete com horário

Também há a opção, algo genêrico fora desse contexto, que não encaixa em ambos

Fotos para mostrar o progresso


Rotina Principal - Tabela RotinaPeleTable

    - Rotina Diurna - Tabela DetalheRotinaPeleTable

        - Atividade - Tabela AtividadeRotinaPeleTable

            - Produto X - Tabela ProdutoRotinaPeleTable
            - Produto Y - Tabela ProdutoRotinaPeleTable

    - Rotina Noturna - Tabela DetalheRotinaPeleTable

        - Atividade - Tabela AtividadeRotinaPeleTable

            - Produto X - Tabela ProdutoRotinaPeleTable
            - Produto Y - Tabela ProdutoRotinaPeleTable

    - Rotina Adicional - Tabela DetalheRotinaPeleTable (semanalmente ou em outro loop de rotina)

        - Atividade - Tabela AtividadeRotinaPeleTable

            - Produto X - Tabela ProdutoRotinaPeleTable
            - Produto Y - Tabela ProdutoRotinaPeleTable






            ROTINA DE PELE X



SEGUNDA         TERÇA       QUARTA      QUINTA      SEXTA       SÁBADO      DOMINGO
DIURNO                      DIURNO                  DIURNO    
ATIVIDADE X                 ATIVIDADE X             ATIVIDADE X
ATIVIDADE Y                 ATIVIDADE Y             ATIVIDADE Y

NOTURNO                                             NOTURNO
ATIVIDADE X                                         ATIVIDADE X
ATIVIDADE Y                                         ATIVIDADE Y


Atividade pode ser atrelada à produto, no caso a atividade foi o uso do produto
Atividade pode não ser atrelada, no caso não depende da tabela produto, somente uma descrição

