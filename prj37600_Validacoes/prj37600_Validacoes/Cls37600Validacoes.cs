using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;


public static class Cls37600Validacoes
{
    /// <summary>
    /// Metodo para verificar cartão de 16 digitos com a entrada de uma string
    /// </summary>
    public static bool Credito(String CC)
    {
        #region Validação
        if (CC.Length < 16 || CC.Length > 16)
        {
            MessageBox.Show("Precisa de 16 digitos minimo e maximo", "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            return false;
        }
        #endregion

        #region Validação de Iguais
        if (VerificarTodosIguais(CC))
        {
            MessageBox.Show("Numeros Iguais", "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            return false;
        }
        #endregion

        #region Variaveis
        double soma = 0; // soma dos valores 
        double multiplica; // variavel para guardar o numero com a multiplicação
        #endregion

        #region Conta
        for (int i = 0; i < CC.Length; i++) //  for para pegar cada numero do cartão
        {
            if (i % 2 == 0) // if para saber se a multiplicação ira ser 2 ou 1
            {
                // Entrada de numero com indice par sendo assim multiplicado por 2 
                multiplica = double.Parse(CC.Substring(i, 1)) * 2;
                if (multiplica > 9) // Verificação se soma é maior que nove
                {
                    // Caso seja subtraia por 9
                    soma += multiplica - 9; // variavel para guardar a soma da multiplicação de agora e da anterior sucessivamente
                }
                else
                {
                    soma += multiplica; // variavel para guardar a soma da multiplicação de agora e da anterior sucessivamente
                }
            }
            else
            {
                // Entrada de numero com indice impar sendo assim multiplicado por 1
                multiplica = double.Parse(CC.Substring(i, 1)) * 1;

                if (multiplica > 9) // Verificação se soma é maior que nove
                {
                    // Caso seja subtraia por 9
                    soma += multiplica - 9; // variavel para guardar a soma da multiplicação de agora e da anterior sucessivamente
                }
                else
                {
                    soma += multiplica; // variavel para guardar a soma da multiplicação de agora e da anterior sucessivamente
                }
            }
        }
        #endregion

        #region Retorno
        if (soma % 10 == 0) // Verificação se o resto é zero
        {
            return true; // Caso seja esta correto
        }
        else
        {
            return false; // Caso não seja esta incorreto
        }
        #endregion
    }

    public static bool CNH(String CNH)
    {
        #region Validação
        if (CNH.Length < 11 || CNH.Length > 11)
        {
            MessageBox.Show("Digite 11 digitos", "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            return false;
        }
        #endregion

        #region Validação de Iguais
        if (VerificarTodosIguais(CNH))
        {
            MessageBox.Show("Numeros Iguais", "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            return false;
        }
        #endregion

        #region variaveis
        double soma = 0.0;
        double digito = 0.0; // digito pegado pelo substring
        double digito1Verificador = 0.0;
        double digito2Verificador = 0.0;
        double resto = 0.0;
        int cont = 0;
        bool excecao = false;
        #endregion

        #region Primeiro Digito
        for (int i = 9; i > 0; i--) // for para fazer a multiplicação e a soma 
        {
            digito = double.Parse(CNH.Substring(cont, 1)); // recebimento do digito e transformação em double
            soma += digito * i; // multiplicação consiste em pegar os primeiros 9 digitos e multiplicar por 9 a 1
            cont++;
        }
        resto = soma % 11; // o resto da divisão da soma por 11 
        excecao = resto > 9 ? true : false; // caso o resto seja maior que nove vai ativar a regra diferenciada
        digito1Verificador = resto > 9 ? 0 : resto; // se resto for maior que nove o digito vira 0 senão o resto é o digito
        soma = 0;
        #endregion

        #region Segundo Digito
        for (int i = 0; i < 9; i++) // for para fazer a multiplicação e a soma 
        {
            digito = double.Parse(CNH.Substring(i, 1)); // recebimento do digito e transformação em double
            soma += digito * (i + 1); // multiplicação consiste em pegar os primeiros 9 digitos e multiplicar por 1 a 9
        }
        resto = soma % 11; // o resto da divisão da soma por 11 é o digito
        digito2Verificador = resto > 9 ? 0 : resto; // se resto for maior que nove o digito vira 0
        if (excecao) // exceção se o resto do primeiro for maior que nove ele entra na exceção
        {
            if (digito2Verificador - 2 < 0)
            {
                digito2Verificador += 9;
            }
            else
            {
                digito2Verificador -= 2;
            }
        }

        #endregion

        #region Retorno
        if (digito1Verificador.ToString() == CNH.Substring(9, 1)) // validação se os digitos batem com o do CNH digitado
        {
            if (digito2Verificador.ToString() == CNH.Substring(10, 1))
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        else
        {
            return false;
        }
        #endregion

    }

    public static bool CNPJ(String CNPJ)
    {
        #region Validação
        if (CNPJ.Length > 14 || CNPJ.Length < 14)
        {
            MessageBox.Show("Digite 14 dígitos máximos e mínimos","Erro",MessageBoxButtons.OK,MessageBoxIcon.Error);
            return false;
        }
        #endregion

        #region Validação de Iguais
        if (VerificarTodosIguais(CNPJ))
        {
            MessageBox.Show("Numeros Iguais", "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            return false;
        }
        #endregion

        #region Variaveis
        double digito = 0.0; // digito do cnpj
        double soma = 0.0; // variavel da soma dos resultado
        double calculo = 0.0; // calculo do digito * multiplicar
        double Verificador1 = 0.0; // digito verificador 1
        double Verificador2 = 0.0; // digito verificador 2
        double resto = 0.0; // resto da divisão da soma 
        double[] multiplicar = { 5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2 }; // digitos para multiplicar para o primeiro digito verificador
        double[] multiplicar2 = { 6, 5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2 };// digitos para multiplicar para o segundo digito verificador
        #endregion

        #region Conta Primeiro Digito Verificador
        for (int i = 0; i < 12; i++) // for para fazer a soma dos calculos do digito
        {
            digito = double.Parse(CNPJ.Substring(i, 1)); // recebimento do digito em double
            calculo = digito * multiplicar[i]; // conta do digito * multiplicar
            soma = calculo + soma; // conta da soma 

        }
        resto = soma % 11;// recebimento do resto da divisão 
        #endregion

        #region Verificar 
        Verificador1 = resto < 2 ? 0 : 11 - resto; // verifica se o resto é menor que dois se for é 0 senão 11-resto


        if (Verificador1 == double.Parse(CNPJ.Substring(12, 1))) // Valida se o verificador é igual o digito digitado
        {
            #region Conta Segundo Digito Verificador
            soma = 0.0; // zerando a variavel

            for (int i = 0; i < 13; i++) // for para fazer a segunda soma
            {


                digito = double.Parse(CNPJ.Substring(i, 1)); // recebimento do digito em double
                calculo = digito * multiplicar2[i]; // conta do digito * multiplicar
                soma = calculo + soma; // conta da soma
            }

            resto = soma % 11; // recebimento do resto da divisão 
            #endregion

            Verificador2 = resto < 2 ? 0 : 11 - resto; // verifica se o resto é menor que dois se for é 0 senão 11-resto

            if (Verificador2 == double.Parse(CNPJ.Substring(13, 1)))// Valida se o verificador é igual o digito digitado
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        else
        {
            return false;
        }
        #endregion
    }

    public static bool CPF(String CPF)
    {
        #region Validação de Tamanho
        if (CPF.Length > 11 || CPF.Length < 11)
        {
            MessageBox.Show("Digite 11 digitos", "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            return false;
        }
        #endregion

        #region Validação de Iguais
        if (VerificarTodosIguais(CPF))
        {
            MessageBox.Show("Numeros Iguais", "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            return false;
        }
        #endregion

        #region Variaveis
        int soma = 0;// Variavel para as somas da conta
        int numero; // Variavel para armazenar o numero da vez
        int cont = 10; // Variavel para saber quanto deve multiplicar o numero
        int resto; // Variavel para armazenar o resto da SOMA mod 11
        int digito1;// Digito Penultimo Valido pelo calculo
        int digito2;// Digito ultimo Valido pelo calculo
                    // Digitos do CPF que foi escrito na TEXTBOX 
        string digito1CPF = CPF.Substring(9, 1);
        string digito2CPF = CPF.Substring(10, 1);
        #endregion

        #region Primeira conta
        // For para a primeira conta 
        for (int i = 0; i < 9; i++)
        {
            numero = int.Parse(CPF.Substring(i, 1));
            soma = soma + numero * cont;
            cont = cont - 1;

        }
        resto = soma % 11;// Calculo do Resto
                          // If para saber se o resto digitado é maior que um caso não vale como 0
        if (resto > 1)
        {
            digito1 = 11 - resto;
        }
        else
        {
            digito1 = 0;
        }
        #endregion

        // Primeira Validação Do penultimo digito  Caso for valido Fazer Segunda Conta
        if (digito1.ToString() == digito1CPF)
        {
            #region Segunda conta
            // Reset das variaveis 
            cont = 11;
            soma = 0;
            // For para a segunda conta
            for (int i = 0; i < 10; i++)
            {
                numero = int.Parse(CPF.Substring(i, 1));
                soma = soma + numero * cont;
                cont = cont - 1;

            }
            resto = soma % 11;// Calculo do Resto
                              // If para saber se o resto digitado é maior que um caso não vale como 0
            if (resto > 1)
            {
                digito2 = 11 - resto;
            }
            else
            {
                digito2 = 0;
            }
            #endregion

            // Segunda Validação Do ultimo digito  
            if (digito2CPF == digito2.ToString())
            {
                return true;
            }
            else
            {
                return false;
            }


        }
        else
        {
            return false;
        }
    }

    public static bool PisPasep(String PisPasep)
    {
        #region Validação de Tamanho
        if (PisPasep.Length > 11 || PisPasep.Length < 11)
        {
            MessageBox.Show("Digite 11 digitos", "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            return false;
        }
        #endregion

        #region Validação de Iguais
        if (VerificarTodosIguais(PisPasep))
        {
            MessageBox.Show("Numeros Iguais", "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            return false;
        }
        #endregion

        #region Variaveis
        double[] peso = { 3, 2, 9, 8, 7, 6, 5, 4, 3, 2 };
        double soma = 0.0;
        double resto = 0.0;
        double digitoValidador;
        #endregion

        #region Conta
        for (int i = 0; i < peso.Length; i++)
        {
            soma += peso[i] * double.Parse(PisPasep.Substring(i, 1));
        }
        resto = soma % 11;
        digitoValidador = 11 - resto;
        digitoValidador = digitoValidador > 9 ? 0 : digitoValidador;
        #endregion

        #region Verificação
        if (digitoValidador.ToString() == PisPasep.Substring(10, 1))
        {
            return true;
        }
        else
        {
            return false;
        }
        #endregion
    }

    public static bool RG(String RG)
    {
        #region Validação
        if (!(RG.Length == 9))
        {
            MessageBox.Show("Digite 9 dígitos", "erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            return false;
        }
        #endregion

        #region Validação de Iguais
        if (VerificarTodosIguais(RG))
        {
            MessageBox.Show("Numeros Iguais", "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            return false;
        }
        #endregion

        #region Variaveis
        double multiplica = 2; // variavel para multiplicar o digito
        string digito; // variavel que vai receber o digito do rg
        double resultado; // variavel do resultado da multiplicação
        double soma = 0.0; // variavel da soma dos resultados
        string digitoValido; // digito validado pela conta 
        #endregion

        #region Conta
        for (int i = 0; i < 8; i++)
        {
            digito = RG.Substring(i, 1);
            resultado = double.Parse(digito) * multiplica;
            soma += resultado;
            multiplica++;
        }
        digitoValido = (11 - (soma % 11)).ToString();
        digitoValido = digitoValido == "10" ? "X" : digitoValido;
        digitoValido = digitoValido == "11" ? "0" : digitoValido;
        #endregion

        #region Verificação
        if (RG.Substring(8, 1).ToUpper() == digitoValido)
        {
            return true;
        }
        else
        {
            return false;
        }
        #endregion
    }

    public static bool TituloEleitor(String titulo)
    {
        #region Validação
        if (!(titulo.Length == 13))
        {
            MessageBox.Show("Digite 9 dígitos", "erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            return false;
        }
        #endregion

        #region Validação de Iguais
        if (VerificarTodosIguais(titulo))
        {
            MessageBox.Show("Numeros Iguais", "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            return false;
        }
        #endregion

        #region Variaveis
        double[] multiplica =
        {
                2,9,8,7,6,5,4,3,2
            };
        double soma = 0;
        double resto;
        double digito;
        double dv1;
        double dv2;
        #endregion

        #region Conta e Verificação

        #region Primeiro digito
        for (int i = 0; i < 9; i++)
        {
            digito = double.Parse(titulo.Substring(i, 1));
            soma += digito * multiplica[i];

        }
        resto = soma % 11;

        if (resto == 1)
        {
            dv1 = 0;
        }
        else
        {
            if (resto == 0)
            {
                if (titulo.Substring(9, 2) == "01" || titulo.Substring(9, 2) == "02")
                {
                    dv1 = 1;
                }
                else
                {
                    dv1 = 0;
                }
            }
            else
            {
                dv1 = 11 - resto;
            }
        }
        #endregion

        if (dv1.ToString() == titulo.Substring(11, 1))
        {

            #region Segundo Digito
            soma = 0;
            int cont = 9;
            double multiplica2 = 4;
            for (int i = 0; i < 3; i++)
            {
                soma += double.Parse(titulo.Substring(cont, 1)) * multiplica2;
                cont++;
                multiplica2--;
            }
            resto = soma % 11;
            if (resto == 1)
            {
                dv2 = 0;
            }
            else
            {
                if (resto == 0)
                {
                    if (titulo.Substring(9, 2) == "01" || titulo.Substring(9, 2) == "02")
                    {
                        dv2 = 1;
                    }
                    else
                    {
                        dv2 = 0;
                    }
                }
                else
                {
                    dv2 = 11 - resto;
                }
            }
            #endregion

            if (dv2.ToString() == titulo.Substring(12, 1))
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        else
        {
            return false;
        }
        #endregion
    }

    public static bool VerificarTodosIguais(string numero)
    {
        for (int i = 1; i < numero.Length; i++)
        {
            if (numero[i] != numero[0])
            {
                return false;
                
            }
        }
        return true;
    }






}
