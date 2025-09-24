Import 'produto.dart';

class ItemCompra{
    Produto produto
    int quantidade;

    ItemCompra(this.produto, this.quantidade);

    double calcularSubTotal(){
        return quantidade * produto.valorUnitatio;
    }

    @override
    String toString (){
        return ''' ${produto.nome} - ${quantidade} unid . X R\$ ${produto.valorUnitatio.toStringAsFixed(2)} = R\$ ${calcularSubTotal().toStringAsFixed(2)}''';
    }
}