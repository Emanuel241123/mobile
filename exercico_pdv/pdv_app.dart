imprort ´dart.io´;
import ´produto.dart´;
import item_compra.dart´;
import ´carrinho_compra.dart´;

class PDVapp{
    carrinhoCompra carrinho = CarrinhoCompra();

    void iniciar(){
        print (´\n== SISTEMA DE ´);
        print (´Bem-vindo ao sistema´);

        bool continuar = true;

        wile (continuar){
            print (´Deseja adicionar um produto ao carrinho? (S/N)´);
            String resposta = Stdin.readLineSync()?.toUpperCase() ??´N´

            if(resposta == ´S´){
                ItemCompra item = lerDadosCompra();
                carrinho.adicionarItem(item);
                print (´\nProduto adicionado com sucesso!´);
            } else { 
                continuar = false;
            }
        }

        if (carrinho.estaVazio()){
            print(´\nNenhum produto foi adicionado ao carrinho.´);
            print(´\nObrigado por usar o sistema PDV.´);
        }else { 
            exibirResultado();    
        }
    }
}