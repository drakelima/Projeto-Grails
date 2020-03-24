package prova.igordaniel

class Receita {
	
	String nome
	String classeImovel
	int parcelas
	float valorContrato
	float indice
	float valorContratoFinal

    static constraints = {
		classeImovel inList:["Classe A", "Classe B", "Classe C"]
    }
}
