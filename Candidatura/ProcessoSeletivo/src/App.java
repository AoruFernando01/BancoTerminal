public class App {
    public static void main(String[] args) throws Exception {
        analisarCandidato(2300.0);
        analisarCandidato(2000.0);  
        analisarCandidato(1500.0);
        analisarCandidato(2500.0);

    }
    static void analisarCandidato(double salarioPretendido) {
        double salarioBase = 2000.0;

        if(salarioBase > salarioPretendido) {
            System.out.println("Ligar para candidato!");
        } else if(salarioBase == salarioPretendido) {
            System.out.println("LIgar para o candidato com contra proposta!");
        } else {
            System.out.println("Aguardando o resultado dos demais canditatos!");
        }
    }
}
