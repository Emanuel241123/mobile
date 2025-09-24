void main(){

}

class Produto{
    String nome;
    double valorUnitatio;

    Produto(this.nome, this.valorUnitatio);

    @override
    String toString(){
        return 'Produto: $nome -
        Valor: R\$ ${valorUnitatio.toStringAsFixed(2)}';
    }
}