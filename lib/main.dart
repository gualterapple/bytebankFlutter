import 'package:flutter/material.dart';

void main() => runApp(
    BytebankApp()
);

class BytebankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
        home: Scaffold(
          body: FormularioTranferencia(),

        )
    );
  }
}

class FormularioTranferencia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Criando Transferência')),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              keyboardType: TextInputType.phone,
              style: TextStyle(
                fontSize: 24
              ),
              decoration: InputDecoration(
                labelText: 'Número da conta',
                hintText: '0000'
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              keyboardType: TextInputType.number,
              style: TextStyle(
                fontSize: 24
              ),
              decoration: InputDecoration(
                icon: Icon(Icons.monetization_on),
                labelText: 'Número da conta',
                hintText: '0000'
              ),
            ),
          ),
          //RaisedButton(onPressed: onPressed),
        ],
      )
      );
  }
}

class ListaTransferencias extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transferências1'),),
      body: Column(
        children: [
          ItemTransferencia(Transferencia(100.0, 1000)),
          ItemTransferencia(Transferencia(300.0, 60000)),
          ItemTransferencia(Transferencia(700.0, 90000)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        child: Icon(Icons.add),
      ),
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
          title: Text(this._transferencia.valor.toString()),
          subtitle: Text(this._transferencia.numeroConta.toString()),
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