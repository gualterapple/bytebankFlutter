import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: Scaffold(
      body: ListaTransferencias(),
      appBar: AppBar(
        title: Text('Transferências1'),),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        child: Icon(Icons.add),
      ),
    )
  )
);

class ListaTransferencias extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ItemTransferencia(Transferencia(100.0, 1000)),
        ItemTransferencia(Transferencia(300.0, 60000)),
        ItemTransferencia(Transferencia(700.0, 90000)),
      ],
    );
  }
}

class ItemTransferencia extends StatelessWidget
{
  final Transferencia _transferencia;

  const ItemTransferencia(this._transferencia);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
          leading: Icon(Icons.monetization_on),
          title: Text(this._transferencia.valor.toString()!),
          subtitle: Text(this._transferencia.numeroConta.toString()!),
        )
    );
  }
  }

  class Transferencia
  {

    final double valor;
    final int numeroConta;
    Transferencia(this.valor, this.numeroConta);
}