package JC.aula4;
import java.util.Scanner;

public class ContaTerminal {
    public static void main(String[] args) throws Exception {

        Scanner scanner = new Scanner(System.in);
        Conta Lucas = new Conta();

        //int Numero = 1021;
        //String Agencia = "067-8";
        //String NomeCliente = "Leh Mora";
        //double saldo = 237.48;

        System.out.println("Digite seu Nome: ");
        String nomeCliente = scanner.nextLine();

        System.out.println("Digite seu saldo: ");
        double saldo = scanner.nextDouble();

        System.out.println("Digite o numero da sua Conta: ");
        int numero = scanner.nextInt();

        System.out.print("Digite sua agencia: ");
        String agencia = scanner.nextLine();
        scanner.nextLine(); // Consume the newline character left by nextInt()

        Lucas.Numero = numero;
        Lucas.NomeCliente = nomeCliente;
        Lucas.saldo = saldo;
        Lucas.Agencia = agencia;

        System.out.println("Olá " + Lucas.NomeCliente + ", obrigado por criar uma conta em nosso banco, sua agencia é " + Lucas.Agencia + ", conta " + Lucas.Numero + " e seu saldo de R$" + Lucas.saldo + " já está disponível para saque.");

        scanner.close();
    }
}
